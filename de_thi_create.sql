-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:51:58.363




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV nvarchar  NOT NULL,
    TenNV nvarchar  NOT NULL,
    NgaySinh date  NOT NULL,
    GioTinh bit  NOT NULL,
    Email varchar  NOT NULL,
    MucLuong nvarchar  NOT NULL,
    TPhongban_MaPhong nvarchar  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong nvarchar  NOT NULL,
    TenPhong nvarchar  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

