/*
* Nama : Ade Irawan
* Kelas : TI 17 D2
* NIM : 311710050
*/

-- Praktikum 2

use latihan1;
alter table data_mahasiswa add kode_pos varchar(10) after kota;
alter table data_mahasiswa add jeniskelamin varchar(10) after hp;
alter table data_mahasiswa add ( tanggallahir date, kode_dosen varchar(10));
insert into mahasiswa (nim, nama, kota, jeniskelamin, tanggallahir) 
value 
('11223344', 'ari santoso', 'bekasi', 'laki-laki', '1998-10-12'),
('11223345', 'ario talib', 'cikarang', 'laki-laki', '1999-11-16'),
('11223346', 'dina marlina', 'karawang', 'perempuan', '1997-12-01'),
('11223347', 'lisa ayu', 'bekasi', 'perempuan', '1996-01-02'),
('11223348', 'tiara wahidah', 'bekasi', 'perempuan', '1980-02-05'),
('11223349', 'anton sinaga', 'cikarang', 'laki-laki', '1988-02-10');
select*from data_mahasiswa;
update data_mahasiswa set tanggallahir = "1979-08-31" where nama = "ari santoso";
select*from data_mahasiswa where nama = "ari santoso";
delete from data_mahasiswa where nama = "Dina Marliana";
select*from data_mahasiswa where tanggallahir >= "1996-01-02";
select*from data_mahasiswa where kota = "bekasi" and jeniskelamin = "perempuan";
select*from data_mahasiswa where kota = "bekasi" and jeniskelamin = "laki-laki"
OR tanggallahir<'1997-08-02' and jeniskelamin = "perempuan";
select*from data_mahasiswa order by nama asc;
