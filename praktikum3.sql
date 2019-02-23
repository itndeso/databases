/*
* Nama : Ade Irawan
* Kelas : TI 17 D2
* NIM : 311710050
*/

-- Praktikum 3

create database kantor;
use kantor;
create table pegawai (idpegawai varchar(4), namadepan varchar(13), namabelakang varchar(15), 
email varchar(16), telepon varchar(12), tglkontrak varchar(15), idjob varchar(7),
gaji int(8), tunjangan int(8) );
desc pegawai;
insert into pegawai (idpegawai, namadepan, namabelakang, email, telepon, tglkontrak, idjob, gaji, tunjangan) 
value ('E001', 'ferry', 'gustiawan', 'ferry@yahoo.com', '07117059004', '2005-09-01', 'L0001', '2000000', '500000'),
('E002', 'aris', 'ganiardi', 'aris@yahoo.com', '081312345678', '2006-09-01', 'L0002', '2000000', '200000'),
('E003', 'faiz', 'ahmad', 'faiz@yahoo.com', '081367384322', '2006-10-01', 'L0003', '1500000', null),
('E004', 'emma', 'bunton', 'emma@gmail.com', '081363484342', '2006-10-01', 'L0004', '1500000', '0'),
('E005', 'mike', 'scoff', 'mike@plasa.com', '08163454555', '2007-09-01', 'L0005', '1250000', '0'),
('E006', 'lincoln', 'burrows', 'linc@yahoo.com', '08527388432', '2008-09-01', 'L0006', '1750000', null);
select*from pegawai;
select*from pegawai where gaji <> 2000000 and gaji <>1250000;
select*from pegawai where tunjangan is null;
select*from pegawai where tunjangan is not null;
select count(idpegawai) from pegawai;
select sum(gaji) from pegawai;
select avg(gaji) from pegawai;
select min(gaji) from pegawai;
select max(gaji) from pegawai;