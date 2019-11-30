create database DOAN

use DOAN


CREATE TABLE NHANVIEN 
(
	MANV VARCHAR(10) PRIMARY KEY ,
	HOTEN NVARCHAR(40),
	CHUCVU NVARCHAR(20),
	SDT VARCHAR(20),
	GIOITINH NVARCHAR(4) CHECK (GIOITINH IN(N'NAM',N'NỮ')),
	NGAYSINH SMALLDATETIME,
	DIACHI NVARCHAR(100),
	LUONG MONEY ,
	NGVL SMALLDATETIME ,
)

SET DATEFORMAT DMY 

INSERT INTO NHANVIEN VALUES ('NV1',N'Trần Nguyễn Thanh Phương',N'Nhân Viên Bán Hàng','098269245',N'Nữ','22/10/1960',N'1/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV2',N'Nguyễn Thiên Hương ',N'Nhân Viên Bán Hàng','0982692456',N'Nữ','22/1/1980',N'12/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV3',N'Trần Nguyễn Trung Quân',N'Nhân Viên Bán Hàng','0982692457',N'Nam',N'15/10/1982','16/4 Linh Xuân , Thủ Đức, TPHCM',2000000,'10/10/2006')
INSERT INTO NHANVIEN VALUES ('NV4',N'Trần Thanh',N'Nhân Viên Bán Hàng','0982692458',N'Nữ','19/11/1972',N'199/4 Linh Trung , Thủ Đức, TPHCM',2000000,'11/10/2007')
INSERT INTO NHANVIEN VALUES ('NV5',N'Nguyễn Thanh Phương',N'Nhân Viên Bán Hàng','0982692459',N'Nữ','23/11/1990',N'100/7 Linh Trung , Thủ Đức, TPHCM',2000000,'12/8/2006')
INSERT INTO NHANVIEN VALUES ('NV6',N'Trần Thanh Nhàn',N'Nhân Viên Bán Hàng','0982692451',N'Nữ','13/6/1978',N'1/4 Linh Tây , Thủ Đức, TPHCM',2000000,'11/2/2007')
INSERT INTO NHANVIEN VALUES ('NV7',N'Trần Đức Minh',N'Quản Lý','0982692145',N'Nam','3/4/1974',N'12/5 Linh Tây, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV8',N'Nguyễn Trung Kiên',N'Nhân Viên Bán Hàng','0982692124',N'Nam','12/6/1980',N'123A Q9 , TPHCM',1000000,'15/2/2007')
INSERT INTO NHANVIEN VALUES ('NV9',N'Nguyễn Đức Quốc',N'Nhân Viên Bán Hàng','0982692123',N'Nam','9/3/1970',N'123/45 Linh Trung, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV10',N'Trần Thị Mai Tính',N'Nhân Viên Bán Hàng','0982692123',N'NỮ','10/3/1980',N'12/5 Linh Xuân, Thủ Đức, TPHCM',1000000,'10/8/2006')
INSERT INTO NHANVIEN VALUES ('NV11',N'Nguyễn Hà ',N'Thủ Kho','0982692123',N'Nữ','31/12/1981',N'100/35 Linh Tây, Thủ Đức, TPHCM',1000000,'17/11/2006')
INSERT INTO NHANVIEN VALUES ('NV12',N'Phạm Thanh Thiên Trúc',N'Thủ Kho','0982692123',N'Nữ','6/4/1971',N'121/5 Lê Đại Hành , Quận Bình Thạnh, TPHCM',1000000,'15/12/2006')
INSERT INTO NHANVIEN VALUES ('NV13',N'Lương Công Hải',N'Nhân Viên Vệ Sinh','0982692123',N'Nam','10/1/1981',N'13/4 Linh Tây, Thủ Đức, TPHCM',1000000,'10/11/2006')
INSERT INTO NHANVIEN VALUES ('NV14',N'Trần Viễn',N'Nhân Viên Bán Hàng','0982692123',N'Nữ','3/9/1979',N'12A/45 Trảng Bom, Đồng Nai',1000000,'8/11/2006')
INSERT INTO NHANVIEN VALUES ('NV15',N'Trần Nguyễn Thanh Trúc',N'Quản Lý','0982692123',N'Nữ','2/5/1983',N'123/45 Quận 1, TPHCM',1000000,'10/11/2007')
INSERT INTO NHANVIEN VALUES ('NV16',N'Phạm Ngọc Anh Tín',N'Giám Đốc','0982692123',N'Nam','15/10/1985',N' Quận 1, TPHCM',10000000,'10/11/2005')
INSERT INTO NHANVIEN VALUES ('NV17',N'Phạm Ngọc Anh',N'Thủ Kho','0957263689',N'Nam','15/10/1995',N'119 Tôn Thất Đạm, P. Bến Nghé, Quận 1, TP. HCM',10000000,'10/11/2016')

CREATE TABLE DANGNHAP
(
MANV VARCHAR(10) PRIMARY KEY,
TAIKHOAN VARCHAR(50),
MATKHAU VARCHAR(50),
CONSTRAINT FK_DANGNHAP_MANV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)
)

INSERT INTO DANGNHAP VALUES ('NV1','thanhphuong','thanhphuong')
INSERT INTO DANGNHAP VALUES ('NV2','thienhuong','thienhuong')
INSERT INTO DANGNHAP VALUES ('NV3','trungquan','trungquan')
INSERT INTO DANGNHAP VALUES ('NV4','tranthanh','tranthanh')
INSERT INTO DANGNHAP VALUES ('NV5','nthanhphuong','nthanhphuong')
INSERT INTO DANGNHAP VALUES ('NV6','thanhnhan','thanhnhan')
INSERT INTO DANGNHAP VALUES ('NV7','ducminh','ducminh')
INSERT INTO DANGNHAP VALUES ('NV8','trungkien','trungkien')
INSERT INTO DANGNHAP VALUES ('NV9','ducquoc','ducquoc')
INSERT INTO DANGNHAP VALUES ('NV10','maitinh','maitinh')
INSERT INTO DANGNHAP VALUES ('NV11','nguyenha','nguyenha')
INSERT INTO DANGNHAP VALUES ('NV12','thientruc','thientruc')
INSERT INTO DANGNHAP VALUES ('NV13','conghai','conghai')
INSERT INTO DANGNHAP VALUES ('NV14','tranvien','tranvien')
INSERT INTO DANGNHAP VALUES ('NV15','thanhtruc','thanhtruc')
INSERT INTO DANGNHAP VALUES ('NV16','anhtin','anhtin')
       
CREATE TABLE KHACHHANG
(
	MAKH VARCHAR(10) PRIMARY KEY ,
	HOTEN NVARCHAR(40) ,
	DIACHI NVARCHAR(40) ,
	NGSINH SMALLDATETIME , 
	GIOITINH NVARCHAR(4) check (GIOITINH IN (N'Nam',N'Nữ')),
	SODT VARCHAR(20) 
)


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
MAKH VARCHAR(10) PRIMARY KEY,
LOAIKH NVARCHAR(10),
NGDK SMALLDATETIME
CONSTRAINT FK_KHTT_MAKH FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
)

INSERT INTO KHACHHANGTHANTHIET VALUES
('KH1','Đồng','22/07/2006'),
('KH2','Đồng','30/07/2006'),
('KH3','Đồng','05/08/2006'),
('KH4','Đồng','02/10/2006'),
('KH5','Đồng','28/10/2006')



CREATE TABLE HANGHOA
(
	MAHH VARCHAR(10) PRIMARY KEY ,
	TENSP NVARCHAR(100) ,
	DVT NVARCHAR(10), 
	SOLUONG INT ,
	GIA MONEY ,
	NUOCSX NVARCHAR(50),
	LOAISANPHAM NVARCHAR(50) ,
	TINHTRANG NVARCHAR(10) 
)

DROP TABLE 
INSERT INTO HANGHOA VALUES ('SP01',N'Bút Bi ',N'Cây','100',5000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP02',N'Bánh Mì  ',N'Cái','10',10000,N'Thái Lan',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP03',N'Bánh Solima ',N'Hộp','10',50000,'Singapore ',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP04',N'Coca Cola ','Chai','10',10000,'USA ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP05',N'Kem Merino',N'Hộp','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP06',N'Cà Phê Latte  ',N'Hộp','10',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP07',N'Tập 200 trang','Quyển','10',10000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP08',N'Thước Kẻ ',N'Cái','10',8000,N'Nhật Bản',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP09',N'Sữa Bò Long Thành ','Chai','10',50000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP10',N'Sữa tươi đóng chai ','Chai','10',50000,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP11',N'Bút Bi Sola',N'Hộp','10',30000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP12',N'Sữa Milo ',N'Hộp','10',10000,N'Thái Lan',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP13',N'Cơm Chiên ',N'Hộp','100',20000,'Singapore ',N'Đồ Ăn Nhanh',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP14',N'Cà Rốt ','kg','1000',8000,'USA ',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP15',N'Tương ớt Cholimex','Chai','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP16',N'Trứng gà  ',N'Hộp','100',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP17',N'Tập 100 trang',N'Quyển','100',10000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP18',N'Bánh Slide vị BBQ ',N'Hộp','100',8000,N'Nhật Bản',N'Đồ Ăn Nhanh',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP19',N'Rượu Italy ','Chai','10',2000000,'Italy ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP20',N'Sữa chua Yakuun ','Chai','100',10000,N'Nhật Bản',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP21',N'Bút chì ',N'Cây','10',5000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP22',N'Nước Lau nhà Q  ','Chai','10',60000,N'Thái Lan',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP23',N'Nhân Sâm ',N'Hộp','10',50000,'Singapore ',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP24',N'Pepsi ','Chai','10',10000,'USA ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP25',N'Bánh xốp kem',N'Hộp','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP26',N'Cà Phê Capuchino   ',N'Hộp','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP27',N'Tập 96 trang',N'Quyển','10',10000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP28',N'Eraser gummy ',N'Cái','10',8000,N'Nhật Bản',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP29',N'Chổi quét nhà ',N'Cái','10',50000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP30',N'Laptop Acer ',N'Chiếc','100',18000000,N'Việt Nam',N'Điện Tử',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP31',N'Laptop Asus ',N'Chiếc','100',20000000,N'Thái Lan',N'Điện Tử',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP32',N'Laptop Dell  ',N'Chiếc','100',23000000,N'Nhật Bản',N'Điện Tử',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP33',N'Laptop HP ',N'Chiếc','10',15000000,N'Việt Nam',N'Điện Tử',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP34',N'Điện thoại LG ',N'Chiếc','10',2000000,N'Trung Quốc ',N'Điện Tử',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP35',N'Điện Thoại Oppo',N'Chiếc','10',2800000,N'Trung Quốc ',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP36',N'Bánh gấu Koala  ',N'Hộp','100',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP37',N'Tập 200 Campus',N'Quyển','10',15000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP38',N'Đất sét Haya ',N'Hộp','10',40000,N'Nhật Bản',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP39',N'Rượu chuối hột ','Chai','10',50000,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP40',N'Rượu vang đỏ ','Chai','10',500000,'USA ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP41',N'Giấy Pulpy',N'Hộp','10',50000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP42',N'Giấy Baby Johnson ',N'Hộp','10',100000,'USA ',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP43',N'Thùng rác  ',N'Cái','100',50000,'Singapore ',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP44',N'Chanh ','kg','1000',8000,'USA ',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP45',N'Tương ớt Chinsu','Chai','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP46',N'Trứng vịt  ',N'Hộp','100',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP47',N'Tập 100 trang Campus','Quyển','100',13000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP48',N'Bánh Slide vị Cheese ',N'Hộp','100',34000,N'Nhật Bản',N'Đồ Ăn Nhanh',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP49',N'Rượu X.O ','Chai','10',2000000,'Italy ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP50',N'Sữa chua Vinamilk ',N'Hộp','100',10000,N'Nhật Bản',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP51',N'Thanh Long ','kg','100',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP52',N'Chổi lông gà ',N'Cái','10',10000,N'Thái Lan',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP53',N'Yến Khánh Hòa ',N'Hộp','10',50000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP54',N'7 Up ','Chai','10',8000,'USA ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP55',N'Bánh Trứng',N'Hộp','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP56',N'Cà Phê Espresso  ',N'Hộp','10',20000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP57',N'Nhật kí',N'Quyển','10',10000,N'Việt Nam',N'Đồ Dùng',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP58',N'Lịch ',N'Cái','10',8000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP59',N'Đồng hồ báo thức',N'Cái','10',50000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP60',N'Nước lọc ','Chai','100',10000,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP61',N'Bút Máy ',N'Cây','100',20000,N'Việt Nam',N'Đồ Dùng',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP62',N'Trà sữa Ô Long  ','Chai','10',10000,N'Thái Lan',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP63',N'Trà sữa Latte ','Chai','10',50000,'Singapore ',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP64',N'Nước ép táo Fuji ','Chai','10',10000,N'Nhật Bản',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP65',N'Sữa Vinamilk',N'Hộp','10',40000,N'Việt Nam',N'Thực Phẩm',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP66',N'Nước tăng lực Redbull','Chai','10',20000,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP67',N'StrongBow','Chai','10',10000,N'Thái Lan',N'Đồ Uống',N'Hết Hàng')
INSERT INTO HANGHOA VALUES ('SP68',N'Sữa tươi tiệt trùng Vinamilk 100% Tách béo không đường - hộp 180ml',N'Lốc','100',30.800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP69',N'Sữa tươi tiệt trùng Vinamilk 100% Tách béo có đường - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP70',N'Sữa tươi tiệt trùng Vinamilk 100% Chocolate - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP71',N'Sữa tươi tiệt trùng Vinamilk 100% Chocolate - 4 hộp 110ml',N'Lốc','100',19536,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP72',N'Sữa tươi tiệt trùng Vinamilk 100% Organic không đường - 4 hộp 180ml',N'Lốc','100',40480,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP73',N'Sữa tươi tiệt trùng Vinamilk 100% Organic không đường - hộp 1L',N'Hộp','100',48930,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP74',N'Sữa tươi tiệt trùng Vinamilk 100% Không đường - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP75',N'Sữa tươi tiệt trùng Vinamilk 100% Không đường - hộp giấy 1L',N'Hộp','100',28933,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP76',N'Sữa tươi tiệt trùng Vinamilk 100% Ít đường - 4 hộp 110ml',N'Lốc','100',19536,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP77',N'Sữa tươi tiệt trùng Vinamilk 100% Ít đường - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP78',N'Sữa tươi tiệt trùng Vinamilk 100% Ít đường - Hộp giấy 1L',N'Hộp','100',28933,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP79',N'Sữa tươi tiệt trùng Vinamilk 100% Hương dâu - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP80',N'Sữa tươi tiệt trùng Vinamilk 100% Hương dâu - 4 hộp 110ml',N'Lốc','100',19536,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP81',N'Sữa tươi tiệt trùng Vinamilk 100% Có đường - 4 hộp 180ml',N'Lốc','100',30800,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP82',N'Sữa tươi tiệt trùng Vinamilk 100% Có đường - 4 hộp 110ml',N'Lốc','100',19536,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP83',N'Sữa tươi tiệt trùng Vinamilk 100% Có đường - Hộp giấy 1L',N'Hộp','100',28933,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP84',N'Sữa tươi nguyên chất tiệt trùng Vinamilk 100% A2 - Hộp giấy 1L',N'Hộp','100',42075,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP85',N'Sữa dinh dưỡng Vinamilk ADM Gold Hương dâu - Lốc 4 hộp x 110ml',N'Lốc','100',17028,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP86',N'Sữa dinh dưỡng Vinamilk ADM Gold Hương dâu - Lốc 4 hộp x 180ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP87',N'Sữa dinh dưỡng Vinamilk ADM Gold Hương Chocolate - Lốc 4 hộp x 110ml',N'Lốc','100',17028,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP88',N'Sữa dinh dưỡng Vinamilk ADM Gold Hương Chocolate - Lốc 4 hộp x 180ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP89',N'Sữa dinh dưỡng Vinamilk ADM Gold Có đường - Lốc 4 hộp x 180ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP90',N'Sữa tiệt trùng Flex không Lactose - Lốc 4 hộp x 180ml',N'Lốc','100',28644,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP91',N'Sữa tiệt trùng Flex không đường - Hộp giấy 1L',N'Hộp','100',30371,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP92',N'Sữa Cacao Lúa mạch Super SuSu - Lốc 4 hộp x 180ml',N'Lốc','100',26576,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP93',N'Sữa Cacao Lúa mạch Super SuSu - Lốc 4 hộp x 110ml',N'Lốc','100',16852,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP94',N'Sữa Cacao Lúa mạch Super SuSu - Lốc 4 chai màng nhôm x 80ml',N'Lốc','100',16412,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP95',N'Sữa dinh dưỡng Vinamilk Hương dâu - Bịch 220ml',N'Bịch','100',6567,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP96',N'Sữa dinh dưỡng Vinamilk Hương chocolate - Bịch 220ml',N'Bịch','100',6567,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP97',N'Sữa dinh dưỡng Vinamilk Có đường - Bịch 220ml',N'Bịch','100',6567,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP98',N'Sữa dinh dưỡng Vinamilk Không đường - Bịch 220ml',N'Bịch','100',6567,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP99',N'Sữa tươi thanh trùng Vinamilk 100% Có đường - Hộp 200ml',N'Hộp','100',8679,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP100',N'Sữa tươi thanh trùng Vinamilk 100% Có đường - Hộp 900ml',N'Hộp','100',35739,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP101',N'Sữa tươi thanh trùng Vinamilk 100% Không đường - Hộp 900ml',N'Hộp','100',35739,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP102',N'Sữa tươi thanh trùng Vinamilk 100% Không đường - Hộp 200ml',N'Hộp','100',8679,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP103',N'Sữa Cacao Lúa mạch Super SuSu - Lốc 6 chai màng nhôm x 80ml',N'Lốc','100',24618,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP104',N'Sữa tươi tiệt trùng Vinamilk 100% Ít đường - Hộp giấy 1L',N'Hộp','100',28933,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP105',N'Sữa dinh dưỡng Vinamilk Ít đường - Bịch 220ml',N'Bịch','100',6567,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP106',N'Sữa dinh dưỡng Vinamilk ADM Gold Chuối - Lốc 4 hộp x 150ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP107',N'Thùng 12 hộp Sữa tươi tiệt trùng Vinamilk 100% Ít Đường 1L',N'Thùng','100',377388,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP108',N'Thức uống năng lượng Vinamilk Power Hương Chocolate - Chai 300ml',N'Chai','100',10296,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP109',N'Thức uống năng lượng Vinamilk Power Hương Cam Đào - Chai 300ml',N'Chai','100',10296,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP110',N'Thức uống năng lượng Vinamilk Power Hương Chocolate - Lốc 4 hộp x 180ml',N'Lốc','100',29612,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP111',N'Sữa tươi tiệt trùng Vinamilk 100% Organic không đường - Hộp giấy 1L',N'Hộp','100',53185,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP112',N'Sữa dinh dưỡng Vinamilk ADM Gold Chuối - Lốc 4 hộp x 110ml',N'Lốc','100',17028,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP113',N'Sữa dinh dưỡng Vinamilk ADM Gold Có đường - Lốc 4 hộp x 110ml',N'Lốc','100',17028,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP114',N'Thùng 12 hộp Sữa tươi tiệt trùng Vinamilk 100% Có đường 1L',N'Thùng','100',377388,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP115',N'Thùng 48 hộp Sữa dinh dưỡng ADM Gold Chuối 110ml',N'Thùng','100',204336,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP116',N'Thùng 12 hộp Sữa tươi tiệt trùng Vinamilk 100% Không đường 1L',N'Thùng','100',377388,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP117',N'Sữa dinh dưỡng Vinamilk Happy Star Có đường - Bịch 220ml',N'Bịch','100',5918,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP118',N'Thùng 12 hộp Sữa dinh dưỡng Vinamilk ADM Gold Có đường 180ml',N'Thùng','100',322080,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP119',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Có đường 110ml',N'Thùng','100',234432,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP120',N'Thùng 48 hộp Sữa dinh dưỡng Vinamilk ADM Gold Hương dâu 180ml',N'Thùng','100',322080,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP121',N'Thức uống năng lượng Vinamilk Power Hương Cam Đào - Lốc 4 hộp x 180ml',N'Lốc','100',29612,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP122',N'Thức uống năng lượng Vinamilk My Joy Hương Cam Đào - Lốc 4 hộp x 180ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP123',N'Thức uống năng lượng Vinamilk My Joy Hương Chocolate - Lốc 4 hộp x 180ml',N'Lốc','100',26840,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP124',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Chocolate 180ml',N'Thùng','100',369600,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP125',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Ít Đường 180ml',N'Thùng','100',369600,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP126',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Hương Dâu 180ml',N'Thùng','100',369600,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP127',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Không Đường 180ml',N'Thùng','100',369600,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP128',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Ít Đường 110ml',N'Thùng','100',234432,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP129',N'Thùng 48 bịch Sữa dinh dưỡng Vinamilk 100% Chocolate 220ml',N'Thùng','100',315216,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP130',N'Thùng 48 bịch Sữa dinh dưỡng Vinamilk 100% Không Đường 220ml',N'Thùng','100',315216,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP131',N'Thùng 48 bịch Sữa dinh dưỡng Vinamilk 100% Hương Dâu 220ml',N'Thùng','100',315216,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP132',N'Thùng 48 bịch Sữa dinh dưỡng Vinamilk 100% Có Đường 220ml',N'Thùng','100',315216,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP133',N'Thùng 48 hộp thức uống năng lượng Vinamilk Power Chocolate 180ml',N'Thùng','100',355344,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP134',N'Thùng 48 hộp thức uống năng lượng Vinamilk Power Hương Cam Đào 180ml',N'Thùng','100',355344,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP135',N'Thùng 24 chai thức uống năng lượng Vinamilk Power Chocolate 300ml',N'Thùng','100',247104,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP136',N'Thùng 24 chai thức uống năng lượng Vinamilk Power Hương Cam Đào 300ml',N'Thùng','100',247104,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP137',N'Thùng 12 lốc sữa tươi tiệt trùng 180ml Vinamilk 100% Organic không đường',N'Thùng','100',528000,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP138',N'Thùng 24 chai sữa dinh dưỡng ADM Gold Chuối 150ml',N'Thùng','100',161040,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP139',N'Thức uống năng lượng Vinamilk My Joy Chocolate - Chai 300ml',N'Chai','100',10296,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP140',N'Thùng 24 chai thức uống năng lượng Vinamilk My Joy Chocolate 300ml',N'Thùng','100',247104,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP141',N'Thùng 12 hộp sữa tươi tiệt trùng 1L Vinamilk 100% Organic không đường',N'Thùng','100',638220,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP142',N'Thùng 48 hộp Sữa tươi tiệt trùng Vinamilk 100% Có Đường 180ml',N'Thùng','100',369600,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP143',N'Thùng 48 hộp dinh dưỡng Vinamilk ADM Gold Chocolate 180ml',N'Thùng','100',322080,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')
INSERT INTO HANGHOA VALUES ('SP144',N'Thùng 48 bịch Sữa dinh dưỡng Vinamilk Ít Đường 220ml',N'Thùng','100',315216,N'Việt Nam',N'Đồ Uống',N'Còn Hàng')




CREATE TABLE NHACUNGCAP
(
MANCC VARCHAR(10) PRIMARY KEY,
TENNCC NVARCHAR(100),
)


INSERT INTO NHACUNGCAP VALUES
('NCC1',N'Chợ đầu mối Kim Biên'),
('NCC2',N'Nhà phân phối Unilever'),
('NCC3',N'Nhà phân phối Phú Thái(P&G)'),
('NCC4',N'Công ty TNHH Nước giải khát SUNTORY PEPSICO Việt Nam'),
--pepsi,coca,7up,revive,mirinda,tropicana,sting,aquafina,lipton
('NCC5',N'Công ty cổ phần Bia - Rượu - Nước giải khát Hà Nội HABECO'),
('NCC6',N'Công ty TNHH Lavie'),
('NCC7',N'Tập đoàn Tân Hiệp Phát'),
--numb1,tra xanh 0 do,dr thanh,tr
('NCC8',N'Công ty TNHH Red Bull'),
('NCC9',N'Công ty Cổ phần Sữa Việt Nam Vinamilk'),
('NCC10',N'Công ty Unilever')


CREATE TABLE QUAYHANG
(
MAQUAY VARCHAR(10) PRIMARY KEY,
TENQUAY NVARCHAR(50),
)

INSERT INTO QUAYHANG VALUES('QUAY1','Quầy Đồ Uống')
INSERT INTO QUAYHANG VALUES('QUAY2','Quầy Thực Phẩm')
INSERT INTO QUAYHANG VALUES('QUAY3','Quầy Đồ Dùng')
INSERT INTO QUAYHANG VALUES('QUAY4','Quầy Điện Tử')


CREATE TABLE CTQUAYHANG
(
MAQUAY VARCHAR(10),
MAHH VARCHAR(10),
SOLUONG INT,
CONSTRAINT PK_CTQUAYHANG PRIMARY KEY(MAQUAY,MAHH),
CONSTRAINT FK_CTQUAYHANG_MAHH FOREIGN KEY(MAHH) REFERENCES HANGHOA(MAHH)
)


INSERT INTO CTQUAYHANG VALUES('QUAY1','SP04',100)
INSERT INTO CTQUAYHANG VALUES('QUAY1','SP10',100)
INSERT INTO CTQUAYHANG VALUES('QUAY2','SP02',100)
INSERT INTO CTQUAYHANG VALUES('QUAY2','SP03',100)
INSERT INTO CTQUAYHANG VALUES('QUAY2','SP05',100)
INSERT INTO CTQUAYHANG VALUES('QUAY3','SP01',100)
INSERT INTO CTQUAYHANG VALUES('QUAY3','SP07',100)
INSERT INTO CTQUAYHANG VALUES('QUAY3','SP08',100)



CREATE TABLE KHOHANG
(
MAKHO VARCHAR(10) PRIMARY KEY,
TENKHO NVARCHAR(100),
DIACHI NVARCHAR(100)
)

INSERT INTO KHOHANG VALUES('KHO1',N'Nhà Kho Số 1',N'92 Nam Kỳ Khởi Nghĩa, P. Bến Nghé, Quận 1, TP. HCM')
INSERT INTO KHOHANG VALUES('KHO2',N'Nhà Kho Số 2',N'40 Đồng Nai, P. 15, Quận 10, TP. HCM')
INSERT INTO KHOHANG VALUES('KHO3',N'Nhà Kho Số 3',N'145 Chấn Hưng, P. 6, Quận Tân Bình, TP. HCM')
INSERT INTO KHOHANG VALUES('KHO4',N'Nhà Kho Số 4',N'336 Tôn Đản, P. 4, Quận 4, TP. HCM')
INSERT INTO KHOHANG VALUES('KHO5',N'Nhà Kho Số 5',N'447 Huỳnh Văn Bánh, P. 13, Quận Phú Nhuận, TP. HCM')



CREATE TABLE NHAPKHO
(
MANK VARCHAR(10) PRIMARY KEY,
MAKHO VARCHAR(10),
MANV VARCHAR(10),
NGAYNHAP SMALLDATETIME,
TONGGIATRI MONEY,
CONSTRAINT FK_NHAPKHO_MAKHO FOREIGN KEY (MAKHO) REFERENCES KHOHANG(MAKHO),
CONSTRAINT FK_NHAPKHO_MANV FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
)


INSERT INTO NHAPKHO VALUES('NK1','KHO1','NV12','1/1/2018',10000000)
INSERT INTO NHAPKHO VALUES('NK2','KHO1','NV12','8/1/2018',20000000)
INSERT INTO NHAPKHO VALUES('NK3','KHO1','NV12','15/1/2018',15000000)

INSERT INTO NHAPKHO VALUES('NK4','KHO2','NV17','1/1/2018',10000000)
INSERT INTO NHAPKHO VALUES('NK5','KHO2','NV17','8/1/2018',10000000)
INSERT INTO NHAPKHO VALUES('NK6','KHO2','NV17','15/1/2018',10000000)




CREATE TABLE CTNHAPKHO
(
MANK VARCHAR(10),
MAHH VARCHAR(10) ,
MANCC VARCHAR(10),
SOLUONG INT,
DONGIA MONEY,
CONSTRAINT PK_CTNHAPKHO PRIMARY KEY(MANK,MAHH),
CONSTRAINT FK_CTNHAPKHO_MANCC FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC),
CONSTRAINT FK_CTNHAPKHO_MANHKHO FOREIGN KEY(MANK) REFERENCES NHAPKHO(MANK),
CONSTRAINT FK_CTNHAPKHO_MAHH FOREIGN KEY(MAHH) REFERENCES HANGHOA(MAHH)
)

INSERT INTO CTNHAPKHO VALUES('NK1','SP69','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK1','SP70','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK1','SP71','NCC9',100,19000)

INSERT INTO CTNHAPKHO VALUES('NK2','SP69','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK2','SP70','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK2','SP71','NCC9',100,19000)

INSERT INTO CTNHAPKHO VALUES('NK3','SP69','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK3','SP70','NCC9',100,30000)
INSERT INTO CTNHAPKHO VALUES('NK3','SP71','NCC9',100,19000)


CREATE TABLE XUATKHO
(
MAXK VARCHAR(10) PRIMARY KEY,
MAKHO VARCHAR(10),
MANV VARCHAR(10),
NGAYXK SMALLDATETIME,
CONSTRAINT FK_XUATKHO_MAKHO FOREIGN KEY (MAKHO) REFERENCES KHOHANG(MAKHO),
CONSTRAINT FK_XUATKHO_MANV FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
)

INSERT INTO XUATKHO VALUES('XK1','KHO1','NV12','2/1/2018')
INSERT INTO XUATKHO VALUES('XK2','KHO1','NV12','9/1/2018')
INSERT INTO XUATKHO VALUES('XK3','KHO1','NV12','16/1/2018')

INSERT INTO XUATKHO VALUES('XK4','KHO2','NV17','2/1/2018')
INSERT INTO XUATKHO VALUES('XK5','KHO2','NV17','9/1/2018')
INSERT INTO XUATKHO VALUES('XK6','KHO2','NV17','16/1/2018')




CREATE TABLE CTXUATKHO
(
MAXK VARCHAR(10),
MAHH VARCHAR(10),
SOLUONG INT,
MAQUAY VARCHAR(10),
CONSTRAINT PK_CTXUATKHO PRIMARY KEY(MAXK,MAHH),
CONSTRAINT FK_CTXUATKHO_MANHKHO FOREIGN KEY(MAXK) REFERENCES XUATKHO(MAXK),
CONSTRAINT FK_CTXUATKHO_MAHH FOREIGN KEY(MAHH) REFERENCES HANGHOA(MAHH),
CONSTRAINT FK_CTXUATKHO_MAQUAY FOREIGN KEY(MAQUAY) REFERENCES QUAYHANG(MAQUAY)
)

INSERT INTO CTXUATKHO VALUES('XK1','SP69',100,'QUAY1')
INSERT INTO CTXUATKHO VALUES('XK1','SP70',100,'QUAY2')
INSERT INTO CTXUATKHO VALUES('XK1','SP71',100,'QUAY1')

INSERT INTO CTXUATKHO VALUES('XK2','SP69',100,'QUAY1')
INSERT INTO CTXUATKHO VALUES('XK2','SP70',100,'QUAY3')
INSERT INTO CTXUATKHO VALUES('XK2','SP71',100,'QUAY4')

INSERT INTO CTXUATKHO VALUES('XK3','SP69',100,'QUAY6')
INSERT INTO CTXUATKHO VALUES('XK3','SP70',100,'QUAY5')
INSERT INTO CTXUATKHO VALUES('XK3','SP71',100,'QUAY8')





CREATE TABLE QUAYTN
(
MAQTN VARCHAR(10) PRIMARY KEY,
TENQTN VARCHAR(50),
MANV VARCHAR(10),
)

INSERT INTO QUAYTN VALUES('QTN1','Quầy thu ngân 1','NV1')
INSERT INTO QUAYTN VALUES('QTN2','Quầy thu ngân 2','NV2')
INSERT INTO QUAYTN VALUES('QTN3','Quầy thu ngân 3','NV3')
INSERT INTO QUAYTN VALUES('QTN4','Quầy thu ngân 4','NV4')

INSERT INTO QUAYTN VALUES('QTN5','Quầy thu ngân 5','NV5')
INSERT INTO QUAYTN VALUES('QTN6','Quầy thu ngân 6','NV6')
INSERT INTO QUAYTN VALUES('QTN7','Quầy thu ngân 7','NV8')
INSERT INTO QUAYTN VALUES('QTN8','Quầy thu ngân 8','NV9')



CREATE TABLE HOADON
(
SOHD VARCHAR(10) PRIMARY KEY,
NGAYHD DATE,
GIOHD TIME,
MAKH VARCHAR(10),
MAQTN VARCHAR(10),
TRIGIA MONEY,
CONSTRAINT FK_HOADON_MAKH FOREIGN KEY(MAKH) REFERENCES KHACHHANG(MAKH),
CONSTRAINT FK_HOADON_MAQTN FOREIGN KEY(MAQTN) REFERENCES QUAYTN(MAQTN),
)

INSERT INTO HOADON VALUES('HD1','3/4/2018','14:00','KH1','QTN1',500000)
INSERT INTO HOADON VALUES('HD2','3/4/2018','9:41','KH2','QTN2',700000)
INSERT INTO HOADON VALUES('HD3','4/4/2018','15:43','KH3','QTN2',800000)
INSERT INTO HOADON VALUES('HD4','4/4/2018','13:00','KH4','QTN3',900000)


CREATE TABLE CTHD
(
SOHD VARCHAR(10),
MAHH VARCHAR(10),
SOLUONG INT
CONSTRAINT PK_CTHD PRIMARY KEY(SOHD,MAHH),
CONSTRAINT FK_CTHD_SOHD FOREIGN KEY(SOHD) REFERENCES HOADON(SOHD),
CONSTRAINT FK_CTHD_MAHH FOREIGN KEY(MAHH) REFERENCES HANGHOA(MAHH)
)
INSERT INTO CTHD VALUES('HD1','SP1',4)
INSERT INTO CTHD VALUES('HD1','SP69',3)
INSERT INTO CTHD VALUES('HD1','SP70',4)
INSERT INTO CTHD VALUES('HD1','SP71',3)

INSERT INTO CTHD VALUES('HD2','SP69',3)
INSERT INTO CTHD VALUES('HD2','SP70',3)
INSERT INTO CTHD VALUES('HD2','SP71',3)

INSERT INTO CTHD VALUES('HD3','SP32',3)
INSERT INTO CTHD VALUES('HD3','SP13',3)
INSERT INTO CTHD VALUES('HD3','SP23',3)




select * from HANGHOA