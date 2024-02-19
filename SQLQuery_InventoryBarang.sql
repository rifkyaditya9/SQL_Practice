/*Proses Membuat Tabel:
	- Barang
	- Pelanggan
	- Transaksi
*/

CREATE TABLE Barang (
	id_barang INT IDENTITY(1,1) PRIMARY KEY,
	nama_barang VARCHAR(255),
	kategori VARCHAR(255),
	harga FLOAT,
	stok INT
);

CREATE TABLE Pelanggan (
	id_pelanggan INT IDENTITY(1,1) PRIMARY KEY,
	nama_pelanggan VARCHAR(255),
	alamat_pelanggan VARCHAR(255),
	no_telp_pelanggan INT
);

CREATE TABLE Transaksi (
	id_transaksi INT IDENTITY(1,1) PRIMARY KEY,
	tanggal_transaksi DATE,
	jumlah INT,
	id_pelanggan INT FOREIGN KEY REFERENCES Pelanggan(id_pelanggan),
	id_barang INT FOREIGN KEY REFERENCES Barang(id_barang)
);


/*Proses Menambah data ke tabel Barang*/

INSERT INTO Barang (nama_barang, kategori, harga, stok)
VALUES 
('Aqua', 'Minuman', 3000, 1000),
('Sprite', 'Minuman', 5000, 600),
('Oreo', 'Makanan', 8500, 1500),
('Nuvo', 'Perlengkapan Mandi', 15000, 2000),
('Royco', 'Perlengkapan Masak', 10000, 2000);

INSERT INTO Barang (nama_barang, kategori, harga, stok)
VALUES 
('Giv', 'Perlengkapan Mandi', 8000, 1000),
('Indomie Kari Ayam', 'Makanan', 2000, 10000),
('Pop Mie Ayam Bawang', 'Makanan', 5000, 7000),
('Autan Jeruk', 'Perawatan Pribadi', 10000, 1500),
('Indomilk Susu Steril', 'Minuman', 4000, 3000);


/*Proses Menambah data ke tabel Pelanggan*/

INSERT INTO Pelanggan (nama_pelanggan, alamat_pelanggan, no_telp_pelanggan)
VALUES
('Maman', 'Tangerang', 081277733366),
('Putera', 'Bekasi', 081344488899),
('Yanto', 'Karawang', 087722211155),
('Amanda', 'Bogor', 087799944433),
('Emily', 'Jakarta', 071377788822),
('Rizky', 'Jakarta', 081266677734),
('Budi', 'Serang', 085592748275),
('Wulan', 'Tangerang', 081217406729),
('Maya', 'Bandung', 081238591039),
('Agus', 'Jakarta', 0812402683088);


/*Proses Menambah data ke tabel Transaksi*/

INSERT INTO Transaksi (id_pelanggan, id_barang, tanggal_transaksi, jumlah)
VALUES
(6, 1, '2024-01-20', 4),
(6, 3, '2024-01-20', 1),
(8, 7, '2024-01-20', 3),
(7, 10, '2024-01-20', 2),
(5, 4, '2024-01-21', 2),
(10, 6, '2024-01-21', 4),
(9, 6, '2024-01-21', 3),
(11, 8, '2024-01-21', 6),
(7, 3, '2024-01-22', 5),
(2, 1, '2024-01-22', 6);


/*Query untuk menampilkan masing-masing tabel 
beserta isi datanya*/
SELECT * FROM Pelanggan;
SELECT * FROM Barang;
SELECT * FROM Transaksi;
