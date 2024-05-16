-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2024 at 03:20 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apoteku`
--

-- --------------------------------------------------------

--
-- Table structure for table `apoteker`
--

CREATE TABLE `apoteker` (
  `id` int(11) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `jabatan` varchar(111) NOT NULL,
  `gambar` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apoteker`
--

INSERT INTO `apoteker` (`id`, `nama`, `jabatan`, `gambar`) VALUES
(1, 'Tri Putera', 'Apoteker Muda', 'uploads/put.jpg'),
(2, 'Kurnia', 'Apoteker Madya', 'uploads/kur.jpg'),
(3, 'Meinita', 'Apoteker  Utama', 'uploads/mei.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cabang_tb`
--

CREATE TABLE `cabang_tb` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `pelayanan` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang_tb`
--

INSERT INTO `cabang_tb` (`id`, `nama`, `alamat`, `deskripsi`, `no_hp`, `pelayanan`, `gambar`) VALUES
(1, 'ApotekSehat', 'Antapani, Jl. Terusan Sekolah No.1-2, Cicaheum, Kec. Kiaracondong, Kota Bandung, Jawa Barat ', 'Apotek Sehat menyediakan obat berkualitas tinggi dan layanan terpercaya dengan dukungan tim farmasis profesional. Fokus pada kemudahan akses, inovasi, dan komitmen terhadap kesehatan masyarakat, Apotek Sehat menjadi mitra kesehatan yang terjangkau dan mud', '+6289518346267', 'Apotek Sehat menawarkan layanan terbaik dengan produk berkualitas, konsultasi farmasis, dan kemudahan pemesanan online. Keanggotaan memberikan keuntungan tambahan, menjadikan Apotek Sehat sebagai mitra kesehatan terpercaya dan terjangkau.', 'uploads/cabang.jpg'),
(2, 'ApotekCerdas', 'Antapani, Jl. Terusan Sekolah No.1-2, Cicaheum, Kec. Kiaracondong, Kota Bandung, Jawa Barat', 'Apotek Cerdas membuka pintu kepada inovasi dalam dunia pelayanan kesehatan dengan menyajikan solusi modern dan terdepan. Sebagai apotek yang terkoneksi secara digital, kami memprioritaskan pelayanan personal yang didukung oleh teknologi terkini. ', '+628951734564', 'Apotek Cerdas menyediakan pelayanan online yang mudah diakses, memungkinkan pelanggan untuk melakukan pemesanan obat dan mendapatkan informasi kesehatan tanpa hambatan. ', 'uploads/cabang2.jpg'),
(3, 'ApotekPintar', 'Antapani, Jl. Terusan Sekolah No.1-2, Cicaheum, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40282', 'Apotek Pintar menjadi pionir dalam revolusi kesehatan dengan menghadirkan pengalaman berbelanja obat yang modern dan efisien. Berfokus pada integrasi teknologi canggih, Apotek Pintar mempermudah akses pelanggan ke produk kesehatan berkualitas tinggi.', '+6209878219219', 'Apotek Pintar menyajikan pengalaman pemesanan obat yang efisien melalui platform online. Pelanggan dapat dengan mudah memesan obat melalui situs web atau aplikasi seluler, meminimalkan waktu tunggu dan memberikan kenyamanan maksimal.', 'uploads/cabang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_tb`
--

CREATE TABLE `kontak_tb` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak_tb`
--

INSERT INTO `kontak_tb` (`id`, `name`, `phone`, `gender`, `email`, `message`) VALUES
(1, 'as', 1234567, 'as', 'as', 'as'),
(2, 'q', 0, 'q', 'q', 'q'),
(3, 'kurnia', 0, 'Perempuan', 'k@gmail.com', 'qweryjk'),
(7, 'a', 123, 'lk', 'k@gmail.com', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `pw` varchar(11) NOT NULL,
  `conpw` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`id`, `nama_lengkap`, `no_hp`, `email`, `user`, `pw`) VALUES
(1, 'Kurnia', '0987654', 'kur', '12345', '123456'),
(2, '', '098765', 'ku@gmail.com', '123', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `resep` varchar(255) NOT NULL,
  `dokter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`id`, `nama`, `no_hp`, `resep`, `dokter`) VALUES
(1, 'fff', 'fff', 'fff', 'fff'),
(2, '1212', '123', '213213213', '3123'),
(3, '1212', '1212', '21212', '12121'),
(4, 'kurnia', '0000002', 'demam', 'k'),
(5, 'kurnia', '098765', 'Demam', 'putra'),
(6, '121212', '12121', '121212', '121212'),
(7, 'Asep', '080139283923', 'BLA BLA BLA BLA BLA', 'DR putra');

-- --------------------------------------------------------

--
-- Table structure for table `take_antrian`
--

CREATE TABLE `take_antrian` (
  `id` int(11) NOT NULL,
  `no_antrian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `take_antrian`
--

INSERT INTO `take_antrian` (`id`, `no_antrian`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id` int(11) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `obat` varchar(255) NOT NULL,
  `penyakit` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id`, `nama_pasien`, `umur`, `obat`, `penyakit`, `alamat`, `tanggal`) VALUES
(1, 'sss', 12, '222', '22222', '222', '0000-00-00'),
(2, 'agungg', 6, 'magh', 'kkkkk', 'sukasuka', '2002-04-01'),
(3, 'Kurnia', 21, '4', 'kkkkk', 'sukamaju', '2002-10-10'),
(4, 'milaa', 21, '5', 'kkkkk', '1111', '1995-09-09'),
(5, 'putra', 21, '5', 'kkkkk', 'baik', '2002-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `no_hp`, `email`) VALUES
(1, 'a', '1', '', ''),
(2, 'admin', 'password', '0878787878', 'admin@admin.com'),
(3, '1212', '121', '1212', '212'),
(4, 'admin2', 'password', '545454', 'admin2@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_antrian_resep`
--

CREATE TABLE `tb_antrian_resep` (
  `id` int(11) NOT NULL,
  `no_antrian_resep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_antrian_resep`
--

INSERT INTO `tb_antrian_resep` (`id`, `no_antrian_resep`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL,
  `id_cust` varchar(255) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `id_cust`, `nama_cust`, `alamat`, `no_hp`, `email`, `status`) VALUES
(4, '01', 'kur', '!!!!!', '0899982111', 'ku@gmail.com', 'lajang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kastamer`
--

CREATE TABLE `tb_kastamer` (
  `id` int(11) NOT NULL,
  `id_cust` varchar(255) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kastamer`
--

INSERT INTO `tb_kastamer` (`id`, `id_cust`, `nama_cust`, `alamat`, `no_hp`, `email`, `status`) VALUES
(5, '345', 'kurnia', 'sukahalu', '0899982111', 'kurnia@gmail.com', 'belum'),
(6, '13', 'agung', 'sukamaju', '989993003973', 'kurniacreativity@gmail.com', 'lajang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) NOT NULL,
  `nama_k` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `nama_k`, `deskripsi`, `gambar`, `icon`) VALUES
(1, 'Sakit kepala', 'Sakit kepala bisa disebabkan oleh berbagai faktor, seperti stres, dehidrasi, kurang tidur, konsumsi kafein atau alkohol berlebihan, fluktuasi hormon, kelaparan, infeksi, faktor genetik, dan trauma kepala. Jika mengalami sakit kepala parah atau berkepanjangan dengan gejala khawatir, sebaiknya segera konsultasikan dengan profesional kesehatan untuk penanganan yang tepat.', 'uploads/sakitkepala.jpg', 'uploads/mefenamathd.jpg'),
(3, 'Maag', 'Penyakit magh merupakan istilah yang sering dipakai untuk menggambarkan gangguan di lambung. Dalam dunia medis, kondisi itu disebut dengan dispepsia. Sakit magh adalah ketidaknyamanan pada perut bagian atas ataupun sekitar ulu hati. Sifat nyerinya berulang dan juga kronik.', 'uploads/maag.jpg', 'uploads/promag_tablet.webp'),
(4, 'Tipes', 'Tifus atau typhus adalah penyakit yang disebabkan oleh bakteri Rickettsia dan Orientia. Penyakit ini dapat menular melalui gigitan kutu atau tungau yang terinfeksi. Tifus bisa menimbulkan demam, sakit kepala, hingga ruam merah di kulit. Tifus berbeda dengan tipes atau demam tifoid. Tifus merupakan penyakit akibat infeksi bakteri Rickesttsia dan Orientia. Sementara tipes diakibatkan oleh bakteri Salmonella typhii.', 'uploads/tipes.webp', 'uploads/pyxime.jpg'),
(5, 'Flu', 'Flu atau influenza merupakan penyakit yang disebabkan oleh infeksi virus yang dapat menyerang hidung, tenggorokan, dan paru-paru. Kondisi ini sangat umum terjadi di musim pancaroba. Penyakit ini sangat mudah menular ke orang lain, terutama ketika 3–4 hari pertama setelah pengidapnya terinfeksi virus flu.', 'uploads/flu.webp', 'uploads/sanmol.webp'),
(6, 'Demam berdarah', 'Demam berdarah atau DBD adalah penyakit yang menular melalui nyamuk yang terjadi di daerah tropis dan subtropis di dunia. Gejala DBD yang umum adalah demam tinggi dan gejala seperti flu. Sementara itu, pada DBD yang parah, kondisi ini bisa menyebabkan pendarahan serius, penurunan tekanan darah secara tiba-tiba (syok) dan bahkan kematian.', 'uploads/dbd.jpg', 'uploads/maltofer.png'),
(7, 'Cacingan', 'Cacingan adalah penyakit yang disebabkan oleh cacing parasit karena faktor lingkungan atau makanan yang kurang terjaga kebersihannya. Cacingan sering kali muncul dengan gejala nyeri perut, diare, rasa gatal pada anus, mual dan muntah.', 'uploads/cacingan.jpg', 'uploads/vermox.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `tgl_konsultasi` varchar(255) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `resep_apotek` varchar(255) NOT NULL,
  `c_konsul` varchar(255) NOT NULL,
  `rat_konsul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`id`, `nama_pelanggan`, `tgl_konsultasi`, `keluhan`, `resep_apotek`, `c_konsul`, `rat_konsul`) VALUES
(1, 'kurnia', '10', 'sakit', 'qwaeea', 'baik', 'baik'),
(2, 'hilman', '90', 'ada', 'uytr', 'sakit', 'sakit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_layanan`
--

CREATE TABLE `tb_layanan` (
  `id` int(11) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `deskripsi_layanan` varchar(255) NOT NULL,
  `biaya_layanan` varchar(255) NOT NULL,
  `waktu_layanan` varchar(255) NOT NULL,
  `tgl_layanan` varchar(255) NOT NULL,
  `status_layanan` varchar(255) NOT NULL,
  `rating_layanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_layanan`
--

INSERT INTO `tb_layanan` (`id`, `nama_layanan`, `deskripsi_layanan`, `biaya_layanan`, `waktu_layanan`, `tgl_layanan`, `status_layanan`, `rating_layanan`) VALUES
(1, 'kurnia', 'jsssjs', '98765', 'sore', '0987', 'baik', '8'),
(2, 'putra', 'kjhgf', 'kjhgf', '098765', 'jhgf', 'jhgfd', 'iuhygfff');

-- --------------------------------------------------------

--
-- Table structure for table `tb_no_antrian`
--

CREATE TABLE `tb_no_antrian` (
  `id` int(11) NOT NULL,
  `no_antrian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_no_antrian`
--

INSERT INTO `tb_no_antrian` (`id`, `no_antrian`) VALUES
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id` int(11) NOT NULL,
  `kode_obat` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategory_obat` varchar(255) NOT NULL,
  `bentuk_obat` varchar(155) NOT NULL,
  `kandungan_obat` varchar(255) NOT NULL,
  `harga_obat` varchar(111) NOT NULL,
  `stok_obat` varchar(155) NOT NULL,
  `tgl_kdl` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id`, `kode_obat`, `nama`, `kategory_obat`, `bentuk_obat`, `kandungan_obat`, `harga_obat`, `stok_obat`, `tgl_kdl`, `gambar`) VALUES
(4, '099', 'Polysilane tablet', '', 'Tablet', 'Alumunium Hydroxide 200 mg, Mg Hydroxide 200 mg, Dimethicone 80 mg', 'Rp7.356 – Rp50.000 (8 tablet, 40 tablet)', '126', '30 Nov 2026', '1'),
(5, '099', 'Polysilane Suspensi 100 ml', '3', 'Sirup', 'Tiap 5 mL mengandung : Dimetilpolisiloksan 80 mg, Aluminium hidroksida 200 mg.', 'Rp23.000 - Rp33.700', '135', '30 Nov 2026', 'polysilanecair.jpg'),
(6, '114', 'Mylanta 10 Tablet', '', 'Tablet', 'Setiap tablet kunyah mengandung: Magnesium Hydroxide 200 mg Alumunium Hydroxide gel kering (dried gel) 200 mg Simethicone 20 mg ', 'Rp8.900 - Rp10.300', '120', '30 Nov 2026', '1'),
(7, '115', 'Mylanta Sirup 150 ml', '3', 'Sirup', 'Per 5 mL : Alumunium hidroksida 200 mg, Magnesium hidroksida 200 mg, Simetikon 20 mg ', 'Rp46.400 - Rp56.100', '109', '30 Nov 2026', 'mylantasirup.png'),
(8, '116', 'Waisan Granul 12 Sachet', '3', 'Bubuk', 'Hydrotalcite, Mg(OH)2 , simethicone', 'Rp15.000 - Rp15.900 ', '115', '30 Nov 2026', 'waisan_granul.webp'),
(9, '117', 'Promag', '3', 'Tablet', 'Hydrotalcite 200 mg, Mg(OH)2 150 mg, Simethicone 50 mg', 'Rp8.600 - Rp10.600 ', '88', '30 Nov 2026', 'promag_tablet.webp'),
(10, '118', 'Polycrol Forte Sirup 100 ml', '3', 'Tablet', 'Per 5 mL : Activated methylpolysiloxane 125 mg, Mg(OH)2 100 mg, Al(OH)3.', 'Rp32.900 - Rp39.900 ', '102', '30 Nov 2026', 'polycrol.webp'),
(11, '119', 'Gastran 10 tablet', '3', 'Tablet', 'Aluminum hydroxide, magnesium carbonate, simethicone', 'Rp7.300 - Rp8.900', '122', '30 Nov 2026', 'gastran.png'),
(12, '120', 'Floxigra 500 mg 10 Kaplet', '4', 'Kaplet ', 'Ciprofloxacin 500 mg', 'Rp12.900 - Rp14.200', '292', '30 Nov 2026', 'floxigra.webp'),
(13, '121', 'Pyxime', '4', 'kaplet', 'Pyxime 100 mg Kapsul mengandung cefixime.', 'Rp2.700 - Rp5.000', '110', '30 Nov 2026', 'pyxime.jpg'),
(14, '122', 'Sedrofen', '4', 'Kaplet', 'Asam Mefenamat 500 mg ', 'Rp3.000 - Rp5.000', '231', '30 Nov 2026', 'sedrofen.webp'),
(15, '123', 'Oskadon', '1', 'Kaplet', 'Paracetamol 500 mg dan Caffein 35 mg', 'Rp2.000 - Rp2.500', '243', '30 Nov 2026', 'oskadon.webp'),
(16, '124', 'Bodrex 20 tablet', '1', 'Tablet', 'Paracetamol 600 mg dan Caffeine 50mg', 'Rp5.100 - Rp12.300', '235', '30 Nov 2026', 'bodrex.webp'),
(17, '125', 'Bodrex Extra Extra 5 Strip', '1', 'Kaplet', 'Paracetamol 350 mg, Ibuprofen 200 mg.', 'Rp3.200 - Rp11.900', '218', '30 Nov 2026', 'bodrexextra.webp'),
(18, '126', 'Paracetamol 500 mg 10 Kaplet', '1', 'Kaplet', 'Setiap kaplet mengandung Paracetamol 500 mg ', 'Rp2.200 - Rp4.300 ', '225', '30 Nov 2026', 'paracetamol.webp'),
(19, '127', 'Ibuprofen 200 mg 10 Tablet', '1', 'Tablet', 'Ibuprofen 200 mg ', 'Rp2.500 - Rp4.000', '100', '30 Nov 2026', 'ibuprofen.webp'),
(20, '128', 'Noza 4 Kaplet', '5', 'Kaplet ', 'Triprolidine HCl 2,5 mg Pseudoephedrine HCl 30 mg Paracetamol 500 mg ', 'Rp4.200 - Rp5.300 ', '225', '30 Nov 2026', 'download.jpeg'),
(21, '129', 'Saridon 4 Tablet', '1', 'Tablet', 'Paracetamol 250 mg, propyphenazone 150 mg.', 'Rp4.800 - Rp5.300 ', '178', '30 Nov 2026', 'saridon.webp'),
(22, '130', 'Sanmol Forte 4 tablet', '5', 'Taplet', 'Paracetamol 650 mg', 'Rp3.200 - Rp13.000 ', '293', '30 Nov 2026', 'sanmol.webp'),
(23, '131', 'Trolit granul 4g', '6', 'Granul', 'Monascus Purpureus, Psidii Folium, Vitamin, Elektrolit, Zn Asam traneksamat/ tranexamic acid 250 mg, 500 mg', 'Rp.16.800 - Rp21.400', '221', '30 Nov 2026', 'trolit.jpeg'),
(24, '132', 'Maltofer Drops 30 ml', '6', 'Cair', 'Fe (III) hydroxide polymaltose complex setara dengan elemental Fe 50mg', 'Rp73.900 - Rp86.900', '286', '30 Nov 2026', 'maltofer.png'),
(39, '', '', '', '', '', '', '', '', 'uploads/Screenshot (3).png'),
(45, '1010', 'Vermox Tablet 500 mg', '7', 'Tablet', 'Setiap tablet kunyah mengandung: Mebendazole 500 mg.', 'Rp22.200 - Rp23.800', '123', '30 Nov 2026', 'vermox.webp'),
(46, '321', 'Pyrantel 125 mg 4 Kapsul', '7', 'Kapsul', 'Pirantel Pamoat 125 mg', 'Rp1.300 - Rp3.600', '76', '30 Nov 2026', 'pyrantel.png'),
(47, '', '', '', '', '', '', '', '', ''),
(48, '090', 'Combantrin Jeruk', '7', 'Sirup', '(5 ml) mengandung Pirantel Pamoat setara dengan Pirantel base 125 mg.', 'Rp21.500 - Rp23.200', '34', '30 Nov 2026', 'Combatrin Jeruk.jpeg'),
(49, '', '', '', '', '', '', '', '', ''),
(50, '769', 'Kalnex 500 mg 10 Tablet', '6', 'Tablet', 'KALNEX 500 MG TABLET adalah obat dengan kandungan Asam Traneksamat 500 mg.', 'Rp22.500 - Rp57.100', '678', '30 Nov 2026', 'kernex.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id` int(11) NOT NULL,
  `no_pasien` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id`, `no_pasien`, `nama_pasien`, `no_hp`, `alamat`, `umur`) VALUES
(1, '09001', 'agungg', '09876543', 'ujung langit', '2011'),
(3, '2222', 'Kurnia', '098764', 'sukasukaa', '8'),
(4, '12', 'kur', '1234567', 'sukasuka', '13'),
(10, '221', 'aher6', '0000002', 'dddddd1', '5'),
(11, '08', 'galuh', '1243567890', 'sukaboong', '8'),
(12, '', '', '', '', ''),
(13, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(13, '123', 'hahaaaa', '1010101');

-- --------------------------------------------------------

--
-- Table structure for table `uts_tb`
--

CREATE TABLE `uts_tb` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirmation` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uts_tb`
--

INSERT INTO `uts_tb` (`id`, `nama`, `whatsapp`, `email`, `password`, `password_confirmation`) VALUES
(1, 'fahri', '09876526379', 'kur@gmail.com', '123456', '123456'),
(2, 'izallll', '987667823883', 'kurniacreativity@gmail.com', '123456', '123456'),
(3, 'Kurniaa', '08951834626777', 'kurniacreativity@gmail.com', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `uts_tbl`
--

CREATE TABLE `uts_tbl` (
  `id` int(11) NOT NULL,
  `nama_projek` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `deadline` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uts_tbl`
--

INSERT INTO `uts_tbl` (`id`, `nama_projek`, `deskripsi`, `harga`, `deadline`) VALUES
(6, 'iot', 'adalah sebuah ai masa depan', '98765', 'ieryrtysdgdswh'),
(7, 'bismillah', 'dengan ahgsjkshgfhj', '12', 'besok'),
(9, 'SKRIPSI', 'merupakan syarat untuk sebuah kelulusan sebagai mahasiswa', '6 juta', 'semester 8'),
(10, 'Makalahhhh', 'Buat Tugas Uas semester mendatang', '2000000', 'semester 8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apoteker`
--
ALTER TABLE `apoteker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabang_tb`
--
ALTER TABLE `cabang_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak_tb`
--
ALTER TABLE `kontak_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_antrian`
--
ALTER TABLE `take_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_antrian_resep`
--
ALTER TABLE `tb_antrian_resep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kastamer`
--
ALTER TABLE `tb_kastamer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_no_antrian`
--
ALTER TABLE `tb_no_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uts_tb`
--
ALTER TABLE `uts_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uts_tbl`
--
ALTER TABLE `uts_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apoteker`
--
ALTER TABLE `apoteker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cabang_tb`
--
ALTER TABLE `cabang_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kontak_tb`
--
ALTER TABLE `kontak_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loginuser`
--
ALTER TABLE `loginuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `take_antrian`
--
ALTER TABLE `take_antrian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_antrian_resep`
--
ALTER TABLE `tb_antrian_resep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kastamer`
--
ALTER TABLE `tb_kastamer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_layanan`
--
ALTER TABLE `tb_layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_no_antrian`
--
ALTER TABLE `tb_no_antrian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uts_tb`
--
ALTER TABLE `uts_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uts_tbl`
--
ALTER TABLE `uts_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
