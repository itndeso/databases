/*
* Nama : Ade Irawan
* Kelas : TI 17 D2
* NIM : 311710050
*/

-- Praktikum 4

create database sewamobil;
use sewamobil;
create table daftar_mobil (kode varchar(4), jenis varchar(13), merk varchar(15), 
tarif int(12), nopol varchar(9) );
desc daftar_mobil;
insert into daftar_mobil (kode, jenis, merk, tarif, nopol)
value 
('M001', 'SEDAN', 'BMW E5', '500000', 'BG1234AA'),
('M002', 'SEDAN', 'HONDA CRV', '350000', 'BG2345BB'),
('M003', 'BUS', 'MERCEDEZ', '1000000', 'BG3456CC'),
('M004', 'BUS', 'DYNA', '800000', 'BG8443DD'),
('M005', 'TRUCK', 'HYNO ZX', '1500000', 'BG4638EE'),
('M006', 'TRUCK', 'DYNA X1', '1500000', 'BG8473FF');
select*from daftar_mobil;
create table pelanggan (kode varchar(4), nama varchar(13), kontak varchar(15), 
alamat varchar(20), kota varchar(12), kodepos int(5), telepon varchar(12) );
desc pelanggan;
insert into pelanggan (kode, nama, kontak, alamat, kota, kodepos, telepon)
value 
('P001', 'PT FOX RIVER', 'HENDRA', 'JL. JEND. SUDIRMAN 657', 'BENGKULU', '30245', '1234567'),
('P002', 'CV FOXCON', 'IWAN', 'JL. WAHID HASYIM 743', 'JAKARTA', '73429', '234567'),
('P003', 'PT FARMACOM', 'YANI', 'JL. AHMAD DAHLAN 45', 'LAMPUNG', '28349', '3334445');
select*from pelanggan;
create table sewa (nofaktursewa varchar(4), kodepelanggan varchar(4), tglsewa varchar(11), kodemobil varchar(4), lamasewa int(2), uangmuka int(9) );
desc sewa;
insert into sewa(nofaktursewa, kodepelanggan, tglsewa, kodemobil, lamasewa, uangmuka)
value
('F001', 'P001', '2008-12-01', 'M001', '2', '200000'),
('F001', 'P001', '2008-12-01', 'M003', '2', '200000'),
('F002', 'P002', '2008-12-02', 'M002', '1', '100000');
select*from sewa;
select kode, jenis, merk, nofaktursewa, tglsewa, lamasewa from daftar_mobil
left join sewa on kode=kodemobil;
select s.nofaktursewa, pelanggan.nama, s.tglsewa, dm.jenis, dm.merk, s.lamasewa, s.uangmuka from sewa s
left join daftar_mobil dm on dm.kode=s.kodemobil
left join pelanggan on pelanggan.kode=s.kodepelanggan;
select pl.nama, pl.kota, s.nofaktursewa, s.tglsewa, s.kodemobil, s.lamasewa, s.uangmuka from pelanggan pl
left join sewa s on s.kodepelanggan=pl.kode;

