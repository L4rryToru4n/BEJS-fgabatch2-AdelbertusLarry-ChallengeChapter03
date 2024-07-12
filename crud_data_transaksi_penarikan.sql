insert into transaksi_penarikan(
	id,
	kode_transaksi,
	waktu_transaksi,
	jenis_transaksi,
	jumlah,
	deskripsi,
	id_akun
) values 
(1, 'W-15824', '2024-05-08 09:24:17+08', 'Penarikan', 100.000, 'Penarikan Konvensional', 1),
(2, 'W-18124', '2023-08-01 12:47:34+08', 'Penarikan', 50.000, 'Penarikan Konvensional', 2),
(3, 'W-161724', '2022-06-17 14:03:28+08', 'Penarikan', 30.000, 'Penarikan Konvensional', 3);


-- Data transaksi lampau
insert into transaksi_penarikan(
	id,
	kode_transaksi,
	waktu_transaksi,
	jenis_transaksi,
	jumlah,
	deskripsi,
	id_akun
) values 
(4, 'W-291320', '2020-09-13 14:03:28+08', 'Penarikan', 1000.000, 'Penarikan Khusus', 6);

-- Penutupan akun, penghapusan transaksi
delete from transaksi_penarikan where transaksi_penarikan.id = 4 and transaksi_penarikan.id_akun = 6;

select * from transaksi_penarikan limit 10;