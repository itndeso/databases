/*
* Nama : Ade Irawan
* Kelas : TI 17 D2
* NIM : 311710050
*/

-- Praktikum 1

create database latihan1;
use latihan1;
create table biodata (nama varchar(20) not null,alamat varchar(30) not null);
alter table biodata add keterangan varchar(15) not null;
alter table biodata add id int(11) first;
alter table biodata add phone varchar(15) after alamat;
alter table biodata modify id char(11);
alter table biodata change phone hp varchar(20) not null;
alter table biodata drop keterangan;
rename table biodata to data_mahasiswa;
alter table data_mahasiswa change id nim char(11) not null;
alter table data_mahasiswa add primary key (nim);