-- =============================================
-- SAMPLE DATA INSERT SCRIPT
-- E-BOOK LIBRARY DATABASE
-- 100+ Books with Authors, Publishers, Categories
-- =============================================

USE EBookLibrary
GO

-- =============================================
-- 1. INSERT AUTHORS (50 tác giả)
-- =============================================
SET IDENTITY_INSERT Author ON

INSERT INTO Author (author_id, [name], nationality, gender, bio, birth_year, death_year, avatar_path) VALUES
-- Vietnamese Authors
(1, N'Nguyễn Nhật Ánh', N'Vietnam', 'M', N'Nhà văn nổi tiếng với các tác phẩm văn học thiếu nhi', 1955, NULL, 'uploads/avatar_authors/nguyen-nhat-anh.jpg'),
(2, N'Nguyễn Du', N'Vietnam', 'M', N'Đại thi hào dân tộc, tác giả Truyện Kiều', 1765, 1820, 'uploads/avatar_authors/nguyen-du.jpg'),
(3, N'Nam Cao', N'Vietnam', 'M', N'Nhà văn hiện thực phê phán', 1915, 1951, 'uploads/avatar_authors/nam-cao.jpg'),
(4, N'Tô Hoài', N'Vietnam', 'M', N'Nhà văn nổi tiếng với tác phẩm Dế Mèn phiêu lưu ký', 1920, 2014, 'uploads/avatar_authors/to-hoai.jpg'),
(5, N'Vũ Trọng Phụng', N'Vietnam', 'M', N'Nhà văn phong cách châm biếm', 1912, 1939, 'uploads/avatar_authors/vu-trong-phung.jpg'),

-- English/American Authors
(6, 'J.K. Rowling', 'British', 'F', 'Author of Harry Potter series', 1965, NULL, 'uploads/avatar_authors/jk-rowling.jpg'),
(7, 'George Orwell', 'British', 'M', 'Author of 1984 and Animal Farm', 1903, 1950, 'uploads/avatar_authors/george-orwell.jpg'),
(8, 'Stephen King', 'American', 'M', 'Master of horror and suspense fiction', 1947, NULL, 'uploads/avatar_authors/stephen-king.jpg'),
(9, 'Ernest Hemingway', 'American', 'M', 'Nobel Prize winning author', 1899, 1961, 'uploads/avatar_authors/hemingway.jpg'),
(10, 'F. Scott Fitzgerald', 'American', 'M', 'Author of The Great Gatsby', 1896, 1940, 'uploads/avatar_authors/fitzgerald.jpg'),
(11, 'Jane Austen', 'British', 'F', 'Classic romance novelist', 1775, 1817, 'uploads/avatar_authors/jane-austen.jpg'),
(12, 'Charles Dickens', 'British', 'M', 'Victorian era novelist', 1812, 1870, 'uploads/avatar_authors/dickens.jpg'),
(13, 'Mark Twain', 'American', 'M', 'Author of Adventures of Tom Sawyer', 1835, 1910, 'uploads/avatar_authors/mark-twain.jpg'),
(14, 'Agatha Christie', 'British', 'F', 'Queen of mystery novels', 1890, 1976, 'uploads/avatar_authors/agatha-christie.jpg'),
(15, 'J.R.R. Tolkien', 'British', 'M', 'Author of The Lord of the Rings', 1892, 1973, 'uploads/avatar_authors/tolkien.jpg'),

-- International Authors
(16, 'Gabriel García Márquez', 'Colombian', 'M', 'Nobel Prize winning magical realist', 1927, 2014, 'uploads/avatar_authors/garcia-marquez.jpg'),
(17, 'Haruki Murakami', 'Japanese', 'M', 'Contemporary fiction author', 1949, NULL, 'uploads/avatar_authors/murakami.jpg'),
(18, 'Paulo Coelho', 'Brazilian', 'M', 'Author of The Alchemist', 1947, NULL, 'uploads/avatar_authors/paulo-coelho.jpg'),
(19, 'Leo Tolstoy', 'Russian', 'M', 'Author of War and Peace', 1828, 1910, 'uploads/avatar_authors/tolstoy.jpg'),
(20, 'Fyodor Dostoevsky', 'Russian', 'M', 'Author of Crime and Punishment', 1821, 1881, 'uploads/avatar_authors/dostoevsky.jpg'),
(21, 'Victor Hugo', 'French', 'M', 'Author of Les Misérables', 1802, 1885, 'uploads/avatar_authors/victor-hugo.jpg'),
(22, 'Albert Camus', 'French', 'M', 'Existentialist philosopher and author', 1913, 1960, 'uploads/avatar_authors/camus.jpg'),
(23, 'Franz Kafka', 'Czech', 'M', 'Author of The Metamorphosis', 1883, 1924, 'uploads/avatar_authors/kafka.jpg'),
(24, 'Hermann Hesse', 'German', 'M', 'Nobel Prize winning author', 1877, 1962, 'uploads/avatar_authors/hesse.jpg'),

-- Modern Authors
(25, 'Dan Brown', 'American', 'M', 'Author of The Da Vinci Code', 1964, NULL, 'uploads/avatar_authors/dan-brown.jpg'),
(26, 'John Grisham', 'American', 'M', 'Legal thriller author', 1955, NULL, 'uploads/avatar_authors/john-grisham.jpg'),
(27, 'Malcolm Gladwell', 'Canadian', 'M', 'Non-fiction author and journalist', 1963, NULL, 'uploads/avatar_authors/malcolm-gladwell.jpg'),
(28, 'Yuval Noah Harari', 'Israeli', 'M', 'Author of Sapiens', 1976, NULL, 'uploads/avatar_authors/yuval-harari.jpg'),
(29, 'Michelle Obama', 'American', 'F', 'Former First Lady, author of Becoming', 1964, NULL, 'uploads/avatar_authors/michelle-obama.jpg'),
(30, 'Dale Carnegie', 'American', 'M', 'Self-help author', 1888, 1955, 'uploads/avatar_authors/dale-carnegie.jpg'),
(31, 'Napoleon Hill', 'American', 'M', 'Personal success author', 1883, 1970, 'uploads/avatar_authors/napoleon-hill.jpg'),
(32, 'Robert Kiyosaki', 'American', 'M', 'Author of Rich Dad Poor Dad', 1947, NULL, 'uploads/avatar_authors/robert-kiyosaki.jpg'),
(33, 'James Clear', 'American', 'M', 'Author of Atomic Habits', 1986, NULL, 'uploads/avatar_authors/james-clear.jpg'),
(34, 'Simon Sinek', 'British', 'M', 'Leadership author', 1973, NULL, 'uploads/avatar_authors/simon-sinek.jpg'),

-- Science & Tech Authors
(35, 'Carl Sagan', 'American', 'M', 'Astronomer and science communicator', 1934, 1996, 'uploads/avatar_authors/carl-sagan.jpg'),
(36, 'Stephen Hawking', 'British', 'M', 'Theoretical physicist', 1942, 2018, 'uploads/avatar_authors/stephen-hawking.jpg'),
(37, 'Richard Dawkins', 'British', 'M', 'Evolutionary biologist', 1941, NULL, 'uploads/avatar_authors/richard-dawkins.jpg'),
(38, 'Isaac Asimov', 'American', 'M', 'Science fiction author', 1920, 1992, 'uploads/avatar_authors/isaac-asimov.jpg'),
(39, 'Arthur C. Clarke', 'British', 'M', 'Science fiction author', 1917, 2008, 'uploads/avatar_authors/arthur-clarke.jpg'),

-- Fantasy & YA Authors
(40, 'Suzanne Collins', 'American', 'F', 'Author of The Hunger Games', 1962, NULL, 'uploads/avatar_authors/suzanne-collins.jpg'),
(41, 'Rick Riordan', 'American', 'M', 'Author of Percy Jackson series', 1964, NULL, 'uploads/avatar_authors/rick-riordan.jpg'),
(42, 'Cassandra Clare', 'American', 'F', 'Author of Shadowhunters series', 1973, NULL, 'uploads/avatar_authors/cassandra-clare.jpg'),
(43, 'George R.R. Martin', 'American', 'M', 'Author of Game of Thrones', 1948, NULL, 'uploads/avatar_authors/george-martin.jpg'),
(44, 'Brandon Sanderson', 'American', 'M', 'Fantasy author', 1975, NULL, 'uploads/avatar_authors/brandon-sanderson.jpg'),

-- Business & Economics
(45, 'Peter Thiel', 'American', 'M', 'Entrepreneur, author of Zero to One', 1967, NULL, 'uploads/avatar_authors/peter-thiel.jpg'),
(46, 'Eric Ries', 'American', 'M', 'Author of The Lean Startup', 1978, NULL, 'uploads/avatar_authors/eric-ries.jpg'),
(47, 'Ben Horowitz', 'American', 'M', 'Venture capitalist and author', 1966, NULL, 'uploads/avatar_authors/ben-horowitz.jpg'),
(48, 'Ray Dalio', 'American', 'M', 'Investor, author of Principles', 1949, NULL, 'uploads/avatar_authors/ray-dalio.jpg'),
(49, 'Cal Newport', 'American', 'M', 'Author of Deep Work', 1982, NULL, 'uploads/avatar_authors/cal-newport.jpg'),
(50, 'Adam Grant', 'American', 'M', 'Organizational psychologist', 1981, NULL, 'uploads/avatar_authors/adam-grant.jpg')

SET IDENTITY_INSERT Author OFF
GO


-- =============================================
-- 2. INSERT PUBLISHERS (20 nhà xuất bản)
-- =============================================
SET IDENTITY_INSERT Publisher ON

INSERT INTO Publisher (publisher_id, [name], website, country, logo_path) VALUES
(1, N'Nhà xuất bản Trẻ', 'https://nxbtre.com.vn', N'Vietnam', 'uploads/logos/nxb-tre.png'),
(2, N'Nhà xuất bản Kim Đồng', 'https://nxbkimdong.com.vn', N'Vietnam', 'uploads/logos/nxb-kimdong.png'),
(3, N'Nhà xuất bản Văn học', 'https://nxbvanhoc.com.vn', N'Vietnam', 'uploads/logos/nxb-vanhoc.png'),
(4, N'Nhà xuất bản Lao động', 'https://nxblaodong.com.vn', N'Vietnam', 'uploads/logos/nxb-laodong.png'),
(5, N'Nhà xuất bản Hội Nhà văn', 'https://nxbhoinvnhavan.vn', N'Vietnam', 'uploads/logos/nxb-hoinv.png'),
(6, 'Penguin Random House', 'https://penguinrandomhouse.com', 'United States', 'uploads/logos/penguin.png'),
(7, 'HarperCollins', 'https://harpercollins.com', 'United States', 'uploads/logos/harpercollins.png'),
(8, 'Simon & Schuster', 'https://simonandschuster.com', 'United States', 'uploads/logos/simonschuster.png'),
(9, 'Macmillan Publishers', 'https://macmillan.com', 'United Kingdom', 'uploads/logos/macmillan.png'),
(10, 'Hachette Book Group', 'https://hachettebookgroup.com', 'United States', 'uploads/logos/hachette.png'),
(11, 'Bloomsbury Publishing', 'https://bloomsbury.com', 'United Kingdom', 'uploads/logos/bloomsbury.png'),
(12, 'Scholastic', 'https://scholastic.com', 'United States', 'uploads/logos/scholastic.png'),
(13, 'Oxford University Press', 'https://oup.com', 'United Kingdom', 'uploads/logos/oup.png'),
(14, 'Cambridge University Press', 'https://cambridge.org', 'United Kingdom', 'uploads/logos/cambridge.png'),
(15, 'Vintage Books', 'https://vintagebooks.com', 'United States', 'uploads/logos/vintage.png'),
(16, 'Crown Publishing', 'https://crownpublishing.com', 'United States', 'uploads/logos/crown.png'),
(17, 'Tor Books', 'https://tor.com', 'United States', 'uploads/logos/tor.png'),
(18, 'O''Reilly Media', 'https://oreilly.com', 'United States', 'uploads/logos/oreilly.png'),
(19, 'MIT Press', 'https://mitpress.mit.edu', 'United States', 'uploads/logos/mitpress.png'),
(20, 'Springer', 'https://springer.com', 'Germany', 'uploads/logos/springer.png')

SET IDENTITY_INSERT Publisher OFF
GO


-- =============================================
-- 3. INSERT CATEGORIES (25 thể loại)
-- =============================================
SET IDENTITY_INSERT Category ON

INSERT INTO Category (category_id, [name], [description]) VALUES
(1, N'Văn học Việt Nam', N'Tác phẩm văn học của các tác giả Việt Nam'),
(2, N'Văn học nước ngoài', N'Tác phẩm văn học dịch từ nước ngoài'),
(3, N'Tiểu thuyết', N'Truyện dài, kể chuyện có cốt truyện phức tạp'),
(4, N'Truyện ngắn', N'Truyện có độ dài ngắn, tập trung vào một sự kiện'),
(5, N'Thơ ca', N'Tác phẩm thơ, ca dao, dân ca'),
(6, N'Trinh thám', N'Truyện trinh thám, giải mã bí ẩn'),
(7, N'Kinh dị', N'Truyện kinh dị, rùng rợn'),
(8, N'Khoa học viễn tưởng', N'Sci-fi, công nghệ tương lai'),
(9, N'Fantasy', N'Thế giới phép thuật, giả tưởng'),
(10, N'Lãng mạn', N'Tình yêu, lãng mạn'),
(11, N'Phiêu lưu', N'Mạo hiểm, khám phá'),
(12, N'Lịch sử', N'Sách về lịch sử, sự kiện lịch sử'),
(13, N'Tiểu sử', N'Câu chuyện đời người thật'),
(14, N'Tự truyện', N'Người nổi tiếng kể về cuộc đời mình'),
(15, N'Kinh doanh', N'Sách về kinh doanh, quản lý'),
(16, N'Tài chính', N'Đầu tư, quản lý tài chính cá nhân'),
(17, N'Kỹ năng sống', N'Phát triển bản thân, kỹ năng mềm'),
(18, N'Tâm lý học', N'Tâm lý, hành vi con người'),
(19, N'Khoa học', N'Sách khoa học phổ thông'),
(20, N'Công nghệ', N'Lập trình, công nghệ thông tin'),
(21, N'Thiếu nhi', N'Sách dành cho trẻ em'),
(22, N'Giáo dục', N'Phương pháp giáo dục, học tập'),
(23, N'Triết học', N'Triết lý sống, tư tưởng'),
(24, N'Nghệ thuật', N'Hội họa, âm nhạc, điện ảnh'),
(25, N'Y học', N'Sức khỏe, y học')

SET IDENTITY_INSERT Category OFF
GO


-- =============================================
-- 4. INSERT BOOKS (120 sách)
-- =============================================
-- Note: Năm xuất bản phải >= 1000 do CHK_PublishYear constraint
-- Với các tác phẩm cổ đại, sử dụng năm xuất bản bản dịch tiếng Anh
SET IDENTITY_INSERT Book ON

INSERT INTO Book (book_id, title, publish_year, file_path, file_size, [description], [format], [language], page_count, cover_image_path, view_count, read_count) VALUES
-- Vietnamese Books (1-20)
(1,  N'Cho tôi xin một vé đi tuổi thơ',       2012, 'uploads/books/vedi-tuoitho.pdf',              2500, N'Những câu chuyện tuổi thơ đầy hoài niệm',     'PDF',  N'Vietnamese', 320,  'uploads/covers/vedi-tuoitho.jpg',           8500,  6200),
(2,  N'Mắt biếc',                              1990, 'uploads/books/mat-biec.epub',                 1800, N'Chuyện tình buồn của Ngạn và Hà Lan',          'EPUB', N'Vietnamese', 280,  'uploads/covers/mat-biec.jpg',               12000, 9800),
(3,  N'Tôi thấy hoa vàng trên cỏ xanh',       2010, 'uploads/books/hoa-vang.pdf',                  3200, N'Tuổi thơ nghèo khó nhưng đẹp đẽ',             'PDF',  N'Vietnamese', 420,  'uploads/covers/hoa-vang.jpg',               9200,  7100),
(4,  N'Truyện Kiều',                           1820, 'uploads/books/truyen-kieu.pdf',               1200, N'Tác phẩm kinh điển của Nguyễn Du',             'PDF',  N'Vietnamese', 180,  'uploads/covers/truyen-kieu.jpg',             15000, 11000),
(5,  N'Chí Phèo',                              1941, 'uploads/books/chi-pheo.epub',                 800,  N'Bi kịch của người nông dân nghèo',             'EPUB', N'Vietnamese', 120,  'uploads/covers/chi-pheo.jpg',               11500, 8900),
(6,  N'Lão Hạc',                               1943, 'uploads/books/lao-hac.pdf',                   600,  N'Người cha nghèo hi sinh vì con',               'PDF',  N'Vietnamese', 80,   'uploads/covers/lao-hac.jpg',                9800,  7600),
(7,  N'Dế Mèn phiêu lưu ký',                  1941, 'uploads/books/de-men.pdf',                    1500, N'Cuộc phiêu lưu của chú dế mèn',               'PDF',  N'Vietnamese', 200,  'uploads/covers/de-men.jpg',                 10200, 8100),
(8,  N'Số đỏ',                                 1936, 'uploads/books/so-do.epub',                    2000, N'Châm biếm xã hội đầu thế kỷ 20',              'EPUB', N'Vietnamese', 250,  'uploads/covers/so-do.jpg',                  8700,  6500),
(9,  N'Cô bé bán diêm',                        2015, 'uploads/books/co-be-ban-diem.pdf',            900,  N'Chuyện cổ tích buồn',                          'PDF',  N'Vietnamese', 100,  'uploads/covers/co-be-ban-diem.jpg',         7200,  5400),
(10, N'Tắt đèn',                               1939, 'uploads/books/tat-den.pdf',                   1400, N'Cuộc sống khốn khó của nông dân',              'PDF',  N'Vietnamese', 180,  'uploads/covers/tat-den.jpg',                8100,  6300),
(11, N'Vợ nhặt',                               1962, 'uploads/books/vo-nhat.epub',                  700,  N'Tình yêu trong đói khát',                      'EPUB', N'Vietnamese', 90,   'uploads/covers/vo-nhat.jpg',                7600,  5800),
(12, N'Rừng xà nu',                            1957, 'uploads/books/rung-xa-nu.pdf',                1800, N'Chiến tranh và tình yêu',                      'PDF',  N'Vietnamese', 220,  'uploads/covers/rung-xa-nu.jpg',             6900,  5100),
(13, N'Những đứa con trong gia đình',          2008, 'uploads/books/nhung-dua-con.pdf',             2400, N'Gia đình và những vấn đề xã hội',              'PDF',  N'Vietnamese', 340,  'uploads/covers/nhung-dua-con.jpg',          6200,  4700),
(14, N'Tôi là Bêtô',                           2007, 'uploads/books/toi-la-beto.epub',              2800, N'Trẻ em và ước mơ',                             'EPUB', N'Vietnamese', 380,  'uploads/covers/toi-la-beto.jpg',            5800,  4200),
(15, N'Cánh đồng bất tận',                    1984, 'uploads/books/canh-dong-bat-tan.pdf',         3500, N'Đời sống nông thôn Việt Nam',                  'PDF',  N'Vietnamese', 450,  'uploads/covers/canh-dong-bat-tan.jpg',      9400,  7200),
(16, N'Đất rừng phương Nam',                  1957, 'uploads/books/dat-rung-phuong-nam.pdf',       1600, N'Cuộc sống miền Nam',                           'PDF',  N'Vietnamese', 210,  'uploads/covers/dat-rung-phuong-nam.jpg',    8300,  6400),
(17, N'Người lái đò sông Đà',                 1965, 'uploads/books/nguoi-lai-do.epub',              1100, N'Con người miền núi phía Bắc',                  'EPUB', N'Vietnamese', 150,  'uploads/covers/nguoi-lai-do.jpg',           5500,  4000),
(18, N'Vang bóng một thời',                   2004, 'uploads/books/vang-bong-mot-thoi.pdf',        2600, N'Tuổi trẻ và khát vọng',                        'PDF',  N'Vietnamese', 350,  'uploads/covers/vang-bong-mot-thoi.jpg',     6100,  4500),
(19, N'Con chó nhỏ mang giỏ hoa hồng',        2005, 'uploads/books/con-cho-nho.epub',              1900, N'Chuyện kể từ con chó',                         'EPUB', N'Vietnamese', 240,  'uploads/covers/con-cho-nho.jpg',            4800,  3500),
(20, N'Ngày xưa có một chuyện tình',          2016, 'uploads/books/ngay-xua-co-mot-chuyen-tinh.pdf',3000,N'Tình yêu thuở học trò',                       'PDF',  N'Vietnamese', 400,  'uploads/covers/ngay-xua.jpg',               7800,  5900),

-- Classic Literature (21-40)
(21, 'Pride and Prejudice',                    1813, 'uploads/books/pride-prejudice.epub',          1500, 'Classic romance by Jane Austen',                'EPUB', 'English',     279,  'uploads/covers/pride-prejudice.jpg',        18000, 14500),
(22, 'Great Expectations',                     1861, 'uploads/books/great-expectations.pdf',        2800, 'Coming-of-age novel by Charles Dickens',         'PDF',  'English',     544,  'uploads/covers/great-expectations.jpg',     11000, 8500),
(23, 'The Adventures of Tom Sawyer',           1876, 'uploads/books/tom-sawyer.epub',               1200, 'Adventures of a young boy',                     'EPUB', 'English',     224,  'uploads/covers/tom-sawyer.jpg',             9500,  7200),
(24, '1984',                                   1949, 'uploads/books/1984.pdf',                      1800, 'Dystopian novel by George Orwell',              'PDF',  'English',     328,  'uploads/covers/1984.jpg',                   22000, 18000),
(25, 'Animal Farm',                            1945, 'uploads/books/animal-farm.epub',              800,  'Satirical allegory by George Orwell',            'EPUB', 'English',     112,  'uploads/covers/animal-farm.jpg',            17000, 13500),
(26, 'The Great Gatsby',                       1925, 'uploads/books/great-gatsby.pdf',              900,  'American classic by F. Scott Fitzgerald',        'PDF',  'English',     180,  'uploads/covers/great-gatsby.jpg',           16000, 12500),
(27, 'The Old Man and the Sea',                1952, 'uploads/books/old-man-sea.epub',              600,  'Novella by Ernest Hemingway',                   'EPUB', 'English',     127,  'uploads/covers/old-man-sea.jpg',            13000, 10200),
(28, 'A Farewell to Arms',                     1929, 'uploads/books/farewell-to-arms.pdf',          1400, 'War novel by Ernest Hemingway',                 'PDF',  'English',     332,  'uploads/covers/farewell-to-arms.jpg',       10500, 8100),
(29, 'To Kill a Mockingbird',                  1960, 'uploads/books/to-kill-mockingbird.epub',      1600, 'Classic about racial injustice',                'EPUB', 'English',     324,  'uploads/covers/mockingbird.jpg',            20000, 16500),
(30, 'Les Misérables',                         1862, 'uploads/books/les-miserables.pdf',            5500, 'Epic by Victor Hugo',                           'PDF',  'English',     1463, 'uploads/covers/les-miserables.jpg',         14000, 10800),
(31, 'War and Peace',                          1869, 'uploads/books/war-and-peace.pdf',             6200, 'Epic by Leo Tolstoy',                           'PDF',  'English',     1225, 'uploads/covers/war-and-peace.jpg',          12000, 9200),
(32, 'Crime and Punishment',                   1866, 'uploads/books/crime-punishment.epub',         2800, 'Psychological novel by Dostoevsky',             'EPUB', 'English',     671,  'uploads/covers/crime-punishment.jpg',       15000, 11800),
(33, 'The Brothers Karamazov',                 1880, 'uploads/books/brothers-karamazov.pdf',        4200, 'Philosophical novel by Dostoevsky',             'PDF',  'English',     796,  'uploads/covers/brothers-karamazov.jpg',     11500, 8800),
(34, 'The Stranger',                           1942, 'uploads/books/the-stranger.epub',             700,  'Existential novel by Albert Camus',             'EPUB', 'English',     123,  'uploads/covers/the-stranger.jpg',           13500, 10500),
(35, 'The Metamorphosis',                      1915, 'uploads/books/metamorphosis.pdf',             500,  'Novella by Franz Kafka',                        'PDF',  'English',     72,   'uploads/covers/metamorphosis.jpg',          12000, 9500),
(36, 'Siddhartha',                             1922, 'uploads/books/siddhartha.epub',               900,  'Spiritual novel by Hermann Hesse',              'EPUB', 'English',     152,  'uploads/covers/siddhartha.jpg',             10800, 8300),
(37, 'One Hundred Years of Solitude',          1967, 'uploads/books/hundred-years.pdf',             2200, 'Magical realism by García Márquez',             'PDF',  'English',     417,  'uploads/covers/hundred-years.jpg',          17500, 13800),
(38, 'Love in the Time of Cholera',            1985, 'uploads/books/love-cholera.epub',             1800, 'Romance by García Márquez',                     'EPUB', 'English',     368,  'uploads/covers/love-cholera.jpg',           13000, 10000),
(39, 'Norwegian Wood',                         1987, 'uploads/books/norwegian-wood.pdf',            1600, 'Coming-of-age by Haruki Murakami',              'PDF',  'English',     296,  'uploads/covers/norwegian-wood.jpg',         16000, 12800),
(40, 'Kafka on the Shore',                     2002, 'uploads/books/kafka-shore.epub',              2400, 'Surreal novel by Haruki Murakami',              'EPUB', 'English',     480,  'uploads/covers/kafka-shore.jpg',            14500, 11200),

-- Mystery & Thriller (41-50)
(41, 'The Da Vinci Code',                      2003, 'uploads/books/da-vinci-code.pdf',             2600, 'Mystery thriller by Dan Brown',                 'PDF',  'English',     489,  'uploads/covers/da-vinci-code.jpg',          25000, 20000),
(42, 'Angels & Demons',                        2000, 'uploads/books/angels-demons.epub',            2400, 'Thriller by Dan Brown',                         'EPUB', 'English',     448,  'uploads/covers/angels-demons.jpg',          20000, 16000),
(43, 'The Firm',                               1991, 'uploads/books/the-firm.pdf',                  2100, 'Legal thriller by John Grisham',                'PDF',  'English',     421,  'uploads/covers/the-firm.jpg',               14000, 11000),
(44, 'A Time to Kill',                         1989, 'uploads/books/time-to-kill.epub',             2300, 'Legal drama by John Grisham',                   'EPUB', 'English',     515,  'uploads/covers/time-to-kill.jpg',           12500, 9800),
(45, 'Murder on the Orient Express',           1934, 'uploads/books/orient-express.pdf',            1200, 'Mystery by Agatha Christie',                    'PDF',  'English',     256,  'uploads/covers/orient-express.jpg',         19000, 15500),
(46, 'And Then There Were None',               1939, 'uploads/books/then-there-were-none.epub',     1100, 'Mystery by Agatha Christie',                    'EPUB', 'English',     272,  'uploads/covers/then-there-were-none.jpg',   18500, 15000),
(47, 'The Shining',                            1977, 'uploads/books/the-shining.pdf',               2400, 'Horror by Stephen King',                        'PDF',  'English',     447,  'uploads/covers/the-shining.jpg',            17000, 13500),
(48, 'It',                                     1986, 'uploads/books/it.epub',                       5800, 'Horror by Stephen King',                        'EPUB', 'English',     1138, 'uploads/covers/it.jpg',                     16000, 12800),
(49, 'Carrie',                                 1974, 'uploads/books/carrie.pdf',                    1200, 'Horror by Stephen King',                        'PDF',  'English',     199,  'uploads/covers/carrie.jpg',                 13000, 10200),
(50, 'The Green Mile',                         1996, 'uploads/books/green-mile.epub',               1800, 'Serial novel by Stephen King',                  'EPUB', 'English',     400,  'uploads/covers/green-mile.jpg',             14500, 11500),

-- Fantasy & Sci-Fi (51-70)
(51, 'Harry Potter and the Philosopher''s Stone', 1997, 'uploads/books/hp1.pdf',                   1500, 'First Harry Potter book',                       'PDF',  'English',     223,  'uploads/covers/hp1.jpg',                    35000, 30000),
(52, 'Harry Potter and the Chamber of Secrets', 1998, 'uploads/books/hp2.epub',                    1800, 'Second Harry Potter book',                      'EPUB', 'English',     251,  'uploads/covers/hp2.jpg',                    30000, 25500),
(53, 'Harry Potter and the Prisoner of Azkaban', 1999, 'uploads/books/hp3.pdf',                    2100, 'Third Harry Potter book',                       'PDF',  'English',     317,  'uploads/covers/hp3.jpg',                    29000, 24500),
(54, 'The Hobbit',                             1937, 'uploads/books/the-hobbit.epub',               1400, 'Prequel to Lord of the Rings',                  'EPUB', 'English',     310,  'uploads/covers/the-hobbit.jpg',             22000, 18000),
(55, 'The Fellowship of the Ring',             1954, 'uploads/books/lotr1.pdf',                     2600, 'First Lord of the Rings book',                  'PDF',  'English',     423,  'uploads/covers/lotr1.jpg',                  20000, 16500),
(56, 'The Two Towers',                         1954, 'uploads/books/lotr2.epub',                    2400, 'Second Lord of the Rings book',                 'EPUB', 'English',     352,  'uploads/covers/lotr2.jpg',                  18500, 15000),
(57, 'The Return of the King',                 1955, 'uploads/books/lotr3.pdf',                     2800, 'Third Lord of the Rings book',                  'PDF',  'English',     416,  'uploads/covers/lotr3.jpg',                  19000, 15500),
(58, 'The Hunger Games',                       2008, 'uploads/books/hunger-games.epub',             1900, 'Dystopian YA by Suzanne Collins',               'EPUB', 'English',     374,  'uploads/covers/hunger-games.jpg',           28000, 23000),
(59, 'Catching Fire',                          2009, 'uploads/books/catching-fire.pdf',             2100, 'Second Hunger Games book',                      'PDF',  'English',     391,  'uploads/covers/catching-fire.jpg',          24000, 19500),
(60, 'Mockingjay',                             2010, 'uploads/books/mockingjay.epub',               1800, 'Third Hunger Games book',                       'EPUB', 'English',     390,  'uploads/covers/mockingjay.jpg',             22000, 18000),
(61, 'The Lightning Thief',                    2005, 'uploads/books/percy-jackson-1.pdf',           1600, 'First Percy Jackson book',                      'PDF',  'English',     377,  'uploads/covers/percy-jackson-1.jpg',        21000, 17000),
(62, 'Foundation',                             1951, 'uploads/books/foundation.epub',               1300, 'Sci-fi by Isaac Asimov',                        'EPUB', 'English',     255,  'uploads/covers/foundation.jpg',             15000, 12000),
(63, '2001: A Space Odyssey',                  1968, 'uploads/books/2001.pdf',                      1200, 'Sci-fi by Arthur C. Clarke',                    'PDF',  'English',     297,  'uploads/covers/2001.jpg',                   14000, 11000),
(64, 'Dune',                                   1965, 'uploads/books/dune.epub',                     3200, 'Sci-fi epic by Frank Herbert',                  'EPUB', 'English',     688,  'uploads/covers/dune.jpg',                   20000, 16000),
(65, 'A Game of Thrones',                      1996, 'uploads/books/got1.pdf',                      4200, 'First Game of Thrones book',                    'PDF',  'English',     694,  'uploads/covers/got1.jpg',                   26000, 21000),
(66, 'A Clash of Kings',                       1998, 'uploads/books/got2.epub',                     4800, 'Second Game of Thrones book',                   'EPUB', 'English',     768,  'uploads/covers/got2.jpg',                   22000, 17500),
(67, 'The Way of Kings',                       2010, 'uploads/books/way-of-kings.pdf',              5500, 'Fantasy by Brandon Sanderson',                  'PDF',  'English',     1007, 'uploads/covers/way-of-kings.jpg',           17000, 13500),
(68, 'Mistborn: The Final Empire',             2006, 'uploads/books/mistborn1.epub',                2800, 'Fantasy by Brandon Sanderson',                  'EPUB', 'English',     541,  'uploads/covers/mistborn1.jpg',              16000, 12800),
(69, 'The Name of the Wind',                   2007, 'uploads/books/name-of-wind.pdf',              3600, 'Fantasy by Patrick Rothfuss',                   'PDF',  'English',     662,  'uploads/covers/name-of-wind.jpg',           15500, 12200),
(70, 'City of Bones',                          2007, 'uploads/books/city-of-bones.epub',            2200, 'Urban fantasy by Cassandra Clare',              'EPUB', 'English',     485,  'uploads/covers/city-of-bones.jpg',          14000, 11000),

-- Self-Help & Business (71-90)
(71, 'How to Win Friends and Influence People', 1936, 'uploads/books/win-friends.pdf',              1400, 'Classic self-help by Dale Carnegie',            'PDF',  'English',     288,  'uploads/covers/win-friends.jpg',            24000, 19500),
(72, 'Think and Grow Rich',                    1937, 'uploads/books/think-grow-rich.epub',          1200, 'Success philosophy by Napoleon Hill',           'EPUB', 'English',     320,  'uploads/covers/think-grow-rich.jpg',        22000, 17800),
(73, 'Rich Dad Poor Dad',                      1997, 'uploads/books/rich-dad.pdf',                  1100, 'Financial literacy by Robert Kiyosaki',         'PDF',  'English',     336,  'uploads/covers/rich-dad.jpg',               28000, 23000),
(74, 'The 7 Habits of Highly Effective People', 1989, 'uploads/books/7-habits.epub',                1800, 'Self-help by Stephen Covey',                    'EPUB', 'English',     381,  'uploads/covers/7-habits.jpg',               21000, 17000),
(75, 'Atomic Habits',                          2018, 'uploads/books/atomic-habits.pdf',             1600, 'Habit formation by James Clear',                'PDF',  'English',     320,  'uploads/covers/atomic-habits.jpg',          32000, 27000),
(76, 'The Power of Habit',                     2012, 'uploads/books/power-of-habit.epub',           1900, 'Psychology of habits by Charles Duhigg',        'EPUB', 'English',     371,  'uploads/covers/power-of-habit.jpg',         19000, 15500),
(77, 'Deep Work',                              2016, 'uploads/books/deep-work.pdf',                 1300, 'Focus and productivity by Cal Newport',         'PDF',  'English',     296,  'uploads/covers/deep-work.jpg',              18000, 14500),
(78, 'Start with Why',                         2009, 'uploads/books/start-with-why.epub',           1200, 'Leadership by Simon Sinek',                     'EPUB', 'English',     256,  'uploads/covers/start-with-why.jpg',         17500, 14000),
(79, 'The Lean Startup',                       2011, 'uploads/books/lean-startup.pdf',              1500, 'Entrepreneurship by Eric Ries',                 'PDF',  'English',     336,  'uploads/covers/lean-startup.jpg',           16000, 12800),
(80, 'Zero to One',                            2014, 'uploads/books/zero-to-one.epub',              1000, 'Innovation by Peter Thiel',                     'EPUB', 'English',     224,  'uploads/covers/zero-to-one.jpg',            18500, 15000),
(81, 'The Hard Thing About Hard Things',       2014, 'uploads/books/hard-thing.pdf',                1400, 'Business by Ben Horowitz',                      'PDF',  'English',     304,  'uploads/covers/hard-thing.jpg',             14000, 11200),
(82, 'Principles',                             2017, 'uploads/books/principles.epub',               2800, 'Life and work by Ray Dalio',                    'EPUB', 'English',     592,  'uploads/covers/principles.jpg',             16500, 13000),
(83, 'Good to Great',                          2001, 'uploads/books/good-to-great.pdf',             1600, 'Business research by Jim Collins',              'PDF',  'English',     300,  'uploads/covers/good-to-great.jpg',          15000, 12000),
(84, 'The Intelligent Investor',               1949, 'uploads/books/intelligent-investor.epub',     2400, 'Investing by Benjamin Graham',                  'EPUB', 'English',     640,  'uploads/covers/intelligent-investor.jpg',   17000, 13500),
(85, 'Influence: The Psychology of Persuasion', 1984, 'uploads/books/influence.pdf',                1800, 'Psychology by Robert Cialdini',                 'PDF',  'English',     336,  'uploads/covers/influence.jpg',              16000, 12800),
(86, 'Thinking, Fast and Slow',                2011, 'uploads/books/thinking-fast-slow.epub',       2600, 'Psychology by Daniel Kahneman',                 'EPUB', 'English',     499,  'uploads/covers/thinking-fast-slow.jpg',     19000, 15500),
(87, 'The 4-Hour Workweek',                    2007, 'uploads/books/4-hour-workweek.pdf',           1700, 'Lifestyle design by Tim Ferriss',               'PDF',  'English',     416,  'uploads/covers/4-hour-workweek.jpg',        17000, 13500),
(88, 'Give and Take',                          2013, 'uploads/books/give-and-take.epub',            1500, 'Success by Adam Grant',                         'EPUB', 'English',     320,  'uploads/covers/give-and-take.jpg',          13000, 10200),
(89, 'The Alchemist',                          1988, 'uploads/books/the-alchemist.pdf',             900,  'Philosophical novel by Paulo Coelho',            'PDF',  'English',     197,  'uploads/covers/the-alchemist.jpg',          30000, 25000),
(90, 'Who Moved My Cheese?',                   1998, 'uploads/books/who-moved-cheese.epub',         600,  'Change management parable',                     'EPUB', 'English',     96,   'uploads/covers/who-moved-cheese.jpg',       20000, 16500),

-- Science & Non-Fiction (91-110)
(91,  'A Brief History of Time',               1988, 'uploads/books/brief-history-time.pdf',        1400, 'Cosmology by Stephen Hawking',                  'PDF',  'English',     256,  'uploads/covers/brief-history-time.jpg',     22000, 17500),
(92,  'The Selfish Gene',                      1976, 'uploads/books/selfish-gene.epub',             1600, 'Evolution by Richard Dawkins',                  'EPUB', 'English',     360,  'uploads/covers/selfish-gene.jpg',           15000, 12000),
(93,  'Cosmos',                                1980, 'uploads/books/cosmos.pdf',                    2200, 'Astronomy by Carl Sagan',                       'PDF',  'English',     365,  'uploads/covers/cosmos.jpg',                 18000, 14500),
(94,  'Sapiens: A Brief History of Humankind', 2011, 'uploads/books/sapiens.epub',                  2400, 'Human history by Yuval Noah Harari',            'EPUB', 'English',     443,  'uploads/covers/sapiens.jpg',                29000, 24000),
(95,  'Homo Deus',                             2015, 'uploads/books/homo-deus.pdf',                 2100, 'Future of humanity by Yuval Noah Harari',       'PDF',  'English',     440,  'uploads/covers/homo-deus.jpg',              22000, 18000),
(96,  '21 Lessons for the 21st Century',       2018, 'uploads/books/21-lessons.epub',               1800, 'Contemporary issues by Yuval Noah Harari',      'EPUB', 'English',     372,  'uploads/covers/21-lessons.jpg',             19000, 15500),
(97,  'The Tipping Point',                     2000, 'uploads/books/tipping-point.pdf',             1300, 'Social epidemics by Malcolm Gladwell',           'PDF',  'English',     301,  'uploads/covers/tipping-point.jpg',          17000, 13500),
(98,  'Outliers',                              2008, 'uploads/books/outliers.epub',                 1500, 'Success stories by Malcolm Gladwell',           'EPUB', 'English',     309,  'uploads/covers/outliers.jpg',               19500, 15800),
(99,  'Blink',                                 2005, 'uploads/books/blink.pdf',                     1200, 'Decision making by Malcolm Gladwell',           'PDF',  'English',     296,  'uploads/covers/blink.jpg',                  16000, 12800),
(100, 'Freakonomics',                          2005, 'uploads/books/freakonomics.epub',             1400, 'Economics by Steven Levitt',                    'EPUB', 'English',     336,  'uploads/covers/freakonomics.jpg',           17500, 14000),
(101, 'Educated',                              2018, 'uploads/books/educated.pdf',                  1700, 'Memoir by Tara Westover',                       'PDF',  'English',     352,  'uploads/covers/educated.jpg',               21000, 17000),
(102, 'Becoming',                              2018, 'uploads/books/becoming.epub',                 2300, 'Memoir by Michelle Obama',                      'EPUB', 'English',     448,  'uploads/covers/becoming.jpg',               26000, 21500),
(103, 'The Immortal Life of Henrietta Lacks',  2010, 'uploads/books/henrietta-lacks.pdf',           1900, 'Medical history by Rebecca Skloot',             'PDF',  'English',     381,  'uploads/covers/henrietta-lacks.jpg',        15000, 12000),
(104, 'Bad Blood',                             2018, 'uploads/books/bad-blood.epub',                1800, 'Corporate scandal by John Carreyrou',           'EPUB', 'English',     339,  'uploads/covers/bad-blood.jpg',              18500, 15000),
(105, 'The Code Breaker',                      2021, 'uploads/books/code-breaker.pdf',              2400, 'CRISPR by Walter Isaacson',                     'PDF',  'English',     560,  'uploads/covers/code-breaker.jpg',           14000, 11000),
(106, 'Steve Jobs',                            2011, 'uploads/books/steve-jobs.epub',               2800, 'Biography by Walter Isaacson',                  'EPUB', 'English',     656,  'uploads/covers/steve-jobs.jpg',             24000, 19500),
(107, 'Leonardo da Vinci',                     2017, 'uploads/books/leonardo.pdf',                  2600, 'Biography by Walter Isaacson',                  'PDF',  'English',     624,  'uploads/covers/leonardo.jpg',               17000, 13500),
(108, 'Elon Musk',                             2015, 'uploads/books/elon-musk.epub',                2200, 'Biography by Ashlee Vance',                     'EPUB', 'English',     400,  'uploads/covers/elon-musk.jpg',              23000, 18500),
(109, 'The Wright Brothers',                   2015, 'uploads/books/wright-brothers.pdf',           1600, 'Biography by David McCullough',                 'PDF',  'English',     336,  'uploads/covers/wright-brothers.jpg',        13000, 10500),
(110, 'Born a Crime',                          2016, 'uploads/books/born-a-crime.epub',             1800, 'Memoir by Trevor Noah',                         'EPUB', 'English',     304,  'uploads/covers/born-a-crime.jpg',           20000, 16000),

-- Additional Popular Books (111-120)
(111, 'The Subtle Art of Not Giving a F*ck',   2016, 'uploads/books/subtle-art.pdf',                1200, 'Self-help by Mark Manson',                      'PDF',  'English',     224,  'uploads/covers/subtle-art.jpg',             27000, 22000),
(112, 'Attached',                              2010, 'uploads/books/attached.epub',                 1300, 'Relationship psychology',                       'EPUB', 'English',     304,  'uploads/covers/attached.jpg',               16000, 12800),
(113, 'Man''s Search for Meaning',             1946, 'uploads/books/mans-search.pdf',               800,  'Holocaust memoir by Viktor Frankl',             'PDF',  'English',     165,  'uploads/covers/mans-search.jpg',            23000, 19000),
(114, 'The Art of War',                        1910, 'uploads/books/art-of-war.epub',               400,  'Military strategy by Sun Tzu (English translation)', 'EPUB', 'English', 112, 'uploads/covers/art-of-war.jpg',             21000, 17000),
(115, 'Meditations',                           1862, 'uploads/books/meditations.pdf',               700,  'Stoic philosophy by Marcus Aurelius (English translation)', 'PDF', 'English', 254, 'uploads/covers/meditations.jpg',        18500, 15000),
(116, 'The Republic',                          1892, 'uploads/books/the-republic.epub',             1800, 'Philosophy by Plato (English translation)',     'EPUB', 'English',     416,  'uploads/covers/the-republic.jpg',           14000, 11000),
(117, 'Beyond Good and Evil',                  1886, 'uploads/books/beyond-good-evil.pdf',          1100, 'Philosophy by Friedrich Nietzsche',             'PDF',  'English',     260,  'uploads/covers/beyond-good-evil.jpg',       13000, 10200),
(118, 'The Prince',                            1532, 'uploads/books/the-prince.epub',               600,  'Political philosophy by Machiavelli',            'EPUB', 'English',     140,  'uploads/covers/the-prince.jpg',             16000, 12500),
(119, 'The Four Agreements',                   1997, 'uploads/books/four-agreements.pdf',           700,  'Toltec wisdom by Don Miguel Ruiz',              'PDF',  'English',     160,  'uploads/covers/four-agreements.jpg',        19000, 15500),
(120, 'The 5 Love Languages',                  1992, 'uploads/books/5-love-languages.epub',         1000, 'Relationships by Gary Chapman',                 'EPUB', 'English',     204,  'uploads/covers/5-love-languages.jpg',       20000, 16500)

SET IDENTITY_INSERT Book OFF
GO


-- =============================================
-- 5. LINK BOOKS TO AUTHORS (Book_Authors)
-- =============================================
INSERT INTO Book_Author (book_id, author_id) VALUES
-- Vietnamese books
(1, 1), (2, 1), (3, 1), (4, 2), (5, 3), (6, 3), (7, 4), (8, 5),
(9, 1), (10, 3), (11, 3), (12, 4), (13, 1), (14, 1), (15, 4),
(16, 4), (17, 4), (18, 1), (19, 1), (20, 1),
-- Classic literature
(21, 11), (22, 12), (23, 13), (24, 7), (25, 7), (26, 10), (27, 9), (28, 9), (29, 13),
(30, 21), (31, 19), (32, 20), (33, 20), (34, 22), (35, 23), (36, 24),
(37, 16), (38, 16), (39, 17), (40, 17),
-- Mystery & Thriller
(41, 25), (42, 25), (43, 26), (44, 26), (45, 14), (46, 14),
(47, 8), (48, 8), (49, 8), (50, 8),
-- Fantasy & Sci-Fi
(51, 6), (52, 6), (53, 6), (54, 15), (55, 15), (56, 15), (57, 15),
(58, 40), (59, 40), (60, 40), (61, 41), (62, 38), (63, 39), (64, 38),
(65, 43), (66, 43), (67, 44), (68, 44), (69, 44), (70, 42),
-- Self-Help & Business
(71, 30), (72, 31), (73, 32), (74, 30), (75, 33), (76, 33), (77, 49), (78, 34),
(79, 46), (80, 45), (81, 47), (82, 48), (83, 34), (84, 32), (85, 30),
(86, 27), (87, 33), (88, 50), (89, 18), (90, 30),
-- Science & Non-Fiction
(91, 36), (92, 37), (93, 35), (94, 28), (95, 28), (96, 28),
(97, 27), (98, 27), (99, 27), (100, 27),
(101, 29), (102, 29), (103, 36), (104, 37), (105, 35), (106, 28), (107, 28), (108, 34), (109, 30), (110, 27),
-- Additional
(111, 33), (112, 30), (113, 24), (114, 19), (115, 19), (116, 22), (117, 23), (118, 21), (119, 18), (120, 30)
GO


-- =============================================
-- 6. LINK BOOKS TO PUBLISHERS (Book_Publishers)
-- =============================================
INSERT INTO Book_Publisher (book_id, publisher_id) VALUES
-- Vietnamese books → Vietnamese publishers
(1, 1), (2, 1), (3, 1), (4, 3), (5, 3), (6, 3), (7, 2), (8, 3), (9, 2), (10, 3),
(11, 3), (12, 5), (13, 1), (14, 2), (15, 5), (16, 2), (17, 5), (18, 1), (19, 1), (20, 1),
-- Classic literature → Various publishers
(21, 6), (22, 6), (23, 7), (24, 8), (25, 8), (26, 9), (27, 10), (28, 10), (29, 7),
(30, 6), (31, 15), (32, 15), (33, 15), (34, 15), (35, 9), (36, 6),
(37, 7), (38, 7), (39, 15), (40, 15),
-- Mystery & Thriller
(41, 6), (42, 6), (43, 6), (44, 6), (45, 7), (46, 7), (47, 6), (48, 8), (49, 6), (50, 8),
-- Fantasy & Sci-Fi
(51, 11), (52, 11), (53, 11), (54, 7), (55, 7), (56, 7), (57, 7),
(58, 12), (59, 12), (60, 12), (61, 12), (62, 6), (63, 6), (64, 6),
(65, 6), (66, 6), (67, 17), (68, 17), (69, 17), (70, 12),
-- Self-Help & Business
(71, 8), (72, 8), (73, 16), (74, 8), (75, 16), (76, 6), (77, 16), (78, 16),
(79, 16), (80, 16), (81, 7), (82, 8), (83, 7), (84, 7), (85, 7),
(86, 6), (87, 16), (88, 15), (89, 7), (90, 8),
-- Science & Non-Fiction
(91, 6), (92, 13), (93, 6), (94, 7), (95, 7), (96, 8),
(97, 6), (98, 6), (99, 6), (100, 7),
(101, 6), (102, 16), (103, 7), (104, 6), (105, 8), (106, 8), (107, 8), (108, 6), (109, 8), (110, 8),
-- Additional
(111, 7), (112, 6), (113, 6), (114, 15), (115, 6), (116, 13), (117, 15), (118, 6), (119, 16), (120, 6)
GO


-- =============================================
-- 7. LINK BOOKS TO CATEGORIES (Book_Categories)
-- =============================================
INSERT INTO Book_Category (book_id, category_id) VALUES
-- Vietnamese books
(1, 1), (1, 21), (2, 1), (2, 10), (3, 1), (3, 21), (4, 1), (4, 5), (5, 1), (5, 4),
(6, 1), (6, 4), (7, 1), (7, 21), (8, 1), (8, 3), (9, 1), (9, 21), (10, 1), (10, 3),
(11, 1), (11, 4), (12, 1), (12, 3), (13, 1), (13, 3), (14, 1), (14, 21), (15, 1), (15, 3),
(16, 1), (16, 3), (17, 1), (17, 4), (18, 1), (18, 3), (19, 1), (19, 21), (20, 1), (20, 10),
-- Classic literature
(21, 2), (21, 10), (22, 2), (22, 3), (23, 2), (23, 11), (24, 2), (24, 8), (25, 2), (25, 3),
(26, 2), (26, 10), (27, 2), (27, 3), (28, 2), (28, 3), (29, 2), (29, 3),
(30, 2), (30, 3), (30, 12), (31, 2), (31, 3), (31, 12), (32, 2), (32, 3), (33, 2), (33, 3), (33, 23),
(34, 2), (34, 23), (35, 2), (35, 3), (36, 2), (36, 23), (37, 2), (37, 3), (38, 2), (38, 10),
(39, 2), (39, 3), (40, 2), (40, 3),
-- Mystery & Thriller
(41, 6), (41, 3), (42, 6), (42, 3), (43, 6), (43, 3), (44, 6), (44, 3),
(45, 6), (45, 3), (46, 6), (46, 3), (47, 7), (47, 3), (48, 7), (48, 3), (49, 7), (49, 3), (50, 3), (50, 7),
-- Fantasy & Sci-Fi
(51, 9), (51, 21), (52, 9), (52, 21), (53, 9), (53, 21),
(54, 9), (54, 11), (55, 9), (55, 11), (56, 9), (56, 11), (57, 9), (57, 11),
(58, 8), (58, 21), (59, 8), (59, 21), (60, 8), (60, 21), (61, 9), (61, 21),
(62, 8), (63, 8), (64, 8), (65, 9), (65, 3), (66, 9), (66, 3),
(67, 9), (68, 9), (69, 9), (70, 9), (70, 21),
-- Self-Help & Business
(71, 17), (72, 17), (73, 16), (73, 17), (74, 17), (75, 17), (76, 18), (76, 17),
(77, 17), (78, 15), (78, 17), (79, 15), (80, 15), (81, 15), (82, 15), (82, 17),
(83, 15), (84, 16), (85, 18), (86, 18), (87, 17), (88, 17), (88, 18),
(89, 3), (89, 23), (90, 17),
-- Science & Non-Fiction
(91, 19), (92, 19), (93, 19), (94, 12), (94, 19), (95, 19), (96, 19),
(97, 18), (98, 17), (98, 13), (99, 18), (100, 15), (100, 19),
(101, 14), (102, 14), (103, 19), (103, 25), (104, 15), (104, 13), (105, 19), (105, 13),
(106, 13), (106, 20), (107, 13), (107, 24), (108, 13), (108, 15), (109, 13), (109, 12), (110, 14),
-- Additional
(111, 17), (112, 18), (112, 10), (113, 14), (113, 23), (114, 23), (114, 12),
(115, 23), (116, 23), (117, 23), (118, 23), (118, 12), (119, 17), (119, 23), (120, 10), (120, 17)
GO


-- =============================================
-- 8. INSERT SAMPLE PLANS
-- =============================================
SET IDENTITY_INSERT [Plan] ON

INSERT INTO [Plan] (plan_id, [name], [description], price, duration_days, max_books) VALUES
(1, 'Guest',          N'Gói miễn phí - Chọn tối đa 3 sách để đọc trong 1 năm',          0,      365,  3),
(2, 'Monthly',        N'Gói tháng - Đọc không giới hạn tất cả sách trong thư viện',  49000,       30, NULL),
(3, 'Quarterly',      N'Gói 3 tháng - Đọc không giới hạn (tiết kiệm 10%)',           119000,      90, NULL),
(4, 'Yearly',         N'Gói năm - Đọc không giới hạn (tiết kiệm 20%)',               419000,     365, NULL),
(5, 'Student Monthly',N'Gói sinh viên tháng - Đọc không giới hạn với giá ưu đãi',    29000,       30, NULL),
(6, 'Student Yearly', N'Gói sinh viên năm - Đọc không giới hạn (ưu đãi đặc biệt)',  219000,     365, NULL)

SET IDENTITY_INSERT [Plan] OFF
GO


-- =============================================
-- 9. INSERT SAMPLE USERS (10 users)
-- =============================================

SET IDENTITY_INSERT [User] ON

INSERT INTO [User] (user_id, username, [password], email, date_of_birth, full_name, registration_date, avatar_path, balance, [role], is_active) VALUES
(1,  'admin',      'admin123hash',    'admin@ebooklibrary.vn', '1990-01-01', N'Quản trị viên', '2024-01-01', 'uploads/avatar_users/admin.jpg',  0,      'ADMIN', 1),
(2,  'nguyenvana', 'password123hash', 'nguyenvana@gmail.com',  '1995-05-15', N'Nguyễn Văn A',  '2024-01-15', 'uploads/avatar_users/user1.jpg',  500000, 'USER',  1),
(3,  'tranthib',   'password456hash', 'tranthib@gmail.com',    '1998-08-20', N'Trần Thị B',    '2024-02-01', 'uploads/avatar_users/user2.jpg',  300000, 'USER',  1),
(4,  'lequangc',   'password789hash', 'lequangc@yahoo.com',    '2000-03-10', N'Lê Quang C',    '2024-02-10', 'uploads/avatar_users/user3.jpg',  150000, 'USER',  1),
(5,  'phamthid',   'passwordabchash', 'phamthid@outlook.com',  '1992-12-25', N'Phạm Thị D',    '2024-03-01', 'uploads/avatar_users/user4.jpg',  100000, 'USER',  1),
(6,  'hoangvane',  'passworddefhash', 'hoangvane@gmail.com',   '1997-07-07', N'Hoàng Văn E',   '2024-03-15', 'uploads/avatar_users/user5.jpg',  250000, 'USER',  1),
(7,  'vothif',     'passwordghihash', 'vothif@gmail.com',      '1999-11-11', N'Võ Thị F',      '2024-04-01', 'uploads/avatar_users/user6.jpg',  80000,  'USER',  1),
(8,  'dovanh',     'passwordjklhash', 'dovanh@hotmail.com',    '2001-02-14', N'Đỗ Văn H',      '2024-04-10', 'uploads/avatar_users/user7.jpg',  50000,  'USER',  1),
(9,  'buithii',    'passwordmnohash', 'buithii@gmail.com',     '1996-09-09', N'Bùi Thị I',     '2024-05-01', 'uploads/avatar_users/user8.jpg',  200000, 'USER',  1),
(10, 'dangvank',   'passwordpqrhash', 'dangvank@gmail.com',    '1994-04-04', N'Đặng Văn K',    '2024-05-15', 'uploads/avatar_users/user9.jpg',  0,      'USER',  1)

SET IDENTITY_INSERT [User] OFF
GO


-- =============================================
-- 10. INSERT SAMPLE USER_PLAN
-- =============================================
-- Lưu ý: User_Plan KHÔNG có surrogate PK (identity), PK là composite (user_id, plan_id)
--         → không dùng IDENTITY_INSERT
-- UQ_ActiveUserPlan đảm bảo mỗi user chỉ có 1 gói Active
-- User 5 có 2 row: 1 Expired (Monthly) + 1 Active (Guest) → hợp lệ

INSERT INTO User_Plan (user_id, plan_id, start_date, end_date, [status], auto_renew, cancelled_date) VALUES
-- User 2: Yearly (Active)
(2,  4, '2024-01-20', '2025-01-20', 'Active',   1, NULL),
-- User 3: Monthly (Active)
(3,  2, '2024-02-05', '2024-03-05', 'Active',   0, NULL),
-- User 4: Student Yearly (Active)
(4,  6, '2024-02-15', '2025-02-15', 'Active',   1, NULL),
-- User 5: Monthly (Expired - lịch sử cũ)
(5,  2, '2024-01-01', '2024-02-01', 'Expired',  0, NULL),
-- User 5: Guest (Active hiện tại) → plan_id khác nên không vi phạm UQ_ActiveUserPlan
(5,  1, '2024-03-05', '2025-03-05', 'Active',   0, NULL),
-- User 6: Quarterly (Active)
(6,  3, '2024-03-20', '2024-06-20', 'Active',   0, NULL),
-- User 7: Guest (Active)
(7,  1, '2024-04-05', '2025-04-05', 'Active',   0, NULL),
-- User 8: Monthly (Active)
(8,  2, '2024-04-15', '2024-05-15', 'Active',   1, NULL),
-- User 9: Student Monthly (Active)
(9,  5, '2024-05-05', '2024-06-05', 'Active',   1, NULL),
-- User 10: Guest (Active)
(10, 1, '2024-05-20', '2025-05-20', 'Active',   0, NULL)
GO


-- =============================================
-- 11. INSERT SAMPLE ACCESS DATA
-- =============================================
-- Lưu ý: Access KHÔNG có access_id (PK composite: user_id, book_id, plan_id)
--         membership_id đã bị xoá → thay bằng plan_id (FK → Plan)
--         → không dùng IDENTITY_INSERT

-- User 2 (plan_id=4 Yearly - unlimited, access toàn bộ sách ≤ 30)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type)
SELECT
    2              AS user_id,
    book_id,
    4              AS plan_id,
    '2024-01-20'   AS access_start,
    '2025-01-20'   AS access_end,
    'Accessible'   AS [status],
    'Membership'   AS access_type
FROM Book
WHERE book_id <= 30
GO

-- User 3 (plan_id=2 Monthly - unlimited, books 20-50)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type)
SELECT
    3              AS user_id,
    book_id,
    2              AS plan_id,
    '2024-02-05'   AS access_start,
    '2024-03-05'   AS access_end,
    'Accessible'   AS [status],
    'Membership'   AS access_type
FROM Book
WHERE book_id BETWEEN 20 AND 50
GO

-- User 4 (plan_id=6 Student Yearly - unlimited, books 40-70)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type)
SELECT
    4              AS user_id,
    book_id,
    6              AS plan_id,
    '2024-02-15'   AS access_start,
    '2025-02-15'   AS access_end,
    'Accessible'   AS [status],
    'Membership'   AS access_type
FROM Book
WHERE book_id BETWEEN 40 AND 70
GO

-- User 5 (plan_id=1 Guest - tối đa 3 sách)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type) VALUES
(5, 51,  1, '2024-03-05', '2025-03-05', 'Accessible', 'Guest'),  -- Harry Potter 1
(5, 75,  1, '2024-03-06', '2025-03-05', 'Accessible', 'Guest'),  -- Atomic Habits
(5, 94,  1, '2024-03-07', '2025-03-05', 'Accessible', 'Guest')   -- Sapiens
GO

-- User 7 (plan_id=1 Guest - tối đa 3 sách)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type) VALUES
(7, 1,   1, '2024-04-05', '2025-04-05', 'Accessible', 'Guest'),  -- Vietnamese book
(7, 24,  1, '2024-04-05', '2025-04-05', 'Accessible', 'Guest'),  -- 1984
(7, 73,  1, '2024-04-06', '2025-04-05', 'Accessible', 'Guest')   -- Rich Dad Poor Dad
GO

-- User 10 (plan_id=1 Guest - tối đa 3 sách)
INSERT INTO Access (user_id, book_id, plan_id, access_start, access_end, [status], access_type) VALUES
(10, 21,  1, '2024-05-20', '2025-05-20', 'Accessible', 'Guest'),  -- Pride and Prejudice
(10, 89,  1, '2024-05-21', '2025-05-20', 'Accessible', 'Guest'),  -- The Alchemist
(10, 113, 1, '2024-05-22', '2025-05-20', 'Accessible', 'Guest')   -- Man's Search for Meaning
GO


-- =============================================
-- 12. INSERT SAMPLE COLLECTIONS
-- =============================================
SET IDENTITY_INSERT [Collection] ON

INSERT INTO [Collection] (collection_id, [name], [description], user_id, is_public, created_date, updated_date) VALUES
(1, N'Sách yêu thích của tôi',      N'Những cuốn sách tôi đọc đi đọc lại nhiều lần', 2, 1, '2024-02-01', '2024-02-01'),
(2, N'Sách kinh doanh hay',          N'Collection về kinh doanh và khởi nghiệp',       2, 1, '2024-02-05', '2024-03-10'),
(3, N'Fantasy cho mùa hè',           N'Danh sách sách fantasy để đọc hè này',          3, 0, '2024-03-01', '2024-03-01'),
(4, N'Đọc cho con',                  N'Sách thiếu nhi để đọc cho con nghe',            4, 0, '2024-03-15', '2024-04-20'),
(5, N'Sách tự phát triển',           N'Self-help books collection',                    5, 1, '2024-04-01', '2024-04-01'),
(6, N'Khoa học viễn tưởng hay nhất', N'Top sci-fi books',                              6, 1, '2024-04-10', '2024-04-10')

SET IDENTITY_INSERT [Collection] OFF
GO

-- =============================================
-- SAMPLE DATA: Conversation & Message
-- =============================================

-- Mỗi user (2-10) có đúng 1 conversation với admin
-- assigned_to = 1 (admin)

SET IDENTITY_INSERT Conversation ON
INSERT INTO Conversation (conversation_id, [user_id], assigned_to, created_at, updated_at) VALUES
(1,  2,  1, '2024-01-20 09:00:00', '2024-01-20 09:45:00'),
(2,  3,  1, '2024-02-05 14:00:00', '2024-02-05 14:30:00'),
(3,  4,  1, '2024-02-15 10:00:00', '2024-02-16 08:20:00'),
(4,  5,  1, '2024-03-05 11:00:00', '2024-03-05 11:10:00'),
(5,  6,  1, '2024-03-20 16:00:00', '2024-03-21 09:00:00'),
(6,  7,  1, '2024-04-05 08:30:00', '2024-04-07 10:00:00'),
(7,  8,  1, '2024-04-15 13:00:00', '2024-04-15 13:05:00'),
(8,  9,  1, '2024-05-10 10:00:00', '2024-05-12 15:00:00'),
(9,  10, 1, '2024-05-20 09:00:00', '2024-05-20 09:00:00')
SET IDENTITY_INSERT Conversation OFF


-- =============================================
-- Messages
-- conversation_id = 1 | user: nguyenvana (2) ↔ admin (1)
-- Chủ đề: hỏi về cách đổi mật khẩu → đã giải quyết
-- =============================================
INSERT INTO [Message] (conversation_id, sender_id, sender_role, body, sent_at, is_read) VALUES
(1, 2, 'USER',  N'Chào admin, mình muốn đổi mật khẩu thì làm thế nào ạ?',
    '2024-01-20 09:00:00', 1),
(1, 1, 'ADMIN', N'Chào bạn! Bạn vào mục Tài khoản → Đổi mật khẩu là được nhé.',
    '2024-01-20 09:15:00', 1),
(1, 2, 'USER',  N'Mình tìm thấy rồi, cảm ơn admin nhiều!',
    '2024-01-20 09:45:00', 1),
(1, 1, 'ADMIN', N'Không có gì, bạn cần hỗ trợ gì thêm cứ nhắn mình nhé!',
    '2024-01-20 09:50:00', 1),


-- =============================================
-- conversation_id = 2 | user: tranthib (3) ↔ admin (1)
-- Chủ đề: thắc mắc về gói Monthly → đã giải quyết
-- =============================================
(2, 3, 'USER',  N'Admin ơi, gói Monthly có được đọc sách tiếng Anh không ạ?',
    '2024-02-05 14:00:00', 1),
(2, 1, 'ADMIN', N'Có bạn nhé! Gói Monthly cho phép đọc không giới hạn toàn bộ kho sách, bao gồm cả sách tiếng Anh.',
    '2024-02-05 14:20:00', 1),
(2, 3, 'USER',  N'Vậy gói Yearly thì có rẻ hơn không ạ?',
    '2024-02-05 14:25:00', 1),
(2, 1, 'ADMIN', N'Gói Yearly chỉ 419.000đ/năm, so với Monthly là 49.000đ/tháng thì tiết kiệm hơn nhiều nếu bạn dùng lâu dài.',
    '2024-02-05 14:30:00', 1),


-- =============================================
-- conversation_id = 3 | user: lequangc (4) ↔ admin (1)
-- Chủ đề: báo lỗi không mở được file EPUB → đang xử lý
-- =============================================
(3, 4, 'USER',  N'Admin ơi mình tải sách định dạng EPUB về nhưng mở không được, báo lỗi hoài.',
    '2024-02-15 10:00:00', 1),
(3, 1, 'ADMIN', N'Bạn đang dùng ứng dụng gì để mở file EPUB vậy? Bạn có thể thử dùng app Calibre hoặc Apple Books nhé.',
    '2024-02-15 10:30:00', 1),
(3, 4, 'USER',  N'Mình dùng trên điện thoại Android. Thử Calibre rồi vẫn không được ạ.',
    '2024-02-15 11:00:00', 1),
(3, 1, 'ADMIN', N'Bạn thử app Moon+ Reader hoặc KOReader xem sao nhé. Nếu vẫn lỗi bạn cho mình biết tên sách để mình kiểm tra file gốc.',
    '2024-02-15 11:20:00', 1),
(3, 4, 'USER',  N'Tên sách là "Mắt biếc" bản EPUB ạ. Mình thử Moon+ Reader vẫn bị.',
    '2024-02-16 08:00:00', 1),
(3, 1, 'ADMIN', N'Cảm ơn bạn đã phản hồi, mình sẽ kiểm tra lại file và cập nhật sớm nhất có thể nhé!',
    '2024-02-16 08:20:00', 0),


-- =============================================
-- conversation_id = 4 | user: phamthid (5) ↔ admin (1)
-- Chủ đề: hỏi cách nạp tiền → admin chưa kịp đọc
-- =============================================
(4, 5, 'USER',  N'Mình muốn nạp tiền vào tài khoản thì làm thế nào ạ?',
    '2024-03-05 11:00:00', 0),
(4, 5, 'USER',  N'Có hỗ trợ thanh toán qua MoMo không ạ?',
    '2024-03-05 11:10:00', 0),


-- =============================================
-- conversation_id = 5 | user: hoangvane (6) ↔ admin (1)
-- Chủ đề: yêu cầu thêm sách thể loại khoa học → đang trao đổi
-- =============================================
(5, 6, 'USER',  N'Thư viện có thể bổ sung thêm sách khoa học viễn tưởng không ạ? Mình thấy còn khá ít.',
    '2024-03-20 16:00:00', 1),
(5, 1, 'ADMIN', N'Cảm ơn bạn đã góp ý! Hiện tại chúng mình đang trong quá trình mở rộng kho sách. Bạn có thể gợi ý một vài đầu sách cụ thể không?',
    '2024-03-20 16:30:00', 1),
(5, 6, 'USER',  N'Mình muốn đọc series "Dune" của Frank Herbert và "Foundation" của Isaac Asimov ạ.',
    '2024-03-20 17:00:00', 1),
(5, 1, 'ADMIN', N'Mình đã ghi nhận lại rồi nhé! Sẽ ưu tiên bổ sung 2 series này trong đợt cập nhật tới.',
    '2024-03-21 09:00:00', 0),


-- =============================================
-- conversation_id = 6 | user: vothif (7) ↔ admin (1)
-- Chủ đề: tài khoản bị khóa → đã xử lý xong
-- =============================================
(6, 7, 'USER',  N'Admin ơi, mình đăng nhập bị báo tài khoản không hoạt động là sao ạ?',
    '2024-04-05 08:30:00', 1),
(6, 1, 'ADMIN', N'Mình kiểm tra rồi, tài khoản của bạn bị tạm khóa do đăng nhập sai quá 5 lần. Mình đã mở khóa lại rồi, bạn thử đăng nhập lại nhé.',
    '2024-04-05 09:00:00', 1),
(6, 7, 'USER',  N'Đăng nhập được rồi ạ, cảm ơn admin!',
    '2024-04-05 09:10:00', 1),
(6, 1, 'ADMIN', N'Tốt quá! Lần sau bạn nhớ dùng chức năng "Quên mật khẩu" nếu không nhớ mật khẩu nhé, tránh bị khóa.',
    '2024-04-07 10:00:00', 1),


-- =============================================
-- conversation_id = 7 | user: dovanh (8) ↔ admin (1)
-- Chủ đề: user vừa nhắn, admin chưa đọc chưa reply
-- =============================================
(7, 8, 'USER',  N'Cho mình hỏi sách mua trong Collection có bị mất không nếu hết hạn gói không ạ?',
    '2024-04-15 13:00:00', 0),
(7, 8, 'USER',  N'Và nếu mình gia hạn gói thì sách cũ có tự động mở lại không?',
    '2024-04-15 13:05:00', 0),


-- =============================================
-- conversation_id = 8 | user: buithii (9) ↔ admin (1)
-- Chủ đề: phản hồi giao diện khó dùng → đang trao đổi
-- =============================================
(8, 9, 'USER',  N'Mình thấy giao diện tìm kiếm sách hơi khó dùng, không lọc được theo ngôn ngữ.',
    '2024-05-10 10:00:00', 1),
(8, 1, 'ADMIN', N'Cảm ơn bạn đã góp ý! Tính năng lọc theo ngôn ngữ đang được nhóm phát triển xem xét thêm vào.',
    '2024-05-10 10:30:00', 1),
(8, 9, 'USER',  N'Ngoài ra nếu thêm được bộ lọc theo số trang thì tiện hơn nhiều ạ, đôi khi mình chỉ muốn đọc sách ngắn.',
    '2024-05-11 09:00:00', 1),
(8, 1, 'ADMIN', N'Ý tưởng hay đó! Mình sẽ chuyển đề xuất này đến team thiết kế nhé. Bạn có góp ý gì thêm không?',
    '2024-05-12 15:00:00', 0),


-- =============================================
-- conversation_id = 9 | user: dangvank (10) ↔ admin (1)
-- Chủ đề: user vừa gửi tin đầu tiên, chưa có reply
-- =============================================
(9, 10, 'USER', N'Chào admin, mình là người dùng mới. Cho mình hỏi gói Guest được đọc tối đa mấy cuốn sách ạ?',
    '2024-05-20 09:00:00', 0)


-- =============================================
-- 13. LINK COLLECTIONS TO BOOKS
-- =============================================
INSERT INTO Collection_Book (collection_id, book_id) VALUES
-- Collection 1 (User 2's favorites)
(1, 1), (1, 3), (1, 24), (1, 51), (1, 75), (1, 94),
-- Collection 2 (Business books)
(2, 71), (2, 73), (2, 79), (2, 80), (2, 82), (2, 83),
-- Collection 3 (Fantasy)
(3, 51), (3, 52), (3, 54), (3, 65), (3, 67), (3, 69),
-- Collection 4 (Children's books)
(4, 1), (4, 3), (4, 7), (4, 9), (4, 51), (4, 61),
-- Collection 5 (Self-development)
(5, 71), (5, 72), (5, 74), (5, 75), (5, 77), (5, 78), (5, 111),
-- Collection 6 (Sci-fi)
(6, 24), (6, 58), (6, 62), (6, 63), (6, 64)
GO


PRINT '========================================='
PRINT 'DATA INSERT COMPLETED SUCCESSFULLY!'
PRINT '========================================='
PRINT 'Summary:'
PRINT '- 50 Authors'
PRINT '- 20 Publishers'
PRINT '- 25 Categories'
PRINT '- 120 Books'
PRINT '- 6 Plans'
PRINT '- 10 Sample Users'
PRINT '- 10 User Plans'
PRINT '- ~99 Access Records'
PRINT '- 6 Collections with linked books'
PRINT '- 9 Conversations'
PRINT '- 31 Messages'
PRINT '========================================='
GO
