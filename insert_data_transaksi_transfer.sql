insert into transaksi_transfer(
	id,
	kode_transaksi,
	waktu_transaksi,
	jenis_transaksi,
	jumlah,
	deskripsi,
	id_akun,
	id_akun_tujuan 
) values 
(1, 'T-152724', '2024-06-23 13:57:19+08', 'Transfer', 300.000, 'Pembelian XS02', 1, 5),
(2, 'T-181824', '2023-09-13 10:23:01+08', 'Transfer', 50.000, 'Tagihan E-091323', 2, 4);