create database DO_AN
use DO_AN
CREATE TABLE DANGNHAP
(
USERID VARCHAR(6) PRIMARY KEY,
TAIKHOAN NVARCHAR(50) UNIQUE NOT NULL,
MATKHAU NVARCHAR(50) NOT NULL
)


INSERT INTO DANGNHAP VALUES 
('NV1','thanhtruc','thanhtruc',N'Phạm Quốc Trung',N'Quản Lý','trung@gmail.com'),
('NV2','thuhuyen','thuhuyen',N'Nguyễn Thị Thu Huyền',N'Thủ Kho','thuhuyen@gmail.com'),
('NV3','khang','khang',N'Phạm Minh Khang',N'Nhân Viên Bán Hàng','minhkhang@gmail.com'),
('NV4','Tin','Tin',N'Phạm Ngọc Anh Tín',N'Giám Đốc Điều Hành','tinpham@gmail.com')
CREATE TABLE NHANVIEN 
(
	MANV VARCHAR(6) PRIMARY KEY ,
	HOTEN NVARCHAR(40),
	CHUCVU NVARCHAR(20),
	SODT VARCHAR(20),
	GIOITINH NVARCHAR(4),
	NGAYSINH SMALLDATETIME,
	DIACHI NVARCHAR(40),
	LUONG MONEY ,
	NGVL SMALLDATETIME )
	-- m có nhập thêm dữ liệu gì k ko

SET DATEFORMAT DMY 
DROP TABLE NHANVIEN
INSERT INTO NHANVIEN VALUES ('NV1',N'Trần Nguyễn Thanh Phương',N'Nhân Viên Bán Hàng','098269245',N'Nữ',N'22/10/1960','1/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV2',N'Nguyễn Thiên Hương ',N'Nhân Viên Bán Hàng','0982692456',N'Nữ',N'22/1/1980',N'12/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV3',N'Trần Nguyễn Trung Quân',N'Nhân Viên Bán Hàng','0982692457',N'Nam',N'15/10/1982','16/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV4',N'Trần Thanh',N'Nhân Viên Bán Hàng','0982692458',N'Nữ','19/11/1972',N'199/4 Linh Trung , Thủ Đức, TPHCM',2000000,'11/10/2007')
INSERT INTO NHANVIEN VALUES ('NV5',N'Nguyễn Thanh Phương',N'Nhân Viên Bán Hàng','0982692459',N'Nữ',N'23/11/1990','100/7 Linh Trung , Thủ Đức, TPHCM',2000000,'12/8/2006')
INSERT INTO NHANVIEN VALUES ('NV6',N'Trần Thanh Nhàn',N'Nhân Viên Bán Hàng','0982692451',N'Nữ',N'13/6/1978','1/4 Linh Tây , Thủ Đức, TPHCM',2000000,'11/2/2007')
INSERT INTO NHANVIEN VALUES ('NV7',N'Trần Đức Minh',N'Quản Lý','0982692145',N'Nam','3/4/1974',N'12/5 Linh Tây, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV8',N'Nguyễn Trung Kiên',N'Nhân Viên Bán Hàng','0982692124',N'Nam',N'12/6/1980','123A Q9 , TPHCM',1000000,'15/2/2007')
INSERT INTO NHANVIEN VALUES ('NV9',N'Nguyễn Đức Quốc',N'Nhân Viên Bán Hàng','0982692123',N'Nam',N'9/3/1970','123/45 Linh Trung, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV10',N'Trần Thị Mai Tính',N'Nhân Viên Bán Hàng','0982692123',N'NỮ',N'10/3/1980','12/5 Linh Xuân, Thủ Đức, TPHCM',1000000,'10/8/2006')
INSERT INTO NHANVIEN VALUES ('NV11',N'Nguyễn Hà ',N'Thủ Kho','0982692123',N'Nữ','31/12/1981',N'100/35 Linh Tây, Thủ Đức, TPHCM',1000000,'17/11/2006')
INSERT INTO NHANVIEN VALUES ('NV12',N'Phạm Thanh Thiên Trúc',N'Thủ Kho','0982692123',N'Nữ',N'6/4/1971',N'121/5 Lê Đại Hành , Quận Bình Thạnh, TPHCM',1000000,'15/12/2006')
INSERT INTO NHANVIEN VALUES ('NV13',N'Lương Công Hải',N'Nhân Viên Vệ Sinh','0982692123',N'Nam',N'10/1/1981',N'13/4 Linh Tây, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV14',N'Trần Viễn',N'Nhân Viên Bán Hàng','0982692123',N'Nữ',N'3/9/1979',N'12A/45 Trảng Bom, Đồng Nai',1000000,'8/11/2006')
INSERT INTO NHANVIEN VALUES ('NV15',N'Trần Nguyễn Thanh Trúc',N'Quản Lý','0982692123',N'Nữ',N'2/5/1983',N'123/45 Quận 1, TPHCM',1000000,'10/11/2007')
INSERT INTO NHANVIEN VALUES ('NV16',N'Phạm Ngọc Anh Tín',N'Giám Đốc','0982692123',N'Nam',N'15/10/1985',' Quận 1, TPHCM',10000000,'10/11/2005')

CREATE TABLE KHACHHANG
(
	MAKH VARCHAR(6) PRIMARY KEY ,
	HOTEN NVARCHAR(40) ,
	DIACHI NVARCHAR(40) ,
	NGSINH SMALLDATETIME , 
	GIOITINH CHAR(4) check (GIOITINH IN ('NAM','NỮ')),
	SODT VARCHAR(20) ,
)
set dateformat dmy
INSERT INTO KHACHHANG (MAKH,HOTEN,DIACHI,SODT,NGSINH,GIOITINH) VALUES 
('KH1',N'Nguyễn Văn An',N'731 Trần Hưng Đạo, Q5, TpHCM','08823451','22/10/1960','Nam'),
('KH2',N'Trần Ngọc Hân',N'23/5 Nguyễn Trãi, Q5, TpHCM','0908256478','3/4/1974',N'Nữ'),
('KH3',N'Trần Ngọc Linh',N'45 Nguyen Tất Thành, Q1, TpHCM','0938776266','12/6/1980',N'Nữ'),
('KH4',N'Trần Minh Long',N'50/34 Lê Đại Hành, Q10, TpHCM','0917325476','9/3/1965','Nam'),
('KH5',N'Lê Nhật Minh',N'34 Trương Định, Q3, TpHCM','08246108','10/3/1950','Nam'),
('KH6',N'Lê Hoài Thương',N'227 Nguyễn Văn Cừ,Q5,TpHCM','08631738','31/12/1981',N'Nữ'),
('KH7',N'Nguyễn Văn Tám',N'32/3 Trần Bình Trọng, Q5, TpHCM','0916783565','6/4/1971','Nam'),
('KH8',N'Phan Thị Thanh',N'45/2 An Dương Vương, Q5, TpHCM','0938435756','10/1/1971',N'Nữ'),
('KH9',N'Lê Hà Vinh',N'873 Lê Hồng Phong, Q5, TpHCM','08654763','3/9/1979','Nam'),
('KH10',N'Hà Duy Lập',N'34/34B Nguyễn Trãi, Q1, TpHCM','08768904','2/5/1983','Nam'),
('KH11',N'Qua Văn Cầu',N'50/34 Nguyễn Thị Minh Khai, Q10, TpHCM','0917325472','9/5/1975','Nam'),
('KH12',N'Trương Minh Điền',N'36 Trương Định, Q5, TpHCM','082461089','10/3/1990','Nam'),
('KH13',N'Lê Hoài Nam',N'227/2 Nguyễn Văn Cừ,Q5,TpHCM','086317380','31/10/1981','Nam'),
('KH14',N'Nguyễn Văn Long',N'32/3 Lương Định Của, Q5, TpHCM','0916735650','6/4/1980','Nam'),
('KH15',N'Phan Thị Thanh Nhàn',N'12/2 An Dương Vương, Q6, TpHCM','0948435756','10/12/1972',N'Nữ'),
('KH16',N'Trần Khôi Nguyên',N'873 Trần Đại Nghĩa, Q5, TpHCM','086547632','12/4/1997','Nam'),
('KH17',N'Bùi Minh Hiếu',N'34 Phạm Ngũ Lão, Q10, TpHCM','087689304','24/9/1984','Nam'),
('KH18',N'Lê Đức Thắng',N'104 CMT8, Q11, TpHCM','08654763','20/10/2000','Nam'),
('KH19',N'Phạm Công Minh',N'1 Nguyễn Trãi, Q8, TpHCM','087689042','5/6/1977','Nam'),
('KH20',N'Trần Trung Nghĩa',N'50 Nguyễn Thị Minh Khai, Q10, TpHCM','0917325272','12/1/1975','Nam'),
('KH21',N'Lê Trọng Hiếu',N'32 Võ Thị Sáu, Bình Thạnh, TpHCM','082431089','10/4/1995','Nam'),
('KH22',N'Lê Hoài Nam',N'227/2 Nguyễn Thị Minh Khai,Q7,TpHCM','086323480','22/11/1982','Nam'),
('KH23',N'Nguyễn Hồng Phương Nhi',N'25 Tôn Đức Thắng, Gò Vấp, TpHCM','091621350','5/6/1995',N'Nữ'),
('KH24',N'Phan Thanh Nhàn',N'30/4 Bến Vân Đồn, Q6, TpHCM','0941233756','10/12/1982',N'Nữ'),
('KH25',N'Trần Nguyễn Hoàng Quý',N'123 Linh Trung , Thủ Đức','0236547632','12/4/1997','Nam'),
('KH26',N'Trần Long',N'12/4 Linh Tây, Thủ Đức, TpHCM','087689214','3/6/1978','Nam'),
('KH27',N'Nguyễn Tự Long',N'3 Trần Đại Nghĩa, Q7, TpHCM','09167231650','3/6/1997','Nam'),
('KH28',N'Đào Như ý',N'15/2 An Dương Vương, Q6, TpHCM','0943125756','12/10/1982',N'Nữ'),
('KH29',N'Trần Khôi Ngô Tuấn Tú',N'231 Trần Đại Nghĩa, Q5, TpHCM','086521332','14/4/1997','Nam'),
('KH30',N'Phan Hải Đăng',N'34/34 Lý Thái Tổ , Q10, TpHCM','087622104','20/5/1999','Nam')
CREATE TABLE KHACHHANGTHANTHIET
(
MAKH VARCHAR(6) PRIMARY KEY,
LOAIKH NVARCHAR(10),
NGDK SMALLDATETIME
CONSTRAINT FK_KHTT_MAKH FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
)

INSERT INTO KHACHHANGTHANTHIET VALUES
('KH1','Đồng','22/07/2006'),
('KH2','Đồng','30/07/2006'),
('KH3','Đồng','05/08/2006'),
('KH4','Đồng','02/10/2006'),
('KH5','Bạc','28/10/2006'),
('KH6','Bạc','22/07/2006'),
('KH7','Bạc','30/07/2006'),
('KH8','Vàng','05/08/2006'),
('KH9','Vàng','02/10/2006'),
('KH10','Vàng','28/10/2006')

CREATE TABLE HANGHOA
(
	MAHH VARCHAR(6) PRIMARY KEY ,
	TENSP NVARCHAR(40) ,
	DVT NVARCHAR(10), 
	SOLUONG INT ,
	GIA MONEY ,
	NUOCSX NVARCHAR(40),
	LOAISANPHAM NVARCHAR(10) ,
	TINHTRANG NVARCHAR(10) 
)

INSERT INTO HANGHOA VALUES ('SP00',N'Sữa tươi đóng chai ',N'Chai','100',50000,N'Việt Nam ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP01',N'Bút Bi ',N'Cây','100',5000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP02',N'Bánh Mì  ',N'Cái','10',10000,N'Thái Lan ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP03',N'Bánh Solima ',N'Hộp','10',50000,N'Singapore ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP04',N'Coca Cola ',N'Chai','10',10000,N'USA ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP05',N'Kem Merino',N'Hộp','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP06',N'Cà Phê Latte  ',N'Hộp','10',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP07',N'Tập 200 trang',N'Quyển','10',10000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP08',N'Thước Kẻ ',N'Cái','10',8000,N'Nhật Bản ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP09',N'Sữa Bò Long Thành ',N'Chai','10',50000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP10',N'Sữa tươi đóng chai ',N'Chai','10',50000,N'Việt Nam ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP11',N'Bút Bi Sola',N'Hộp','10',30000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP12',N'Sữa Milo ',N'Hộp','10',10000,N'Thái Lan ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP13',N'Cơm Chiên ',N'Hộp','100',20000,N'Singapore ',N'Đồ ăn nhanh','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP14',N'Cà Rốt ','kg','1000',8000,N'USA ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP15',N'Tương ớt Cholimex',N'Chai','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP16',N'Trứng gà  ',N'Hộp','100',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP17',N'Tập 100 trang',N'Quyển','100',10000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP18',N'Bánh Slide vị BBQ ',N'Hộp','100',8000,N'Nhật Bản ',N'Đồ ăn nhanh','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP19',N'Rượu Italy ',N'Chai','10',2000000,N'Italy ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP20',N'Sữa chua Yakuun ',N'Chai','100',10000,N'Nhật Bản ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP21',N'Bút chì ',N'Cây','10',5000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP22',N'Nước Lau nhà Q  ',N'Chai','10',60000,N'Thái Lan ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP23',N'Nhân Sâm ',N'Hộp','10',50000,N'Singapore ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP24',N'Pepsi ',N'Chai','10',10000,N'USA ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP25',N'Bánh xốp kem',N'Hộp','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP26',N'Cà Phê Capuchino   ',N'Hộp','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP27',N'Tập 96 trang',N'Quyển','10',10000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP28',N'Eraser gummy ',N'Cái','10',8000,N'Nhật Bản ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP29',N'Chổi quét nhà ',N'Cái','10',50000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')

INSERT INTO HANGHOA VALUES ('SP30',N'Laptop Acer ',N'Chiếc','100',18000000,N'Việt Nam ',N'Điện Tử','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP31',N'Laptop Asus ',N'Chiếc','100',20000000,N'Thái Lan ',N'Điện Tử','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP32',N'Laptop Dell  ',N'Chiếc','100',23000000,N'Nhật Bản',N'Điện Tử','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP33',N'Laptop HP ',N'Chiếc','10',15000000,N'Việt Nam ',N'Điện Tử','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP34',N'Điện thoại LG ',N'Chiếc','10',2000000,N'Trung Quốc ',N'Điện Tử','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP35',N'Điện Thoại Oppo',N'Chiếc','10',2800000,N'Trung Quốc ',N'Thực Phẩm','Còn Hàng')

INSERT INTO HANGHOA VALUES ('SP36',N'Bánh gấu Koala  ',N'Hộp','100',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP37',N'Tập 200 Campus',N'Quyển','10',15000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP38',N'Đất sét Haya ',N'Hộp','10',40000,N'Nhật Bản ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP39',N'Rượu chuối hột ',N'Chai','10',50000,N'Việt Nam ',N'Đồ Uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP40',N'Rượu vang đỏ ',N'Chai','10',500000,N'USA ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP41',N'Giấy Pulpy',N'Hộp','10',50000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP42',N'Giấy Baby Johnson ',N'Hộp','10',100000,N'USA ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP43',N'Thùng rác  ',N'Cái','100',50000,N'Singapore ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP44',N'Chanh ','kg','1000',8000,'USA ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP45',N'Tương ớt Chinsu',N'Chai','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP46',N'Trứng vịt  ',N'Hộp','100',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP47',N'Tập 100 trang Campus',N'Quyển','100',13000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP48',N'Bánh Slide vị Cheese ',N'Hộp','100',34000,N'Nhật Bản ',N'Đồ ăn nhanh','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP49',N'Rượu X.O ',N'Chai','10',2000000,'Italy ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP50',N'Sữa chua Vinamilk ',N'Hộp','100',10000,N'Nhật Bản ','Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP51',N'Thanh Long ','kg','100',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP52',N'Chổi lông gà ',N'Cái','10',10000,N'Thái Lan ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP53',N'Yến Khánh Hòa ',N'Hộp','10',50000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP54',N'7 Up ','Chai','10',8000,'USA ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP55',N'Bánh Trứng',N'Hộp','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP56',N'Cà Phê Espresso  ',N'Hộp','10',20000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP57',N'Nhật kí',N'Quyển','10',10000,N'Việt Nam ',N'Đồ Dùng','Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP58',N'Lịch ',N'Cái','10',8000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP59',N'Đồng hồ báo thức',N'Cái','10',50000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')

INSERT INTO HANGHOA VALUES ('SP60',N'Nước lọc ','Chai','100',10000,N'Việt Nam ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP61',N'Bút Máy ',N'Cây','100',20000,N'Việt Nam ',N'Đồ Dùng','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP62',N'Trà sữa Ô Long  ',N'Chai','10',10000,N'Thái Lan ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP63',N'Trà sữa Latte ',N'Chai','10',50000,N'Singapore ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP64',N'Nước ép táo Fuji ',N'Chai','10',10000,N'Nhật Bản ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP65',N'Sữa Vinamilk',N'Hộp','10',40000,N'Việt Nam ',N'Thực Phẩm','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP66',N'Nước Tăng lực Redbull',N'Chai','10',20000,N'Việt Nam ',N'Đồ uống','Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP67',N'StrongBow',N'Chai','10',10000,N'Thái Lan ',N'Đồ uống','Hết Hàng')



CREATE TABLE NHACUNGCAP
(
MANCC VARCHAR(6) PRIMARY KEY,
TENNCC NVARCHAR(30),
DIACHI NVARCHAR(30),
SDT VARCHAR(10)
)

INSERT INTO NHACUNGCAP VALUES('NCC00',N'Công ty ABC',N'12/2 Lê Thánh Tông, Q5, TPHCM','098212345'),
('NCC01',N'Công ty phân phối sản phẩm XYZ',N'13A/25 Cao Bá Quát, Q10, TPHCM','098212346'),
('NCC02',N'Công ty Tư nhân DAS',N'102 Tô Vĩnh Diện, Q12, TPHCM','098212336')

CREATE TABLE KHOHANG
(
MAKHO VARCHAR(6) PRIMARY KEY,
TENKHO NVARCHAR(30),
DIACHI NVARCHAR(30),
)

insert into KHOHANG values ('KHH00',N'Kho Hàng DAS',N'99 Đống Đa , Hà Nội')

CREATE TABLE NHAPKHO
(
MA_NKHO INT IDENTITY PRIMARY KEY,
MAKHO VARCHAR(6),
MANCC VARCHAR(6),
MANV VARCHAR(6),
NGAYNHAP SMALLDATETIME,
TONGGIATRI MONEY,
CONSTRAINT FK_NHAPKHO_MAKHO FOREIGN KEY (MAKHO) REFERENCES KHOHANG(MAKHO),
CONSTRAINT FK_NHAPKHO_MANCC FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC),
CONSTRAINT FK_NHAPKHO_MANV FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
)

CREATE TABLE CTNHAPKHO
(
MA_NKHO INT IDENTITY PRIMARY KEY,
MAHH VARCHAR(6) ,
)



CREATE TABLE DONHANG
(
	MADH VARCHAR (6) PRIMARY KEY,
	MAHH VARCHAR(6) CONSTRAINT FK_MAHH FOREIGN KEY (MAHH) REFERENCES HANGHOA(MAHH) ,
	NGAYBAN SMALLDATETIME ,
	MAKH VARCHAR(6) ,
	TONGTIEN MONEY
)
