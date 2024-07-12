insert into akun(
	id,
	tipe,
	tgl_pembuatan,
	id_nasabah,
	saldo,
	jenis_tabungan,
	kantor_cabang
) values 
(1, 'Gold', '2024-05-03', 1, 2000.000, 'Bisnis', 'KC Binar Utama'),
(2, 'Silver', '2023-07-08', 2, 1500.000, 'Giro','KCP Binar Pionir'),
(3, 'Silver', '2022-06-09', 3, 1000.000, 'Konvensional','KCP Binar Lentera');
(4, 'Gold', '2022-04-03', 4, 100.000, 'Bisnis','KCP Binar Lentera'),
(5, 'Gold', '2023-02-02', 5, 200.000, 'Bisnis','KCP Binar Utama'),
(6, 'Gold', '2021-01-30', 1, 1050.000, 'Bisnis', 'KC Binar Utama');


-- Pembuatan akun lampau
insert into akun(
	id,
	tipe,
	tgl_pembuatan,
	id_nasabah,
	saldo,
	jenis_tabungan,
	kantor_cabang
) values 
(6, 'Gold', '2021-01-30', 1, 1050.000, 'Bisnis', 'KC Binar Utama');

-- Penutupan akun
update akun set
	saldo = 1
where akun.id = 6 and akun.id_nasabah = 1;

delete from akun where akun.id = 6 and akun.id_nasabah = 1;

select * from akun limit 10;