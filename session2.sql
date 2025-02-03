-- cach 1 : tao database truc tiep tu tablepuls 
-- window: trl + ? de cmt

-- cach 2 : tao database tu code sql
-- ctrl+enter de run ; 
--luu y chi tao database 1 lan
CREATE DATABASE node48_test

use node48_test
--tao table
-- kieu string: varchar, text ...
-- kieu number: int, float, double....
-- kieu ngay thang nam: data, datetime, timestamp...
CREATE TABLE product(
-- 	<ten column> <kieu du lieu>
	product_name VARCHAR(100) NOT NULL,
	image varchar(255),
	price DOUBLE,
	rate int
)

-- tao data cho product
INSERT INTO product (product_name, image, price, rate) VALUES
('iPhone 15 Pro', 'iphone15pro.jpg', 999.99, 5),
('Samsung Galaxy S23', 'galaxy_s23.jpg', 849.99, 4),
('MacBook Pro M2', 'macbook_pro_m2.jpg', 1999.99, 5),
('Dell XPS 15', 'dell_xps_15.jpg', 1799.99, 4),
('Sony WH-1000XM5', 'sony_wh1000xm5.jpg', 399.99, 5),
('Apple Watch Series 9', 'apple_watch_s9.jpg', 499.99, 5),
('Google Pixel 8', 'pixel8.jpg', 799.99, 4),
('iPad Pro 12.9"', 'ipad_pro_12.9.jpg', 1099.99, 5),
('AirPods Pro 2', 'airpods_pro_2.jpg', 249.99, 4),
('Nintendo Switch OLED', 'switch_oled.jpg', 349.99, 5),
('Sony PlayStation 5', 'ps5.jpg', 499.99, 5),
('Xbox Series X', 'xbox_series_x.jpg', 499.99, 4),
('Logitech MX Master 3', 'mx_master_3.jpg', 99.99, 5),
('Razer BlackWidow V4', 'razer_blackwidow_v4.jpg', 149.99, 4),
('GoPro Hero 12', 'gopro_hero12.jpg', 449.99, 5),
('Samsung 4K Smart TV', 'samsung_4k_tv.jpg', 999.99, 4),
('Asus ROG Strix RTX 4090', 'asus_rtx_4090.jpg', 1899.99, 5),
('Corsair Vengeance 32GB RAM', 'corsair_vengeance_32gb.jpg', 129.99, 4),
('MSI Gaming Laptop', 'msi_gaming_laptop.jpg', 1599.99, 5),
('Bose SoundLink Revolve+', 'bose_revolve.jpg', 299.99, 4);


-- dung sql de query data
SELECT * FROM product 
SELECT product_name, image from product


--tao table user
CREATE TABLE users(
	fullname varchar(50) NOT NULL,
	email varchar(50),
	phone VARCHAR(20),
	address VARCHAR(255),
	age int
	
)
-- data users
INSERT INTO users (fullname, email, phone, address, age) VALUES
('Nguyễn Văn A', 'nguyenvana@example.com', '0987654321', '123 Đường Lê Lợi, Hà Nội', 28),
('Trần Thị B', 'tranthib@example.com', '0978123456', '456 Đường Trần Hưng Đạo, TP.HCM', 32),
('Lê Văn C', 'levanc@example.com', '0912345678', '789 Đường Nguyễn Trãi, Đà Nẵng', 25),
('Phạm Minh D', 'phamminhd@example.com', '0965123456', '12 Đường Hoàng Diệu, Hải Phòng', 40),
('Hoàng Thị E', 'hoangthie@example.com', '0938123123', '56 Đường Lý Thường Kiệt, Cần Thơ', 22),
('Đặng Quốc F', 'dangquocf@example.com', '0923123456', '89 Đường Phạm Văn Đồng, Huế', 35),
('Bùi Thị G', 'buithig@example.com', '0901678456', '67 Đường Nguyễn Huệ, Nha Trang', 29),
('Võ Hoài H', 'vohoaih@example.com', '0987234561', '34 Đường Quang Trung, Bình Dương', 31),
('Đỗ Minh I', 'dominhi@example.com', '0918456321', '21 Đường Võ Văn Kiệt, Đà Lạt', 27),
('Lý Hải J', 'lyhaij@example.com', '0978456213', '98 Đường Hùng Vương, Vũng Tàu', 45);


-- query (filer data)
SELECT * FROM users

-- cau1: liet ke nguoi co tuoi tu 25-30
-- va sap xep (order by) : tang dan ASC (tang) , DESC (giamm)
SELECT * FROM users
WHERE age BETWEEN 25 and 30
-- 25 < age and age < 30
ORDER by age DESC

-- cau 2 tim nguoi ten A 
-- %A% : tim nguoi co chu A trong ten
-- %A : ...........co chu A cuoi
-- A% : ...........co chu A dau
SELECT * FROM users 
WHERE fullname like '%A'

--cau 3 tim nguoi co tuoi cao nhat
--b1 tim tuoi lon nhat
--b2 query nhung nguoi bang
select*from users 
WHERE age = (
	SELECT age from users 
	ORDER by age DESC
	LIMIT 1
)
--or cach 2
SELECT*from users 
WHERE age = (
	SELECT MAX(age) from users 
)

--cau 4 : dem so luong user
SELECT COUNT(*) as 'tong so useer' from users 


-- Udate
UPDATE users set age = 20
WHERE fullname = '%A'
--where fullnam IN ('john', 'david')


-- Delete
DELETE FROM users 
WHERE fullname = 'Võ Hoài H'
-- => hard delete
-- => soft delete 
-- is_delete hoac deleted_at de show hiden


--Update table
-- case1: them column moi
alter table users
add COLUMN gender int DEFAULT 1 
-- case2 : update datatype cho column
ALTER TABLE users 
modify COLUMN fullname VARCHAR(100) not null


