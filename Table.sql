-- =============================================
-- E-BOOK LIBRARY DATABASE  
-- =============================================
-- CREATE DATABASE EBookLibrary
-- DROP DATABASE EBookLibrary
-- =============================================


-- =============================================
-- 1. Author (Tác giả)
-- =============================================
CREATE TABLE Author (
    author_id   INT IDENTITY(1,1) PRIMARY KEY,
    [name]      NVARCHAR(200) NOT NULL,
    nationality NVARCHAR(50),
    gender      VARCHAR(1) NOT NULL CHECK (gender IN ('F', 'M')),
    bio         NVARCHAR(500),
    birth_year  INT,
    death_year  INT,
    avatar_path VARCHAR(255)
)


-- =============================================
-- 2. Publisher (Nhà xuất bản)
-- =============================================
CREATE TABLE Publisher (
    publisher_id INT IDENTITY(1,1) PRIMARY KEY,
    [name]       NVARCHAR(100) NOT NULL,
    website      NVARCHAR(255),
    country      NVARCHAR(50),
    logo_path    VARCHAR(255)
)


-- =============================================
-- 3. Category (Thể loại)
-- =============================================
CREATE TABLE Category (
    category_id   INT IDENTITY(1,1) PRIMARY KEY,
    [name]        NVARCHAR(50) NOT NULL,
    [description] NVARCHAR(MAX)
)


-- =============================================
-- 4. [User] (Người dùng)
-- =============================================
CREATE TABLE [User] (
    [user_id]          INT IDENTITY(1,1) PRIMARY KEY,
    username          NVARCHAR(50)  NOT NULL UNIQUE,
    [password]        VARCHAR(255)  NOT NULL,
    email             VARCHAR(100)  NOT NULL UNIQUE,
    date_of_birth     DATE,
    full_name         NVARCHAR(100),
    registration_date DATE          NOT NULL,
    avatar_path       VARCHAR(255),
    balance           INT           NOT NULL DEFAULT 0,
    [role]            VARCHAR(10)   NOT NULL CHECK ([role] IN ('USER', 'ADMIN')) DEFAULT 'USER',
    is_active         BIT           NOT NULL DEFAULT 1
)


-- =============================================
-- 5. Book (Sách)
-- =============================================
CREATE TABLE Book (
    book_id          INT IDENTITY(1,1) PRIMARY KEY,
    title            NVARCHAR(200) NOT NULL,
    publish_year     INT,
    file_path        VARCHAR(255)  NOT NULL,
    file_size        INT,
    [description]    NVARCHAR(500),
    [format]         VARCHAR(20)   NOT NULL CHECK ([format] IN ('PDF', 'EPUB', 'MOBI', 'AZW3')),
    [language]       NVARCHAR(20)  NOT NULL,
    page_count       INT,
    cover_image_path VARCHAR(255),
    view_count       INT           NOT NULL DEFAULT 0,
    read_count       INT           NOT NULL DEFAULT 0
)


-- =============================================
-- 6. Plan (Gói thành viên)
-- =============================================
-- Định nghĩa các loại gói:
--   • Guest / Free  : max_books = N  → chỉ được đọc N sách
--   • Member (paid) : max_books = NULL → đọc không giới hạn
CREATE TABLE [Plan] (
    plan_id       INT IDENTITY(1,1) PRIMARY KEY,
    [name]        NVARCHAR(50)  NOT NULL UNIQUE,
    [description] NVARCHAR(300),
    price         INT           NOT NULL,               -- 0 nếu miễn phí
    duration_days INT           NOT NULL,               -- thời gian gói (ngày)
    max_books     INT           NULL,                   -- NULL = không giới hạn; N = tối đa N sách
    CONSTRAINT CHK_MaxBooks     CHECK (max_books IS NULL OR max_books > 0),
    CONSTRAINT CHK_DurationDays CHECK (duration_days > 0)
)

-- Sample data:
-- INSERT INTO Plan (name, description, price, duration_days, max_books) VALUES
--   ('Guest',   'Gói miễn phí – đọc tối đa 3 sách',           0,      365,  3),
--   ('Monthly', 'Gói tháng – đọc không giới hạn',          49000,       30, NULL),
--   ('Yearly',  'Gói năm (giảm giá) – đọc không giới hạn', 199000,     365, NULL);


-- =============================================
-- 9. Collection (Bộ sưu tập)
-- =============================================
CREATE TABLE [Collection] (
    collection_id INT IDENTITY(1,1) PRIMARY KEY,
    [name]        NVARCHAR(100) NOT NULL,
    [description] NVARCHAR(500),
    [user_id]      INT           NOT NULL,
    is_public     BIT           DEFAULT 0,
    created_date  DATE,
    updated_date  DATE,
    FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]) ON DELETE CASCADE
)


-- =============================================
-- 10–13. Bảng trung gian (M:N)
-- =============================================


-- 7. User_Plan (Lịch sử gói của user)
-- Mỗi row là 1 lần user mua / được cấp gói.
-- status:
--   Active    → gói đang có hiệu lực
--   Expired   → đã hết hạn
--   Cancelled → user hủy hoặc bị hủy
CREATE TABLE User_Plan (
    [user_id]        INT          NOT NULL,
    plan_id        INT          NOT NULL,
    [start_date]     DATE         NOT NULL,
    end_date       DATE         NOT NULL,
    [status]       VARCHAR(20)  NOT NULL DEFAULT 'Active'
                   CHECK ([status] IN ('Active', 'Expired', 'Cancelled')),
    auto_renew     BIT          DEFAULT 0,
    cancelled_date DATETIME,
	PRIMARY KEY ([user_id], plan_id, [start_date]),
    FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]) ON DELETE CASCADE,
    FOREIGN KEY (plan_id) REFERENCES [Plan](plan_id),
    CONSTRAINT CHK_UserPlanDates CHECK (end_date > start_date)
)

-- Đảm bảo user chỉ có tối đa 1 gói Active tại một thời điểm
CREATE UNIQUE INDEX UQ_ActiveUserPlan
ON User_Plan(user_id)
WHERE [status] = 'Active'

-- 8. Access (Quyền truy cập sách)
-- PK composite (user_id, book_id, plan_id) – bỏ access_id surrogate
-- plan_id: liên kết tới Plan để biết access thuộc gói nào
--
-- Logic:
--   • Membership: Khi user kích hoạt gói → tự động cấp access toàn bộ sách
--                 access_end = user_plan.end_date
--   • Guest:      User chủ động chọn sách (tối đa Plan.max_books)
--                 access_end = user_plan.end_date
CREATE TABLE Access (
    [user_id]      INT          NOT NULL,
    book_id      INT          NOT NULL,
    plan_id      INT          NOT NULL,               -- gói tạo ra access này
    access_start DATETIME     NOT NULL,
    access_end   DATETIME,                            -- NULL nếu chưa xác định
    [status]     VARCHAR(20)  NOT NULL DEFAULT 'Accessible'
                 CHECK ([status] IN ('Accessible', 'Revoked')),
    access_type  VARCHAR(20)  NOT NULL
                 CHECK (access_type IN ('Membership', 'Guest')),

    PRIMARY KEY ([user_id], book_id, plan_id),

    FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id)   ON DELETE CASCADE,
    FOREIGN KEY (plan_id) REFERENCES [Plan](plan_id)
)

-- =============================================
-- 14. Conversation (Kênh chat 1-1 User ↔ Admin)
-- =============================================
-- Mỗi user chỉ có đúng 1 conversation, tạo lần đầu khi user gửi tin đầu tiên.
-- UNIQUE (user_id) đảm bảo ràng buộc này ở tầng DB.
CREATE TABLE Conversation (
    conversation_id INT      IDENTITY(1,1) PRIMARY KEY,
    [user_id]       INT      NOT NULL UNIQUE,           -- 1 user = 1 conversation, không hơn
    assigned_to     INT      NULL,                      -- admin đang phụ trách (nullable)
    created_at      DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at      DATETIME NOT NULL DEFAULT GETDATE(),

    FOREIGN KEY ([user_id])   REFERENCES [User]([user_id]) ON DELETE CASCADE,
    FOREIGN KEY (assigned_to) REFERENCES [User]([user_id])
)

CREATE INDEX IX_Conversation_AssignedTo ON Conversation(assigned_to)
CREATE INDEX IX_Conversation_UpdatedAt  ON Conversation(updated_at)  -- admin sort by latest activity

-- =============================================
-- 15. Message (Tin nhắn)
-- =============================================
CREATE TABLE [Message] (
    message_id      INT           IDENTITY(1,1) PRIMARY KEY,
    conversation_id INT           NOT NULL,
    sender_id       INT           NOT NULL,
    sender_role     VARCHAR(10)   NOT NULL CHECK (sender_role IN ('USER', 'ADMIN')),
    body            NVARCHAR(MAX) NOT NULL,
    sent_at         DATETIME      NOT NULL DEFAULT GETDATE(),
    is_read         BIT           NOT NULL DEFAULT 0,

    FOREIGN KEY (conversation_id) REFERENCES Conversation(conversation_id) ON DELETE CASCADE,
    FOREIGN KEY (sender_id)       REFERENCES [User]([user_id])
)

CREATE INDEX IX_Message_ConversationId ON [Message](conversation_id)
CREATE INDEX IX_Message_SentAt         ON [Message](sent_at)
CREATE INDEX IX_Message_IsRead         ON [Message](is_read)

-- 10. Author ←→ Book
CREATE TABLE Book_Author (
    book_id   INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id)   REFERENCES Book(book_id)     ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Author(author_id) ON DELETE CASCADE
)

-- 11. Publisher ←→ Book
CREATE TABLE Book_Publisher (
    book_id      INT NOT NULL,
    publisher_id INT NOT NULL,
    PRIMARY KEY (book_id, publisher_id),
    FOREIGN KEY (book_id)      REFERENCES Book(book_id)           ON DELETE CASCADE,
    FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id) ON DELETE CASCADE
)

-- 12. Category ←→ Book
CREATE TABLE Book_Category (
    book_id     INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (book_id, category_id),
    FOREIGN KEY (book_id)     REFERENCES Book(book_id)         ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Category(category_id) ON DELETE CASCADE
)

-- 13. Collection ←→ Book
CREATE TABLE Collection_Book (
    collection_id INT NOT NULL,
    book_id       INT NOT NULL,
    PRIMARY KEY (collection_id, book_id),
    FOREIGN KEY (collection_id) REFERENCES Collection(collection_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id)       REFERENCES Book(book_id)             ON DELETE CASCADE
)


-- =============================================
-- Constraints bổ sung
-- =============================================

ALTER TABLE Book
ADD CONSTRAINT CHK_PublishYear CHECK (publish_year >= 1000 AND publish_year <= YEAR(GETDATE()))


-- =============================================
-- INDEXES (Performance Optimization)
-- =============================================

-- [User]
CREATE INDEX IX_User_Email    ON [User](email)
CREATE INDEX IX_User_Username ON [User](username)
CREATE INDEX IX_User_IsActive ON [User](is_active)

-- Book
CREATE INDEX IX_Book_Title       ON Book(title)
CREATE INDEX IX_Book_Format      ON Book([format])
CREATE INDEX IX_Book_Language    ON Book([language])
CREATE INDEX IX_Book_PublishYear ON Book(publish_year)

-- Access
-- PK composite (user_id, book_id, plan_id) tự tạo clustered index
-- Thêm index cho các pattern truy vấn phổ biến
CREATE INDEX IX_Access_UserId_Status ON Access([user_id], [status])
CREATE INDEX IX_Access_BookId        ON Access(book_id)
CREATE INDEX IX_Access_PlanId        ON Access(plan_id)
CREATE INDEX IX_Access_AccessType    ON Access(access_type)

-- User_Plan
CREATE INDEX IX_UserPlan_UserId_Status ON User_Plan([user_id], [status])
CREATE INDEX IX_UserPlan_EndDate       ON User_Plan(end_date)
CREATE INDEX IX_UserPlan_Status        ON User_Plan([status])


-- =============================================
-- TRIGGERS (Business Logic Automation)
-- =============================================

-- Trigger 1: Auto revoke Access khi User_Plan hết hạn hoặc bị huỷ
-- Vì Access không còn membership_id, join qua (user_id, plan_id)
GO
CREATE TRIGGER TR_UserPlan_Expire ON User_Plan
AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;

    UPDATE a
    SET a.[status] = 'Revoked'
    FROM Access a
    INNER JOIN inserted i
           ON  a.[user_id] = i.[user_id]
           AND a.plan_id = i.plan_id
    WHERE i.[status] IN ('Expired', 'Cancelled')
      AND a.[status]  = 'Accessible'
END
GO


-- Trigger 2: Validate Guest không chọn quá max_books
-- Dùng set-based (CROSS APPLY) để xử lý đúng multi-row INSERT
GO
CREATE TRIGGER TR_Access_ValidateGuestLimit ON Access
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN [Plan] p ON p.plan_id = i.plan_id
        CROSS APPLY (
            SELECT COUNT(*) AS cnt
            FROM Access a
            WHERE a.[user_id]     = i.[user_id]
              AND a.plan_id     = i.plan_id
              AND a.access_type = 'Guest'
              AND a.[status]    = 'Accessible'
        ) AS agg
        WHERE i.access_type  = 'Guest'
          AND p.max_books    IS NOT NULL
          AND agg.cnt        > p.max_books
    )
    BEGIN
        RAISERROR('Guest user exceeded maximum books limit.', 16, 1)
        ROLLBACK TRANSACTION
    END
END
GO

GO
CREATE TRIGGER TR_Message_UpdateConversation ON [Message]
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON;

    UPDATE c
    SET c.updated_at = GETDATE()
    FROM Conversation c
    INNER JOIN inserted i ON c.conversation_id = i.conversation_id
END
GO