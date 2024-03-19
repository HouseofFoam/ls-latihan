-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 05:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `isbn` varchar(13) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `penerbit` char(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `harga` int(7) NOT NULL,
  `tbl_buku` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`isbn`, `nama_buku`, `penerbit`, `pengarang`, `harga`, `tbl_buku`, `deskripsi`, `gambar`) VALUES
('9786020639321', 'Malice', 'gramedpustaka', 'Keigo Higashino', 69750, '304', 'Novelis laris Hidaka Kunihiko ditemukan tewas di rumahnya pada malam sebelum ia meninggalkan Jepang untuk pindah ke Kanada. Tubuhnya ditemukan di ruang kerjanya yang terkunci di rumahnya yang juga terkunci oleh istri dan sahabatnya. Keduanya punya alibi kuat. Mungkin. Detektif Kaga Kyoichiro yang menyelidiki kasus pembunuhan tersebut menemukan bahwa hubungan Hidaka dengan sang sahabat, Nonoguchi Osamu, tidak seperti yang diceritakan oleh Nonoguchi. Tapi pertanyaan yang paling mengusik Kaga bukanlah siapa atau bagaimana, melainkan kenapa. Dari situlah sang detektif dan sang pembunuh bertarung membeberkan kebenaran tentang masa lalu dan masa kini versi masing-masing. Dan jika Kaga gagal menguak motif sang pembunuh yang sebenarnya, kebenaran takkan terungkap seutuhnya. Malice merupakan novel dari seri Detektif Kaga karya Keigo Higashino yang paling laris dan paling banyak dipuji.', 'Malice.jpg'),
('9786020648293', 'Keajaiban Toko Kelontong Namiya', 'gramedpustaka', 'Keigo Higashino', 97500, '400', 'Ketika tiga pemuda berandal bersembunyi di toko kelontong tak berpenghuni setelah melakukan pencurian, sepucuk surat misterius mendadak diselipkan ke dalam toko melalui lubang surat. Surat yang berisi permintaan saran. Sungguh aneh. Namun, surat aneh itu ternyata membawa mereka dalam petualangan melintasi waktu, menggantikan peran kakek pemilik toko kelontong yang menghabiskan tahun-tahun terakhirnya memberikan nasihat tulus kepada orang-orang yang meminta bantuan. Hanya untuk satu malam. Dan saat fajar menjelang, hidup ketiga sahabat itu tidak akan pernah sama lagi...', 'Toko Kelontong Namiya.jpg'),
('9786020650371', 'Salvation Of A Saint', 'gramedpustaka', 'Keigo Higashino', 99000, '352', 'Seorang lelaki ditemukan tewas di rumahnya akibat kopi beracun. Istrinya memiliki motif kuat sebagai tersangka setelah dia dicampakkan oleh sang suami. Masalahnya, pada hari pembunuhan, wanita itu berada ribuan kilometer dari tempat kejadian. Detektif Kusanagi dan Detektif Utsumi Kaoru yang menyelidiki kasus ini memiliki opini bertentangan soal siapa pelakunya. Namun, Utsumi merasa Kusanagi terlalu berempati terhadap istri korban dan itu membuat penilaiannya kabur.\r\nKarena itu, Utsumi meminta Profesor Manabu Yukawa untuk membantu kepolisian, sekaligus meluruskan logika Kusanagi. Tapi bahkan ilmuwan genius yang dijuluki Detektif Galileo itu kebingungan. Tidak mungkin seseorang memasukkan racun ke kopi dari jarak jauh, bukan? Di sinilah kecerdasan sang profesor diuji. Dia harus menguak trik bagaimana racun itu muncul pada waktu yang tepat, di tempat yang sempurna, dan yang terpenting, tidak salah sasaran.', 'Salvation Of A Saint.jpeg'),
('9786023850211', 'Orang Orang Bloomington', 'noura', 'Budi Dharma', 79000, '316', '“Janganlah mengurusi kepentingan orang lain dan janganlah mempunyai keinginan tahu tentang orang lain. Hanya dengan jalan demikian, kita dapat tenang.”\r\nSejak kali pertama terbit, tujuh cerita yang dihimpun dalam antologi Orang-Orang Bloomington sukses memukau pembaca lintas generasi melalui permasalahan yang diangkat—emosi-emosi terdalam manusia.\r\nManusia dengan segala dinamika kehidupannya dikisahkan melalui sudut pandang orang pertama—menjadikan suasana batin tokoh-tokohnya tergali dalam. Cerita-ceritanya tampak sederhana, tapi menyuguhkan sisi lain kehidupan nyata yang kompleks dan kelam. Dengan cara yang tidak biasa, Budi Darma mengungkap konflik antarmanusia yang lazim kita hadapi dalam keseharian—prasangka, kesepian, kedengkian. Semua berpadu menjadi satu formula kisah yang realistis, menyentuh, bahkan cenderung menampar.\r\nMelalui Orang-Orang Bloomington, Budi Darma berhasil menyabet penghargaan S. E. A. Write Award 1984 dari Pemerintah Thailand. Cerpen-cerpen yang menginspirasi ini kami hadirkan kembali untuk memperkenalkannya kepada pembaca muda, sekaligus mengobati kerinduan para pembaca setia Budi Darma.', 'Orang Orang Bloomington.jpg'),
('9786023853809', '[URBAN THRILLER] Carmine', 'noura', 'Ruwi Meita', 84000, '348', 'Rasa sakit itu seperti hantu.\r\nSemu.\r\nTidak nyata.\r\nTapi ada.\r\n\r\n“Datanglah, Carmine. Jemput anak-anakmu.”\r\n\r\nAnak-anaknya dalam bahaya. Dia harus bergegas, sebelum wanita itu “menidurkan” mereka.\r\n\r\n“Aku akan menolongmu, Carmine. Aku akan memperbaikimu', 'Carmine.jpg'),
('9786023858859', '[URBAN THRILLER] Suicide Knot', 'noura', 'Vie Asano', 79000, '328', 'Seorang siswi mati. Bunuh diri.\r\nSiaran live Instagram-nya saat gantung diri di ruang kelas menjadi viral.\r\nBenarkah sesederhana itu? Benarkah kejadiannya seperti yang terlihat?\r\nKaren tidak percaya. Anne tidak bunuh diri. Anne tidak mungkin bunuh diri.\r\nNamun, punya kuasa apa dia? Satu orang melawan ribuan orang yang mengatakan sebaliknya?', 'Suicide Knot.jpg'),
('9786232422308', '[URBAN THRILLER] Sang Peramal', 'noura', 'Chandra Bientang', 89000, '308', 'Namanya Imar Mulyani. Semua orang menyebutnya Sang Peramal. Dia sering muncul tiap akhir tahun di TV, membacakan nasib-nasib yang tertera pada kartu-karu Tarot-nya.Bencana alam, skandal artis atau pejabat, semua yang buruk-buruk, pokoknya. Yang bisa membuat seluruh Indonesia heboh.\r\n\r\nPara kliennya, baik yang terkenal maupun orang biasa, memiliki satu kesamaan: punya rahasia kelam. Ketika suatu hari Imar mendadak hilang, di tengah-tengah jamuan makan malam yang dia selenggarakan, siapa lagi yang harus disalahkan kalau bukan salah satu dari mereka?\r\n\r\n \r\n\r\n“Ketegangannya dibangun perlahan dari awal dan misterinya sukses bikin terpana. Salah satu buku yang sukses bikin saya tercengang dari awal sampai akhir.”\r\n\r\n— Vie Asano, penulis Suicide Knot', 'Sang Peramal.jpg'),
('9786232422865', 'Alegori Valerie', 'noura', 'Aya Widjaja', 54000, '244', 'Valerie ingin cepat mati. Hidupnya kehilangan arti. Setelah ibunya bunuh diri, Valerie dituduh membunuh 3 orang, termasuk ayah kandungnya sendiri.\r\n\r\nHingga Valerie bertemu Haezel, yang berkeras memfilmkan kisah hidupnya demi menuntut keadilan. Menurut Haezel, sosok di balik kamera lebih berkuasa daripada mereka yang memegang senjata.\r\n\r\nHaezel memberi Valerie satu tujuan hidup baru: membalaskan dendam!', 'Alegori Valerie.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `membeli`
--

CREATE TABLE `membeli` (
  `nobeli` int(11) NOT NULL,
  `username` char(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `pembayaran` varchar(255) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membeli`
--

INSERT INTO `membeli` (`nobeli`, `username`, `isbn`, `pembayaran`, `kuantitas`) VALUES
(8, 'AhmadRamdani', '9786023853809', 'COD', 2),
(9, 'AhmadRamdani', '9786020648293', 'COD', 1),
(10, 'AhmadRamdani', '9786023858859', 'COD', 1),
(11, 'AhmadRamdani', '9786020639321', 'COD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` char(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` char(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `alamat`, `logo`, `level`) VALUES
('AhmadRamdani', 'ahmadramdan', 'Ahmad Ramdani', ' Kota Jakarta Pusat, Dki Jakarta', 'Malice.jpg', 1),
('gramedpustaka', 'gramedpus4', 'Gramedia Pustaka Utama', ' Kota Jakarta Pusat, Dki Jakarta', 'gpu.png', 2),
('noura', 'noura123', 'Noura Publishing', 'Jl. Raya Jagakarsa No.40, RW.4, Ciganjur, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12620', 'noura.jpg', 2),
('shiramedia', 'shiramed12', 'Shira Media Publisher', 'Jl. Dersono, Ceper, Wedomartani, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55584', 'Shira Media.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `penerbit` (`penerbit`);

--
-- Indexes for table `membeli`
--
ALTER TABLE `membeli`
  ADD PRIMARY KEY (`nobeli`),
  ADD KEY `username` (`username`),
  ADD KEY `isbn` (`isbn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membeli`
--
ALTER TABLE `membeli`
  MODIFY `nobeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`penerbit`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `membeli`
--
ALTER TABLE `membeli`
  ADD CONSTRAINT `membeli_ibfk_3` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `membeli_ibfk_4` FOREIGN KEY (`isbn`) REFERENCES `buku` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
