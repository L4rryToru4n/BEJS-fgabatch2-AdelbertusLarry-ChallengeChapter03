--https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-foreign-key/

drop table if exists nasabah;
drop table if exists akun;
drop table if exists transaksi_penarikan;
drop table if exists transaksi_deposit;
drop table if exists transaksi_transfer;

create table nasabah (
	id bigserial primary key,
	no_ktp varchar(25) not null,
	nama varchar(255) not null,
	tgl_lahir date not null,
	alamat text not null,
	nama_ibu varchar(255) not null
);

create table akun (
	id bigserial primary key,
	tipe varchar(25) not null,
	tgl_pembuatan date not null,
	saldo real,
	jenis_tabungan varchar(25) not null,
	kantor_cabang text not null,
	id_nasabah bigserial,
	constraint fk_nasabah
		foreign key(id_nasabah)
			references nasabah(id)
			on delete set null
);

create table transaksi_penarikan (
	id bigserial primary key,
	kode_transaksi varchar(10) not null,
	waktu_transaksi timestamp not null,
	deskripsi text,
	jenis_transaksi varchar(25) not null,
	jumlah real not null,
	id_akun bigserial,
	constraint fk_akun
		foreign key(id_akun)
			references akun(id)
			on delete set null
);

create table transaksi_deposit (
	id bigserial primary key,
	kode_transaksi varchar(10) not null,
	waktu_transaksi timestamp not null,
	deskripsi text,
	jenis_transaksi varchar(25) not null,
	jumlah real not null,
	id_akun bigserial,
	constraint fk_akun
		foreign key(id_akun)
			references akun(id)
			on delete set null
);

create table transaksi_transfer (
	id bigserial primary key,
	kode_transaksi varchar(10) not null,
	waktu_transaksi timestamp not null,
	deskripsi text,
	jenis_transaksi varchar(25) not null,
	jumlah real not null,
	id_akun_tujuan bigserial,
	id_akun bigserial,
	constraint fk_akun_tujuan
		foreign key(id_akun_tujuan)
			references akun(id)
			on delete set null,

	constraint fk_akun
		foreign key(id_akun)
			references akun(id)
			on delete set null
);

alter table nasabah add column tgl_pembuatan date;
alter table nasabah alter column tgl_pembuatan set not null;
alter table transaksi_penarikan alter column kode_transaksi type varchar(10);
alter table transaksi_deposit alter column kode_transaksi type varchar(10);
alter table transaksi_transfer alter column kode_transaksi type varchar(10);
