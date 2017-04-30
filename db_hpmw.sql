-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2015 at 05:52 
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_hpmw`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
`id_agenda` int(11) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `kd_cbg` char(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `agenda`, `tanggal`, `tempat`, `kd_cbg`) VALUES
(1, 'Diskusi setiap malam minggu', '0000-00-00', 'Sekretariat hpmw cabang jogja', 'jog'),
(2, 'Rapat Kerja', '2014-10-25', 'Tanjung bayang makassar', 'pb'),
(3, 'Musyawarah Besar', '2014-11-29', 'Sekretariat HPMW Cabang Yogyakarta', 'jog'),
(4, 'Diskusi Keilmuan (Setiap Malam Sabtu)', '0000-00-00', 'Sekretariat HPMW Cab. Jogja', 'jog'),
(5, 'Kelas Filsafat (Setiap Malam Jum''at)', '0000-00-00', 'Sekretariat HPMW Cab. Jogja', 'jog');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` enum('pria','wanita') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kampus` varchar(100) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `status` enum('kawin','belum kawin') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `nama`, `jk`, `alamat`, `kampus`, `kota`, `angkatan`, `pekerjaan`, `status`) VALUES
(1, 'La Raufun, S.T.', 'pria', 'Palagimata, Kota Bau-Bau', 'UMY', 'Yogyakarta', 2001, 'Dosen Unidayan', 'kawin'),
(2, 'Harimuddin, S.H.', 'pria', 'Desa Bahari 2', 'UGM', 'Yogyakarta', 1993, 'Staff kepresidenan bidang UKP4', 'kawin'),
(3, 'Surdin, S.K.G', 'pria', 'Desa Bahari 3', 'UMY', 'Yogyakarta', 2005, 'Dokter Gigi PTT di Papua', 'kawin'),
(4, 'La Sayedi, S.I.P.', 'pria', 'Desa Bahari 1', 'UMY', 'Yogyakarta', 2000, 'PNS', 'kawin'),
(5, 'Aminuddin, S.H.', 'pria', 'Maba, Maluku Utara', 'UMY', 'Yogyakarta', 2000, 'PNS', 'kawin'),
(6, 'La Dama, S.Kom', 'pria', 'Mano, Maluku Utara', 'Stmik Amikom ', 'Yogyakarta', 2002, 'PNS', 'kawin'),
(7, 'Wa Ona, S.Ag', 'wanita', 'Desa Bahari 3', 'UII', 'Yogyakarta', 1999, 'Ibu Rumah Tangga', 'kawin'),
(8, 'Sahidin, S.E.', 'pria', 'Mosolo', 'UCY', 'Yogyakarta', 2001, 'Anggota Legislatif', 'belum kawin'),
(9, 'Taufiq, S.Pd', 'pria', 'Desa Bahari 2', 'UNY', 'Yogyakarta', 2006, 'PNS', 'kawin'),
(10, 'Abdul Salam L. S.Kep', 'pria', 'Mano, Maluku Utara', 'UMY', 'Yogyakarta', 2006, 'PNS', 'kawin'),
(11, 'Murudin, S.E.', 'pria', 'Ternate, Maluku Utara', 'UCY', 'Yogyakarta', 1999, 'PNS', 'kawin'),
(12, 'Jimi Rahim', 'pria', 'Kupang, NTT', 'UMY', 'Yogyakarta', 2001, 'Bos Sirip Hiu', 'kawin'),
(13, 'Dahlia, S.Akt', 'wanita', 'Kupang, NTT', 'UII', 'Yogyakarta', 2000, 'Ibu rumah tangga', 'kawin'),
(14, 'Taher, S.H.', 'pria', 'Desa sinaulu jaya', 'UAD', 'Yogyakarta', 2005, 'Pengacara', 'kawin'),
(15, 'Camirudin, S.Pd', 'pria', 'Desa Bahari 3', 'UAD', 'Yogyakarta', 2009, 'Guru honor di SMA bahari', 'kawin'),
(16, 'Yanti, AMd, Bid.', 'wanita', 'Desa Bahari 3', 'Stikes Ahmad Yani', 'Yogyakarta', 2008, 'Bidan PTT di maluku utara', 'kawin');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
`id_angg` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('pria','wanita') NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `kampus` varchar(100) NOT NULL,
  `alamat_asal` text NOT NULL,
  `alamat_skrg` text NOT NULL,
  `kd_cbg` char(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_angg`, `nama`, `jk`, `jurusan`, `angkatan`, `kampus`, `alamat_asal`, `alamat_skrg`, `kd_cbg`) VALUES
(1, 'Janaria', 'pria', 'Pendidikan teknik elektronika', 2008, 'UNY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(2, 'Irwan', 'pria', 'Pendidikan biologi', 2008, 'UAD', 'Desa bahari 2', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(3, 'Disman', 'pria', 'Teknik informatika', 2008, 'UAD', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(4, 'Astiani wahyuningsi', 'wanita', 'Ilmu keperawatan', 2009, 'UMY', 'Desa bahari 2', 'Bantul, Yogyakarta', 'jog'),
(5, 'Rizal', 'pria', 'Perbankan syariah', 2010, 'UMY', 'Desa bahari 2', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(6, 'Mukrin', 'pria', 'Manajemen', 2010, 'UMY', 'Desa bahari 2', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(7, 'La watu', 'pria', 'Manajemen', 2010, 'UMY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(8, 'Aliaman', 'pria', 'Fisika', 2010, 'UNY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(9, 'Rusdin', 'pria', 'Pendidikan kewarganegaraan', 2010, 'UAD', 'Desa bahari 3', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(10, 'Juniarti', 'wanita', 'Pendidkan IPA', 2011, 'UST', 'Desa bahari 3', 'NG1/199 RT13 RW03 Ngampilan yogyakarta', 'jog'),
(11, 'Juneti', 'wanita', 'Kebidanan', 2011, 'Stikes Ahmad yani', 'Desa bahari 3', 'NG1/199 RT13 RW03 Ngampilan yogyakarta', 'jog'),
(12, 'Suharmini', 'wanita', 'Kebidanan', 2011, 'Stikes Ahmad yani', 'Desa mano', 'NG1/199 RT13 RW03 Ngampilan yogyakarta', 'jog'),
(13, 'Nortin', 'wanita', 'Perbankan syariah', 2011, 'UMY', 'Desa mosolo', 'Bantul, Yogyakarta', 'jog'),
(14, 'Irwanto', 'pria', 'Teknik informatika', 2012, 'UAD', 'Wanci', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(15, 'Ramadhan', 'pria', 'Ilmu hukum', 2012, 'UMY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(16, 'Dekarno', 'pria', 'Ilmu hukum', 2012, 'UAD', 'Desa mosolo', 'Kotagede, yogyakarta', 'jog'),
(17, 'Inirwan', 'pria', 'Ilmu hukum', 2012, 'UAD', 'Desa mosolo', 'Kotagede, yogyakarta', 'jog'),
(18, 'Farida', 'wanita', 'Kebidanan', 2013, 'Stikes Ahmad yani', 'Desa mosolo', 'Bantul, Yogyakarta', 'jog'),
(19, 'Asmayanti', 'wanita', 'Ilmu keperawatan', 2013, 'Stikes Ahmad yani', 'Desa mosolo', 'Bantul, Yogyakarta', 'jog'),
(20, 'Indah harfina', 'wanita', 'Pertanian', 2013, 'UMY', 'Desa lampeapi, wawoni''i', 'Bantul, Yogyakarta', 'jog'),
(21, 'Fahrudin', 'pria', 'Geografi', 2014, 'UNY', 'Desa bahari 2', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(22, 'Astam', 'pria', 'Teknik mesin', 2014, 'IST Akprind', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(23, 'Sarjono Lajamani', 'pria', 'Teknik elektro', 2014, 'IST Akprind', 'Desa mano', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(24, 'Muhaimin Lajudi', 'pria', 'Ilmu hukum', 2014, 'UAD', 'Desa mano', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(25, 'Trisna', 'wanita', 'Ilmu hukum', 2014, 'UAD', 'Desa bahari 1', 'Jl. Veteran, yogyakarta', 'jog'),
(26, 'Mega suranda', 'wanita', 'Pendidikan biologi', 2014, 'UAD', 'Waole, Pasarwajo', 'NG1/199 RT13 RW03 Ngampilan yogyakarta', 'jog'),
(27, 'La Dahlan', 'pria', 'Fisika', 2014, 'UAD', 'Desa bahari 3', 'Warungboto, yogyakarta', 'jog'),
(28, 'La ode Asrianto', 'pria', 'Ekonomi pembangunan', 2014, 'UAD', 'Desa sinarmas', 'Kotagede, yogyakarta', 'jog'),
(29, 'Nita amalia', 'wanita', 'Perbankan syariah', 2014, 'UMY', 'Desa mosolo', 'Bantul, Yogyakarta', 'jog'),
(30, 'Yulianti lamentila', 'wanita', 'Pendidikan bahasa inggris', 2014, 'UMY', 'Maba, Halmahera', 'Bantul, Yogyakarta', 'jog'),
(31, 'Zulaiman', 'pria', 'Matematika', 2014, 'UPY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(32, 'Meliano', 'pria', 'Manajemen', 2014, 'UPY', 'Desa bahari 1', 'NG1/199 RT09 RW02 Ngampilan yogyakarta', 'jog'),
(33, 'Darman sado', 'pria', 'Akutansi', 2011, 'UAD', 'Desa sinaulu jaya', 'Kotagede, yogyakarta', 'jog'),
(34, 'Nur Insan', 'wanita', 'IPA', 2014, 'SMA Muh. 5 Yogyakarta', 'Desa bahari 2', 'NG1/199 RT13 RW03 Ngampilan yogyakarta', 'jog');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `content`, `date`, `username`) VALUES
(1, 'Quo Vadis Gerakan HPMW', '<p><em><strong>A. Setetes Masalah dan Harapan</strong></em></p>\n<p>Dalam beberapa tahun terakhir, baik dalam skala lokal maupun nasional, perbincangan mengenai tema-tema perubahan menjadi sunyi disetiap ruang dialog mahasiswa. Kalaupun ada, gerakan yang diusung tak lebih dari sekadar memperingati moment, sporadis, bahkan gerakan titipan. Di jalan raya mahasiswa meneriakan anti KKN (Korupsi, Kolusi, dan Nepotisme), namun pada saat yang sama, ternyata mereka juga meminta-minta di bawah &ldquo;kolong meja&rdquo; para pejabat. Hal yang aneh dan sangat memalukan. Apatahlagi <em>control mechanism</em> yang dikonstruk oleh kaum elit yang pro status quo, membuat hentakan para pembaharu menjadi tumpul, hingga pada akhirnya cita-cita luhur dan pekikan perubahan bagaikan angin lalu belaka tanpa meninggalkan jejak peradaban sama sekali. Pada kondisi tersebut, sudah saatnya mahasiswa maupun para pelajar sebagai pelopor pembaharuan untuk &ldquo;turun gunung&rdquo;; mereformulasi dan mereposisi langkah yang akan diusung di kemudian hari. Tak kalah pentingnya ialah mengidentifikasi seluruh problematika yang ada, baik yang bersumber dari dalam (internal) maupun dari luar (eksternal). Adalah hal tepat sebagai generasi muda untuk selalu peka terhadap setiap masalah yang hadir, karena memang seperti digariskan GBHN 1988, generasi mudalah yang pertama-tama berkewajiban untuk membina, mengembangkan, dan membangun dunia generasi muda sendiri.<br /> Tentunya kita tahu, tabiat social senantiasa mentransmisikan tradisi lama ke tradisi mendatang. Social ialah arena dimana budaya diproduksi dan direproduksi. Sebuah tanda tanda besar kepada kita semua sebagai generasi pelanjut bila tidak mampu mewariskan semangat dan contoh-contoh perjuangan kepada regenerasi mendatang, khususnya generasi wapulaka. Dengan tetap mengacu pada GBHN 1988, dimana secara jelas diamanatkan bahwa &ldquo;Generasi muda adalah generasi penerus cita-cita perjuangan bangsa dan sumber insani bagi pembangunan nasional&rdquo;. Terlihat jelas adanya dua dimensi yang menjadi syarat yang harus dimiliki seorang generasi muda di masa depan. Dimensi pertama menunjukan, generasi muda sebagai &ldquo;GENERASI PENERUS CITA-CITA PERJUANGAN BANGSA&rdquo;, sedangkan dimensi kedua menyebutkan bahwa, &ldquo;SUMBER INSANI BAGI PEMBANGUNAN NASIONAL&rdquo;. Apabila dimensi pertama lebih menunjukan dimensi ideologis-politis (bukan politik praktis), maka dimensi kedua lebih meningkatkan perangkat kemampuan teknis-profesional yang harus dikuasai dan dimiliki agar dapat berperan sebagai tenaga penggerak pembangunan. Perumusan kedua dimensi tersebut ialah suatu rangkaian yang tidak terpisah satu sama lain, keduanya saling melengkapi. Sejenak kita menoleh kebelakang, dalam tradisi perjuangan bangsa. Para pemudalah ditahun 1908 yang mencetuskan wawasan kebangsaan, para pemudalah yang secara sadar pada tahun 1928 melahirkan tekad persatuan dan kesatuan melalui sumpah pemuda, dan sebagian besar para pemuda pulalah yang pada tahun 1945 mengumandangkan dan mendesak agar kemerdekaan sesegara mungkin untuk diproklamirkan tanpa harus menunggu persetujuan dari pihak Jepang; Kita mengenalnya dengan peristiwa Rengas Dengklok, dimana peristiwa tersebut presiden pertama RI (Ir. Soekarno) diculik. Masih terngiang ditelinga kita, reformasi yang bergulir ditahun 1998, mahasiswa juga turut mengambil peran, bahkan menjadi patron gerakan dalam menumbangkan rezim otoriter Soeharto. Sudah barang tentu kisah historis perjalan pergerakan kaum muda tak hanya dijadikan sebagai dokumentasi, apalagi hanya sekadar cerita lampau yang kadang kala membuat kita merasa bangga dan terjebak dalam romantisme kejayaan masa lalu, sebab sejarah ialah masa lalu, kini, dan yang akan datang. Itu artinya kaum muda dituntut untuk mampu menyambung dan menyuburkan akar sejarah yang gemilang dari fase ke fase, dengan tetap memperhatikan duduk perkara yang dihadapi, sehingga gerakan mahasiswa tidak lagi berujung pada kehampaan. .</p>\n<p>HPMW (Himpunan Pelajar Mahasiswa Wapulaka) sebagai organisasi persatuan dan perkaderan (Buka AD pasal 9) turut pula menjadi wadah yang mencoba menunjukan peran kepemudaannya yang berupaya mendorong akselarasi pembangunan. Dimulai dari level desa, lokal, regional hingga pada tingkat nasional. Dalam menyongsong era demokratisasi dan desentralisasi masa kini, peranan pemuda daerah sudah sangat mendesak. Pun kita sadari, semenjak munculnya issu berdirinya HPMW sampai saat ini masih saja menuai pro dan kontra, silang pendapat sampai saling sikut, kesemuanya sedikit banyak dilatari oleh jamaknya wadah (organisasi) yang tersebar di beberapa provinsi di nusantara (HIPEMWA di Jogjakarta, FORMMULA di Makassar, HIPMMOSJA di kendari, dan HIMAWA di Bau-bau, serta APW di Ternate) yang sebagian masih belum siap menanggalkan &ldquo;atribut dan fanatisme kelembagaan&rdquo;, sehingga cita-cita kolektivisme agak sulit untuk dikukuhkan, padahal sesungguhnya HPMW lahir tidak untuk menunjukan sikap dominasi ataupun menghabisi setiap simpul organisasi yang ada, melainkan mengajak kepada seluruh lapisan mahasiswa yang berdarah wapulaka untuk bergandengan tangan dalam rangka pengabdian kepada daerah dengan semangat kewapulakaan yang harmonis. Zaman yang kian hari kian berubah, meniscayakan adanya model organisasi yang berbeda dari sebelumnya, tentu sebuah organisasi fleksibel yang mampu berdialektika dengan konteks perkembangan zaman. Jika tidak, organisasi tersebut akan ditinggal oleh kereta zaman dan hanya akan menjadi sampah-sampah peradaban. Diantara beberapa organda Wapulaka yang disebutkan ada yang tetap mengambil jalan lain yakni MENOLAK untuk bersinergi, meski demikian HPMW tetap konsisten dengan jalan yang dipilihnya dan tidak memaksakan peleburan, sebab HPMW menyadari bukanlah sekumpulan para Nabi yang diutus oleh Tuhan yang bisa menyelesaikan segala macam persoalan. HPMW tetap menjunjung tinggi sikap inklusif dalam menghadapi segala macam perbedaan pendapat. Ia hadir untuk menjadi perekat, mengakomodasi, dan menciptakan ruang dialog dari segala aspirasi yang berkembang di internal mahasiswa dan masyarakat wapulaka secara umum (bukan Bahari toh), apapun bentuknya. Dan yang terpenting ialah HPMW menjadi gerakan alternatif-solutif, juga sebagai anti-tesa terhadap gerakan-gerakan mahasiswa sebelumnya yang dinilai cenderung bergaya klasik, khususnya dari tahun 2009 hingga awal tahun 2013 (fase lemahnya persatuan mahasiswa wapulaka). Kenapa disebut klasik? Indikasinya bisa dilihat dari konflik laten dan perdebatan yang tidak berbobot dari tahun ke tahun; memperhitungkan bendera dan identitas ( ke-jogjakarta-an, ke-Makassar-an ke-Bau-Bau-an, ke-kendari-an, ke-ternate-an dst). Terlepas dari tantangan internal tersebut, HPMW sebagai kumpulan &ldquo;cendekiawan muda&rdquo;, maka sebagaimana dikemukakan oleh Lewis Coser, &ldquo;MAHASISWA (cendekiawan muda) adalah orang-orang yang kelihatannya tidak pernah puas menerima kenyataan sebagaimana adanya. Mereka mempertanyakan kebenaran yang berlaku pada suatu saat dalam hubungannya dengan kebenaran yang lebih tinggi dan luas&rdquo;. Sejalan dengan pandangan di atas, maka kalau dipertanyakan tentang motif peran cendekiawan, maka kebanyakan para ilmuwan mengemukakan bahwa motif mereka adalah keinginan, kegairahan untuk berbakti pada kebenaran. Sedangkan kalau dilihat perspektif historisnya di Negara Barat dimasa lalu, motif ini bisa ditelusuri dalam hubungan asal-usul keagamaan dari peranan cendekiawan itu. Di Negara Barat, kaum pendetalah yang dahulu memainkan peran cendekiawan. Dalam persepsi mereka, cendekiawan keagamaan tidaklah mempunyai kepentingan duniawi, karenanya tidak boleh menarik keuntungan social dan politis. Latar belakang persepsi inilah, tidak mengherankan jika seorang cendekiawan pengarang perancis, Julien Benda berbicara tentang pengkhianatan cendekiawan pada awal abad ke-20 yang lalu. Yang barangkali tindakan pengkhianatan itu masih kita ditemukan di abad 21 saat ini. Bagi Julian benda, cendekiawan seharusnya adalah orang-orang yang kegiatan hakikinya bukan mengejar tujuan-tujuan praktis. Dalam pandangannya, cendekiawan adalah orang-orang yang mencari kepuasan dalam bidang IPTEK, budaya, teka-teki metafisika, singkatnya dalam hal-hal yang tidak menghasilkan keuntungan kebendaan. Sedangkan Manheim mengemukakan pandangan serupa, ketika ia mengatakan cendekiawan sebagai suatu kelompok, merupakan semacam lapisan yang terapung bebas dalam masyarakat, tanpa pertalian dengan suatu kelas tertentu. Dari beragam pandangan tentang cendekiawan, pada esensinya adalah setiap tindakan pelajar maupun mahasiswa sebagai insan cendekia tidak boleh disusupi oleh virus &ldquo;vested interest&rdquo;. Oleh karena itu, setiap tindakan yang dilakukannya adalah harus berdasar pada komitmen terhadap kepentingan masyarakat, sebab amatlah absurd jika generasi penerus ini mengalami keterputusan dan keterasingan dengan masyarakat.</p>\n<p><em><strong>B. Cita-cita transformatif: Basis politik ataukah intelektual?</strong></em></p>\n<p>Tak pelak lagi, dalam epos sejarah kemerdekaan, kaum muda menempati garda paling depan. Mahasiswa dan Pelajar Wapulaka sesuai amanat yang tertuang dalam konstitusi, AD (Anggaran Dasar) pasal 5 mengenai tujuan, menegaskan: &ldquo;Terbinanya integritas moral dan intelektual anggota serta berperan aktif dalam pembangunan daerah&rdquo;. Itulah mandat sakral yang menjadi landasasan mahasiswa dan pelajar Wapulaka dalam melakukan aksi-aksi perubahan, meskipun kita sadari permasalahan yang sering muncul di internal mahasiswa adalah kuatnya keinginan untuk mendiskusikan dirinya sendiri terhadap perbedaan-perbedaan pandangan di antara mereka. Bukan hanya perbedaan bendera, masalah yang sering mengemuka adalah pendefinisian kategori-kategori yang saling bertentangan. Perbedaan pandangan pada tingkat kategorisasi tersebut adalah: apakah gerakan tersebut harus merupakan gerakan moral ataukah politik?. Sejauh yang penulis pahami, dalam skala nasional pun, pertanyaan tersebut selalu menjadi wacana yang tiada hentinya didiskusikan sepanjang zaman dan seringkali menjadi penghambat bagi konsolidasi gerakan sipil-demokratik. Diakui maupun tidak diakui, disadari maupun tidak, dalam beberapa bulan terakhir, ini pula yang menjadi perdebatan yang serius di internal mahasiswa Wapulaka. Yang harus dipahami dalam perdebatan ini, bukan mana yang harus diikuti gerakan moral atau gerakan politik, melainkan pengertian dan konteks yang tepat untuk mendefinisikan identitas gerakan dan menghubungkannya dengan gerakan yang lebih luas untuk kepentingan rakyat. Gerakan moral pada umumnya didefinisikan sebagai gerakan yang ditujukan untuk memperjuangkan nilai-nilai moral dan berbasiskan pada intelektual power. Nilai-nilai tersebut paling tidak mencakup untuk mewujudkan kebenaran, keadilan, dan kepentingan rakyat. Pada sisi yang lain, gerakan politik lebih diartikan sebagai usaha-usaha yang difokuskan untuk merebut atau mempertahankan kekuasaan politik baik pada tingkat desa, local, hingga nasional. Pendefinisian gerakan moral dan politik tidak menjadi jelas ketika gerakan politik pun mengklaim selalu didasarkan atas nama nilai dan cita-cita moral, selanjutnya kedua gerakan tersebut akan menjadi jelas ketika dihadapkan pada tingkat orientasi gerakan, apakah gerakan ditujukan untuk memperjuangkan nilai-nilai moral ataukah merebutkan kekuasaan semata?. Namun demikian, jika diletakkan dalam konteks praksis pendefinisian yang lebih tepat, maka bisa dilihat apakah basisnya bertumpu pada kekuatan politik (political power) ataukah kekuatan intelektual (intellectual power)?. Gerakan intelektual adalah manifestasi gerakan moral yang mendasarkan dirinya pada basis-basis intelektual dengan menggunakan pemberdayaan mahasiswa dan masyarakat sebagai subjek sekaligus orientasi gerakan, sedangkan political power base movement pada dasarnya adalah gerakan-gerakan social yang lebih menjadikan dirinya sebagai kekuatan penekan dalam dialektika panggung kekuasaan. Gerakan mahasiswa yang menggunakan basisnya pada kekuatan politik akan selalu mengarahkan gerakannya untuk usaha-usaha memperebutkan atau mempertahankan kekuasaan politik. Gerakan ini memiliki ciri khas, yaitu sangat dominan dalam menggunakan issu-issu yang bersifat elitis dan terkait masalah politik praktis, seperti: pemilihan umum, pilkada, pilcaleg dan prosesi-prosesi lainnya. Gerakan ini akan memiliki sisi positif apabila didudukan sebagai kekuatan oposisi ektra-parlementer. Sisi negatif dari gerakan ini adalah menjadi agen dari kelompok elit politik dan bahkan kepentingan-kepentingan kekuasaan yang menindas. Dengan demikian, gerakan seperti ini tak lebih menjadi underbouw salah satu partai dari pada sebagai organisasi gerakan social, sebaliknya intellectual power bases movement ditandai dengan kuatnya semangat independensi baik secara paradigmatis maupun langkah politis yang ditempuh. Secara paradigmatis, independensi didasarkan atas landasan amanat konstitusi organisasi yang jelas dan secara praksis, independen diartikan sebagai kemampuan untuk menentukan sikap yang relatif otonom ketika berhadapan dengan gerakan yang lain ataupun para pendahulunya. Gerakan ini mendasarkan kekuatan organisasinya pada fungsi-fungsi intelektual sebagai basis untuk mengartikulasikan kepentingan gerakan. Independensi dan intelektualitas merupakan dua karateristik yang melekat kuat dalam citra diri organisasi. Issu-issu yang diangkat tidak hanya issu elit, tetapi juga menyangkut issu yang menjadi kebutuhan rakyat seperti, pengangguran, ekonomi, pendidikan, kebudayaan, penegakan hukum dan HAM dll. Pada titik tertentu, gerakan seperti ini dapat juga berbentuk gerakan advokasi kebijakan. Intelektual power juga mensyaratkan adanya kapasitas intelektual yang cukup untuk meningkatkan daya tangkapnya terhadap persoalan-persoalan kerakyatan serta mampu mengartikulasikannya ke dalam institusi pemerintahan, sudah tentu membutuhkan orang yang bersedia untuk bersuara di arena pemerintahan (strategi parlementer) dengan tetap mengedepankan prinsip rasionalitas, prosedural, serta memprioritaskan pada kemaslahatan bersama, menandaskan gerakan seperti ini menghendaki adanya sinergitas dari semua lapisan masyarakat, dari masyarakat bawah hingga masyarakat atas, karena baik dimensi struktural maupun cultural merupakan dua objek formal dan sistem sosial yang tak terpisah satu sama lain. Kedua entitas tersebut (struktur dan kultur) merupakan arena dimana transformasi harus dilakukan. Jika dikaitkan dalam modernisasi masa kini, adalah kapitalisme sebagai ideology hegemonic yang mendominasi kedua ranah tersebut, dan lebih luasnya pada kehidupan masyarakat dunia ketiga. Pendekatan hegemoni massa meliputi jenis pendidikan yang diberikan di sekolah, media masa, dan semua jenis lembaga untuk tidak menyebut institusi-institusi pemerintah (Negara); Negara turut memberikan kontribusi terhadap carut-marutnya kehidupan sosial. Kondisi tersebut lah yang melatari agar secepat mungkin sebuah manifesto gerakan transformatif dikonsolidasikan.<br />Dalam definisinya, transformasi sosial dimaknai sebagai penciptaan hubungan ekonomi, politik, kultural, dan lingkungan yang secara mendasar baru dan lebih baik. Dalam hal ini, transformasi sosial dianggap sebagai salah satu model atau bentuk alternatif tentang perubahan sosial yang merupakan tujuan utama dari gerakan, dan tidak dimaknai sebagai perilaku kolektif yang secara potensial berbahaya dan mengancam stabilitas cara hidup yang mapan. Lebih jauh lagi, transformasi sosial harus dipandang sebagai gerakan terorganisir dengan tujuan, strategi dan metodologi yang diformulasikan secara jelas berdasarkan analisis sosial yang kuat. Kiranya HPMW yang merupakan wadah pemersatu, dapat dengan benar mengasosiasikan dan memposisikan diri sebagai organisasi yang mengusung transformasi sosial yang berbasis pada intelektualitas (intellectual power based movement), sehingga benar-benar mahasiswa dan pelajar Wapulaka tercermin sebagai kaum intelektual organic (biasanya diperlawankan dengan intelektual tradisional). Semoga!!!</p>\n<p>&nbsp;</p>\n<p><strong>Oleh Asrun, Ketua Umum Himpunan Pelajar Mahasiswa Wapulaka</strong></p>\n<p>&nbsp;</p>', '2014-10-29', 'admin'),
(8, 'Peluang Bahari Menuju Pariwisata Pedesaan', '<p>Secara umum pariwisata di maknai sebagai totalitas produksi dan konsumsi barang dan jasa yang timbul akibat perjalanan yang dilakukan seseorang ke suatu tempat yang bukan domisilinya dengan maksud utama untuk rekreasi. Apabila merujuk laporan badan-badan kepariwisataan internasional dan nasional, maka kita akan sampai pada satu kesimpulan singkat: pariwisata telah menjadi bagian yang tidak terpisahkan dari siklus hidup hampir setiap orang. Dengan jumlah penduduk dunia sekitar 6,627 miliar pada tahun 2007 dan jumlah wisatawan mencapai 903 juta orang pada tahun yang sama, maka dipastikan 1 dari setiap 7 orang penduduk dunia terlibat aktif di dalam perjalanan wisata. Rasio ini akan semakin tinggi jika jumlah penduduk yang melakukan wisata dalam negeri ikut dihitung. Dinamika ini juga di tandai oleh tingkat pertumbuhan pariwisata sebesar 6 % pada periode 2006-2007 (UNWTO, 2008), suatu angka yang cukup fantastik. Tidak berlebihan jika banyak pengamat mengatakan pariwisata telah menjadi gaya hidup baru bagi kelompok masyarakat luas. Di Indonesia sendiri, pariwisata merupakan sektor yang sangat potensial untuk dikembangkan mengingat besarnya potensi pariwisata di Indonesia. Kegiatan pariwisata di Indonesia telah berkembang dengan sangat pesat serta memiliki prospek yang cerah untuk dapat dikembangkan menjadi salah satu alat penopang perekonomian negara karena sektor pariwisata Indonesia merupakan pendapatan ketiga terbesar bagi devisa negara setelah minyak bumi dan gas.&nbsp;</p>\n<p>Pencarian objek wisata yang unik dan beragam mengakibatkan daerah-daerah terisolir, kawasan pedalaman, desa-desa tradisional, desa-desa nelayan dan pantai tidak luput dari sasaran kunjungan wisatawan. Desa wisata pada hakikatnya harus memiliki hal yang penting, antara lain: <br />1. Keunikan, keaslian, sifat khas.<br />2. Letaknya berdekatan dengan daerah alam yang luar biasa.<br />3. Berkaitan dengan kelompok atau masyarakat berbudaya yang secara hakiki menarik minat pengunjung.<br />4. Memiliki peluang untuk berkembang baik dari sisi prasarana dasar, maupun sarana lainnya.</p>\n<p>Salah satu sumber daya yang potensial dikembangkan adalah budaya lokal. Sebagai contoh, Kuta,Bali, di akhir tahun 1960-an hanyalah sebuah desa nelayan dan pertanian tradisional dan memberikan sumbangan kecil bagi perekonomian bali. Tetapi, hanya dalam 5 tahun berselang, desa tersebut mampu menjadi ikon penting pariwisata bali dan indonesia (Hussey, 1989). Hal yang sama juga dialami kota kecil Vollendam, Belanda, berbekal sejarah sebuah desa nelayan dan tetap mengandalkan keunikan budaya lokal, terutama pakaian asli keluarga nelayan, aktifitas penangkapan ikan dan ritual melaut sebagai daya tarik wisata, kota kecil (desa nelayan) tersebut menjelma menjadi salah satu objek wisata favorit di pantai utara negeri belanda tersebut. Selain itu di kab.sleman yogyakarta, berdasarkan data tahun 2006 setidaknya ada 30 desa wisata walaupun tidak semuanya dimasuki wisatawan, yang produk wisatanya relatif homogen atau hampir sama setiap desa. Yang menarik untuk dikaji, ada beberapa desa wisata di jogja kerajinan tangan masyarakat bahan bakunya terbuat dari kelapa (dari daun sampai batangnya) dan cangkang(rumah)nya siput (kamanu-manu, budho,kabheka-bheka, dll), bahan baku tersebut sangat banyak di wapulaka. <br />Di Wapulaka (desa bahari) masuk kategori kriteria desa wisata sebagaimana penjelasan di atas. Dengan potensi yang ada bisa mengikuti jejak Bali dan Vollendam yang awalnya hanya perkampungan nelayan, sudah cukup wapulaka sebagai tempat wisata berskala daerah/nasional, sedangkan untuk skala internasional seperti bali itu terlalu jauh. Wapulaka selalu dilirik oleh pemda kabupaten buton yang merupakan pengembangan daerah wisata di buton. Salah satu contoh, setiap ada kegiatan penunjukkan lokasi syuting dengan background keindahan alam maka pihak pemda buton selalu merekomendasikan wapulaka (desa bahari) sebagai tempat lokasi syuting pengambilan gambar film tersebut diantaranya si bolang 1, si bolang 2, potret budaya wapulaka, film barakati yang dibintangi Fedy nuril (pemeran film ayat-ayat cinta), dan sebagainya. Potensi dan objek kepariwisataan di wapulaka yang dapat dikembangkan yaitu sebagai berikut:</p>\n<p>1. Wisata Alam<br />a) Keindahan pasir dan pantai<br />Pengembangan pantai sebagai tempat wisata merupakan jasa lingkungan dari alokasi sumberdaya yang cenderung akan memberikan manfaat pada kepuasan batin seseorang dikarenakan mengandung nilai estetika tertentu. Pantai di sepanjang kampung wapulaka dan pantai lasoka serta pulau-pulau kecil di pantai lagunci sangat potensi untuk dijadikan tempat wisata. Dengan mempromosikan sebagai tempat wisata maka jangan kita biarkan pantai kita kotor dan tercemar. Masyarakat harus sadar dan bertanggungjawab tentang kebersihan lingkungan pantai sehingga tercipta lingkungan yang menyenangkan yang dapat mendatangkan wisatawan untuk menikmati keindahan pantai dan pasir putih kampung wapulaka. Bagi kita penduduk setempat sudah merupakan hal yang biasa melihat pemandangan pantai di sekitar kita, tapi bagi kalangan orang yang jauh dari pantai dan orang perkotaan yang hampir tiap jam diserbu oleh produk-produk modernisme, maka keindahan pantai dan aktivitas masyarakatnya tetaplah di anggap sebagai atraksi yang unik.<br /> <br />b) Pesona terumbu karang<br />Potensi terumbu karang kehidupan di bawah air sekitar laut lagunci sangat mempesona. Di daerah tersebut dijadikan sebagai wilayah coremap, yang tujuannya untuk melindungi kehidupan di bawah laut sehingga ekosistem air laut tersebut dapat terjaga. Salah satu fungsi adanya perlindungan laut tersebut bahwa proses rantai makanan dalam ekosistem air laut tersebut dapat terjaga, terumbu karang akan tumbuh dengan indahnya sehingga menjadikan sarang bertelurnya atau berkembang biaknya ikan. Lama-kelamaan ikan menjadi berkembang dan akan banyak sehingga akan terasa manfaatnya oleh masyarakat karena ikan-ikan tersebut tidak selamanya akan berada di wilayah coremap. Salah satu contoh beberapa jenis ikan yang awalnya telah hilang dari laut wapulaka, maka dengan adanya coremap ikan-ikan tersebut kembali bermunculan menghiasi kehidupan dibawah laut terumbu karang wapulaka. <br />Fungsi yang lain, laut di sekitar itu terumbu karangnya akan terawat sehingga kelihatan indah di bawah laut serta ikan-ikan pada berteduh di situ. Hal ini pernah saya saksikan sendiri pada tahun 2010 saat memasang pelampung pembatas daerah coremap bersama tim coremap, sempat menyelam menyaksikan daerah coremap yang selama ini kita jaga dan lindungi. Ternyata hasilnya keindahan bawah laut kita sudah hampir sama dengan keindahan laut bonaken dan pulau hoga wakatobi yang saya lihat di televisi, (Ngapain jauh-jauh ke bunaken/wakatobi, ke bahari aja,,,,hahaha). Saat menyelam sempat menyaksikan terumbu karang, macam-macam jenis ikan serta seekor penyu (koila) besar. Pemandangannya sangat beda jauh dengan tempat lain misalnya laut di tengah kampung atau di lapaompu atau selama saya menyelam/berenang disaat masa kecilku belum pernah melihat seindah itu. Sempat kami mencoba mengusir penyu tersebut, ternyata tidak lari dari lingkungan coremap. Pada biasanya penyu jika melihat orang langsung lari ke daerah laut yang dalam, tapi yg saya lihat itu agak jinak. Menurut keterangan Tim pembina coremap (bukan kata saya), parameter sebuah coremap apabila di daerah bawah laut tersebut ada penyu dan tidak akan kemana-mana serta selalu menghiasi indahnya surga laut tersebut bersama ikan-ikan yang lain, maka ini berarti kategori berhasil. Dan ternyata bahwa daerah coremap desa Bahari kecamatan sampolawa masuk nominasi desa wisata terbaik di antara sejumlah desa binaan Coremap II Buton yang termuat dalam koran lokal. (Sumber baubaupos, 11 agustus 2011).<br />Pertanyaannya: Masih kah kita memelihara terumbu karang itu? Masih adakah penyu yang menghiasi indahnya surga laut kita dilagunci?<br />c) Gunung Wakamouse.<br />Konon kabarnya pada zaman dahulu gunung wakamouse dijadikan sebagai tempat memata-matai musuh karna tempatnya yang tinggi dan strategis. Nah zaman sekarang gunung wakamouse salah satu aset kita sebagai tempat wisata, Gunung ini dengan hawa udaranya yang dingin, segar dan dapat menikmati pemandangan hamparan jarak jauh keindahan laut biru sepanjang mata memandang serta pantai lasoka di bawahnya. Jika berada di puncak gunung ini, angin yang bertiup agak kencang dan stabil sehingga membuat kita kedinginan (kayak suasana di eropa aja,,,wkwkw), angin di puncak gunung ini bisa dijadikan sebagai pembangkit listrik tenaga angin, jadi tapasasie listrii pimbali. Dan tak lupa pula jika berada di gunung ini maka dapat melihat semua daerah wilayah buton selatan. <br />Pada saat saya berkomunikasi dengan Cecep purwana (Mahasiswa Unhalu yang KKN di bahari tahun 1989/1990) orang bogor belum lama ini, beliau bercerita waktu pergi rekreasi di bali, di saat melihat pemandangan keindahan alam laut dan pantai bali, sempat memory ingatannya bekerja cepat seakan-akan bahwa laut dan pantai yang dia lihat di bali saat itu ada kesamaannya di tempat yang lain. Sempat beliau berpikir, &ldquo;Dimana ya daerah yang sama dengan bali laut dan pantainya yang pernah saya kunjungi&rdquo;? lama-kelamaan beliau baru sadar ternyata daerah itu adalah Bahari (wapulaka). Kesan pertama menurut ceritanya beliau, di saat berada di puncak gunung wakamouse dapat melihat pemandangan gunung, laut dan pantai yang indah dan mempesona serta ditambah dengan hawa yang dingin. Ingkita mea bhabiasamo hulanomo bhita-bhita topitapo ikatobha, hawai mia aga&rsquo;ano noita&rsquo;e hal yg unik,,,hehehe.<br /> <br />2. Wisata Budaya dan seni <br />Pesta adat baruga (riapa) dan seni tradisional dapat dijadikan wisata budaya setiap tahunnya. <br />a) Budaya<br />Adat dan tradisi budaya merupakan kearifan lokal yang menjadi salah satu pilar pembangunan manusia seutuhnya. Selama delapan malam berkumpul di Baruga, Para tokoh adat dan parabela telah mengevaluasi dan mengenang kembali proses-proses leluhur dalam meletakkan dasar-dasar adat budaya kampung wapulaka. Salah satu objek budaya terdepan yakni berkumpul di Baruga sesuai dengan visi misi Kabupaten Buton sebagai kawasan bisnis dan mengedepankan budaya lokal sebagai jati diri, sumber aspirasi pembangunan dan bermartabat.<br />Tokoh Adat Wapulaka, La Ode Alirman SH, menjelaskan ritual adat wapulaka berjalan selama satu pekan (delapan malam) dilaksanakan di Baruga, namun acara puncaknya disebut tradisi Posambua yang mana gadis-gadis desa menyuapi bapak-bapak dan pemuda Bahari. Tatanan dan tradisi Posambua yang telah disepakati leluhur wapulaka mempunyai nilai makna sebagai alat pemersatu yang membentuk jiwa dan kepribadian manusia. Selain itu, terkandung makna manusia yang saling melayani cinta kasih dalam rumah tangga dan mempererat ikatan batin antara sesama sebagai satu rumpun keluarga. Serta menjalin silahturahmi yang merantau di negri orang akan berdatangan agar tali persaudaraan tetap terjaga. (Sumber Baubaupos, 22 November 2010)<br />Keunikan adat ini tentunya berbeda dengan adat di kampung-kampung yang lain, sehingga mengundang para pengunjung, peneliti, wartawan dan sesepuh adat kampung lain untuk menyaksikan budaya tersebut.<br />b) Seni<br />Wapulaka kayak akan tari tradisional dan olahraga tradisional. Tari tradisional mencangkup tari pangibi, badenda, lareangi, gule-gule, rambiano ganda, dan lain-lain. Sedangkan olahraga tradisional diantaranya kaleko, lebha, manari tolu jiku, kaodha-odha, kaase-ase, manca, dan lain-lain. Diantara yang disebutkan, yang diperlombakan cuma tari pangibi. Malah saya penasaran dengan &lsquo;manari tolu jiku&rsquo; seperti apa gerakannya, karna saya belum pernah saksikan. Apalagi generasiku ke bawah sudah tidak tau lagi olahraga tradisional tersebut. (Masukan buat panitia Riapa/baruga wapulaka kedepan: Tolong diperlombakan kesenian tradisional, jangan cuma pangibi) Seni tari dan olahraga tradisional ini sudah saatnya kita lestarikan/pertahankan, karna itu merupakan aset budaya kita yang mempunyai makna, bernilai jual dan mengandung kreatifitas, sehingga orang lain yang melihatnya menjadi tertarik, dan menjadi objek wisata budaya di kampung kita. Para pengunjung atau wisatawan datang ke wapulaka akan menyaksikan tari dan olahraga tradisional yang unik yang selalu diperlombakan setiap tahunnya, sehingga menjadi ciri khas tersendiri bagi budaya wapualaka. Nciano wite namipausi jogea (budaya barat) moia mia bundo, sauri katoaruno mompono lapanga, hawai namipausi uka kesenian tradisional oleh para wisatawan yang tertarik dengan kesenian tersebut. <br />3. Infrastruktur tata kelola desa<br />Desa bahari pernah menjuarai lomba desa tingkat propinsi tahun 2005, sebelum itu pernah mendapatkan juara 2 tahun 80-an. Saat bupati buton masih di jabat oleh Bapak Safei Kahar, beliau selalu mengatakan ke desa-desa lain jika mau studi banding tidak usah jauh-jauh ke bahari aja. Bukannya kita menyombongkan diri atau besar kepala dengan pernyataannya pak bupati, tapi realita yang berbicara bahwa di kampung wapulaka dari segi fisik penataan rumah penduduk tertata dengan rapi dan teratur serta perkantoran-perkantoran desa berada dalam satu area (desanya sebelum mekar), seakan-akan sudah dirancang dalam penataan desa. Salah satu kelemahan desa kita adalah nonfisik yaitu administrasi desa masih kacau, semoga dengan adanya pemekaran yang sudah menjadi tiga desa, maka target utama adalah menertibkan administrasi desa. Jika nonfisik tersebut telah terpenuhi maka kita akan menjadi desa teladan dan desa wisata yang selalu di kunjungi oleh wisatawan.<br />Ada beberapa alasan penting pengembangan pariwisata pedesaan di wapulaka yaitu:<br />Pertama, Pariwisata pedesaan mampu meningkatkan partisipasi masyarakat setempat. Pengembangan pariwisata pedesaan memiliki kekuatan yang terandalkan karena produk itu sendiri di datangi oleh &ndash; bukan diantarkan kepada &ndash; wisatawan, sehingga terbuka kesempatan yang lebih besar untuk memperluas transaksi jasa di lokasi.<br />Kedua, Pariwisata pedesaan merupakan satu dari sedikit pilihan yang laik untuk mengakselerasi perkembangan ekonomi pedesaan. Misalnya perbaikan infrastruktur jalan raya karena wapulaka sudah menjadi desa wisata merupakan pengembangan daerah wisata kabupaten buton, aliran modal masuk dari pemerintah, dan kewirausahaan akan berkembang, misalnya karna banyak pengunjung maka masyarakat memanfaatkan bahan baku yang ada untuk membuat kerajinan tangan, sehingga dijual ke pengunjung sebagai ole2 dari wapulaka.<br />Ketiga, usaha pariwisata pedesaan sebaiknya mampu menekan potensi pencemaran lingkungan dan eksploitasi sumber daya lokal. Salah satu pilar kekuatan pariwisata pedesaan adalah alam yang relatif asri dan lestari. Masyarakat tidak lagi membuang sampah dan buang air besar ke pantai, masyarakat tidak menangkap ikan dengan bahan peledak dan zat kimia, tidak membuang oli kotor sembarangan di pantai/laut. Mengadakan lomba kebersihan antar lingkungan dengan anggaran yang cukup. (InsyaAllah dana dari pusat akan cair tahun 2015,,,, :) )<br />Keempat, Meningkatkan kesadaran masyarakat pentingnya melestarikan budaya dan tari tradisional. Warisan budaya yang dapat dikembangkan menjadi atraksi pariwisata, karena aset tersebut menampilkan keunikan tempat/lokasi, memberikan pengalaman yang berbeda bagi pengunjung dan menciptakan citra yang menarik bagi tradisi, latar belakang etnik dan lanskap destinasi.</p>\n<p><br /><strong>Oleh Raufun, Mahasiswa Pasca Sarjana Universitas Brawijaya Malang.</strong></p>', '2014-10-31', 'jogja'),
(10, 'Membangun Nilai-Nilai Budaya Wapulaka', '<p><strong>Acara Pesta Adat Posambua Dalam Perspektif Ekonomi (Kajian Filosofi Peranan Pesta Adat Posambua Terhadap Peningkatan Ekonomi Wapulaka)&nbsp;Oleh Jimy Rahim.</strong></p>\n<p><strong>Prolog,</strong>&nbsp;Pada abad ke-19 Hongkong telah tumbuh menjadi salah satu pusat Industri dunia yang awalnya hanyalah merupakan perkampungan nelayan. Kemajuan Hongkong menimbulkan tanda tanya besar oleh kalangan dunia, namun setelah dikaji lebih jauh ditemukan jawabanya dalam teori modernisasi melalui Neo-confusionisme yang bertanggunjawab terhadap keberhasilan pembangunan karena nilai-nilai dan pranata yang dikembangkan oleh budaya Neo-confusionisme telah mampu membentuk dan mendorong komitmen individu untuk memiliki etika kerja tertentu dan loyalitas yang tinggi terhadap perusahaan dan ekonomi masyarakatnya, dan aspek familiar yang dikembangkanya telah mampu mengeruk dan mengumpulkan seluruh tenaga dan dana yang mereka miliki melalui jaringan keluarga demi kemajuan Hongkong (Suwarsono dan Alvin, 1991:234).<br />Pesta adat Posambua yang digelar 3 tahun sekali oleh masyarakat Wapulaka di Desa Bahari telah berlangsung dalam kurun waktu yang lama. Acara tersebut dapat dikatakan sebagai acara Pesta adat terbesar, termegah dan sakral dibandingkan dengan acara pesta adat tahunan. Bagaimana tidak disebut demikian karena pesta adat Posambua telah menyita perhatian orang Wapulaka dimana saja ia berada bahkan masyarakat desa-desa tetangga.Jika dilihat dari sudut pandang ekonomi, biaya acara pesta adat Posambua biayanya ditaksir mencapai paling kurang setengah miliar. Taksiran biaya didalam acara pesta adat Posambua, panitia acara telah mematok setiap peserta minimal mengeluarkan biaya sebesar lima ratus ribu rupiah jika dikali dua ratus peserta nilainya mencapai seratus juta rupiah belum lagi pengeluaran dampak tidak langsung dari acara tersebut jika setiap rumah mengeluarkan dana satu juta rupiah kali dengan empat ratus rumah maka akan mencapai angka empat ratus juta rupiah, belum lagi dengan biaya lain-lain, perkiraan pengeluaran acara pesta adat Posambua tersebut melebihi dari perkiraan awal bahkan bisa mencapai enam ratus juta rupiah, angka yang cukup fantastis hanya untuk acara setengah hari pesta adat Posambua (Angka tersebut diatas bukan angka pasti tapi angka perkiraan pada acara Posambua Tahun 2013).<br />Pengeluaran diatas berbanding terbalik dengan realitas ekonomi masyarakat Wapulaka di Desa Bahari khususnya yang menggantungkan ekonominya pada ekonomi sektor informal perikanan tangkap sirip ikan hiu. Dua tahun terakhir ini sektor ekonomi perikanan tangkap sirip ikan hiu sedang mengalami penurunan penghasilan mulai dari persoalan fishing ground (daerah tangkap) sampai pada persoalan pasar. Kondisi tersebut berimplikasi pada menurunnya produktivitas nelayan Wapulaka yang berakibat langsung pada menurunnya daya beli masyarakat Wapulaka. Namun implikasi itu tidak untuk momentum acara pesta adat Posambua. Fenomena acara pesta adat Posambua menggambarkan hal yang berbeda jika mengacu pada data-data empiris diatas.<br /> Angka pengeluaran minimal setengah miliar dalam acara pesta adat Posambua diatas idealnya menggambarkan kondisi produktivitas nelayan Wapulaka menunjukan angka yang tingggi. Tapi demi atas nama acara pesta adat nuansanya berubah dan persoalanya menjadi berbeda jika hal tersebut dilihat dari sudut pandang budaya. Karena pesta adat Posambua berhubungan dengan tradisi lelehur sehingga berapapun harganya acara pesta adat Posambua tetap diselenggarakan untuk melestarikan kekayaan warisan budaya leluhur. Sampai disini muncul pertanyaan lalu apa manfaat dan makna yang diambil dari acara pesta adat Posambua khususnya bagi generasi saat ini dalam perspektif ekonomi? dan apakah acara pesta adat Posambua dapat berperanan membangun konstruksi nilai-nilai budaya Wapulaka terhadap peningkatan ekonomi Wapulaka?. Pertanyaan ini akan menjadi latarbelakang masalah dalam tulisan ini dan menjadi alasan mengapa tulisan ini diangkat.<br />Menurut Muhammad Tholhah Hasan dalam suatu sistim sosial budaya setidaknya ada empat komponen yang saling terpadu yakni sistim idiologi, sistim sosial, sistim teknologi dan sistem bahasa. Dalam sistim idiologi setidaknya ada tiga aspek, pertama aspek kosmologi yaitu seperangkat konsepsi yang mengarahkan kita melihat dan mengintepretasikan dunia sekelilingnya melalui pengalaman dan lingkungan. Kedua, aspek pola sikap menentukan kearah mana suatu aksi atau tindakan akan berlangsung dengan suatu sikap dan penilaian tertentu. Ketiga, aspek sistim nilai merupakan pandangan dan penilaian terhadap dunia sekelilingnya, merupakan mekanisme mental yang ada pada diri seseorang, baik sebagai warga masyarakat dan pendukung kebudayaan masyarakat atau individu dengan kepribadian tertentu.<br />Merujuk pada konsep diatas acara pesta adat Posambua seharusnya memiliki sistim idiologi yang mampu memberikan nilai-nilai budaya secara positif terhadap kemajuan ekonomi masyarakat Wapulaka. Dari sistim idiologi itulah kajian filosofi nilai-nilai budaya dalam perspektif ekonomi dimulai. Dengan kata lain nilai-nilai budaya akan muncul secara positif jika acara pesta adat Posambua tersebut digali dan diberdayakan oleh penganutnya. Proses penggalian adalah mencari makna dibalik simbol-simbol dalam rangkaian pesta adat Posambua sementara pemberdayaan adalah proses berubahnya pemaknaan dibalik simbol-simbol rangkaian pesta adat Posambua kearah tindakan (pimingkui).<br />Menurut La Ode Alirman,SH, seorang tokoh budaya di Sampolawa mengatakan dihadapan peserta acara Posambua November Tahun 2013 bahwa Posambua dimasa yang lalu digunakan sebagai acara pertemuan muda-mudi sehingga pada saat itu momentum Posambua dimaknai sebagai ajang untuk mencari jodoh karena Posambua adalah satu-satunya sarana pertemuan muda-mudi dan diterima sebagai sebuah tradisi ditengah-tengah masyarakat Wapulaka kala itu.<br /> Penulis tidak mempunyai data yang lengkap tentang prosesi acara pesta adat Posambua namun intinya ingin menyajikan gambaran hubungan atau peranan secara filosofis nilai-nilai acara adat Posambua yang telah diterima oleh masyarakat Wapulaka dari dulu hingga sekarang dan belum memberikan kemajuan bagi nilai-nilai budaya Wapulaka secara optimal dalam konteks kekinian. Kalau Posambua dimasa lampau dimaknai orang Wapulaka sebagai sarana untuk mencari jodoh, bagaimana dengan konteks kekinian apakah masih relevan? Tentu sudah tidak, ditengah pesatnya kemajuan era informasi saat ini Hand Phone (Hp) telah mengambil peran sangat penting sebagai sarana ajang perjodohan. Bahkan Hp juga tidak hanya mampu menjodohkan orang tetapi juga dapat menceraikan pasangan yang baru saja menikah sebulan lamanya.Artinya sarana Posambua telah diambil alih oleh sarana Hand Phone (HP) jika kita maknai Posambua sebagai ajang mencari jodoh dimasa sekarang.<br />Berikut makna pesta adat Posambua dilihat dari rangkaian simbol-simbol adat Posambua dalam perspektif ekonomi :<br />1. Secara keseluruhan simbol Tala yang berisi segala jenis makanan ciri khas Wapulaka (campuran tradisional dan moderen) dan Uang Tala biasanya dibungkus dengan Lenso adalah makna ekonomi yakni dari unsur materialnya.<br />Dimasa yang lalu dipastikan Tala tersebut mungkin hanya berisi sangkola, kambose, kajepe, kancunu, kaparende, pidadi kakukurisa, roonato dan kandawu kapaea serta uangnya mungkin hanya 5000 rupiah dan minumanya dari air sumur bayangkan kalau jenis makanan dan minuman diatas kita sajikan dalam Posambua saat ini pasti akan terjadi kekisruhan dalam acara Posambua setidaknya pasti ada insiden kecil. Mungkin ada yang beranggapan ia sudah gila atau setidaknya ada orang mengatakan mungkin kesurupan kali atau padamo uka karikee kemampuanya. Simbol Tala dan uang Tala menggambarkan peningkatan ekonomi Wapulaka dari masa kemasa (Produktivitas).<br />2. Posambua sebagai acara inti dimana seorang gadis posambu laki-laki dan umumnya orang tua, rangkaian tersebut memenuhi makna ekonomi yakni dari unsur Imaterial. Simbol seorang gadis posambu adalah Spirit (motivasi) dan Harapan sedangkan simbol orang tua memberikan uang Tala adalah Tanggunjawab (Tanggungjawab orangtua terhadap dirinya, istri dan anak-anaknya untuk memenuhi kebutuhan hidupnya), pemenuhan kebutuhan hidup memerlukan spirit (motivasi), harapan dan tanggungjawab. Ketiga variabel tersebut berkaitan dengan ekonomi.<br />Seandainya acara Posambua yang menjadi peserta adalah seorang nenek sebagai Posambu dan anak laki-laki makna apa yang akan diambil. Mungkin maknanya anak laki-laki kalau sudah besar harus mandiri tapi seorang nenek yang Posambu sulit dimaknai untuk spirit dan harapan karena yang dibicarakan paling seputar kolalano cuu, wici, tonga dan lain-lain artinya semangat dan harapan hidup sudah tidak ada lagi tentu simbol nenek tidak bisa dimaknai untuk peningkatan ekonomi mungkin yang paling cocok tema kebahagiaan hidup di Akhirat.</p>\n<p>Dua point diatas menjadi entry point untuk membangun konstruksi nilai-nilai budaya Wapulaka dalam perspektif ekonomi. Entry point tersebut akan berdaya manakala ada upaya generasi saat ini menjadikan makna dari simbol-simbol pesta adat Posambua kearah sikap dan tindakan dalam kegiatan ekonominya sehari-hari dan menjadikanya sebagai identitas diri dari makna yang diturunkan oleh acara pesta adat Posambua. Dengan demikian acara pesta adat Posambua yang digelar setiap 3 tahun secara langsung akan berimplikasi terhadap peningkatan ekonomi Wapulaka dimasa-masa mendatang. Posambua akan dimaknai oleh setiap generasi Wapulaka sebagai instrumen ekonomi yaitu orang yang memiliki harapan adalah orang yang memiliki semangat atau spirit (Motivasi) dan selalu dilandasi rasa tanggungjawab. Sebagaimana dalam teori ekonomi, harapan akan melahirkan orang yang selalu mau berusaha, berusaha akan melahirkan kreativitas, kreativitas akan melahirkan inovasi, inovasi akan melahirkan produktivitas dan akhirnya produktivitas akan melahirkan daya saing.&nbsp;</p>\n<p>Kedepan acara pesta adat Posambua diharapkan maknanya dapat digali dan diberdayakan agar generasi penerus mendapatkan manfaat dan nilai-nilai budaya positif bukan mustahil budaya Posambua akan membawa dan mengantar masyarakat Wapulaka selangkah lebih maju dan berdaya saing dari masyarakat lain di tengah-tengah masyarakat Buton khususnya dan umunya masyarakat di Indonesia seperti budaya Neo-confusionisme yang mengantar Hongkong dari perkampungan nelayan menjadi pusat industri dunia dan budaya Harmoni yang mengantar Jepang menjadi kekuatan ekonomi dunia, dalam prolog dan epilog yang disajikan dalam tulisan ini, Semoga.</p>\n<p><strong>Epilog,</strong><br />Iwan Setiawan,SE,MBA,M.Hum, selama tiga tahun meneliti kinerja sumber daya manusia perusahaan Jepang menyimpulkan salah satu kekuatan Jepang dalam memajukan bangsanya dan menjadi salah satu negara yang disegani oleh Eropa dan Amerika bahkan Dunia adalah dalam setiap organisasi atau lembaga, Jepang menerapkan manajemen Konsensus yang mengandung nilai-nilai budaya Harmoni, yang mana nilai-nilai tersebut bersumber dari nilai-nilai budaya asli masyarakat dan bangsa Jepang.<br />Dari berbagai sumber mengatakan bahwa nilai-nilai sosial budaya Jepang memiliki karakteristik sikap dan perilaku sebagi kunci dari akar kekuatan Jepang dalam memajukan bangsa dan negaranya yaitu : (1) Emulasi yaitu hasrat untuk selalu menyamai dan melebihi orang lain, (2) Konsensus yaitu kebiasaan untuk kompromi bukan konfrontasi, (3) Futurism, yaitu pandangan jauh kedepan, (4) Kualitas, yaitu mutu menjadi prioritas utama, (5) Kompetesi (daya saing) yaitu sumber daya manusia dan produk, (Sudjana, 2006:403). Dengan karakteristik tersebut Jepang tetap memiliki identitas diri atau jati diri bangsa yang selalu tampil sebagai bangsa asli yang lahir dari bangsanya sendiri dan sangat berbeda dengan kebudayaan bangsa lain walau sesungguhnya bangsa Jepang memiliki kemampuan meniru bahkan hampir 80% kemajuan IPTEK mereka berasal dari As dan Eropa tetapi 20%nya mampu mereka adopsi dari cara mereka sendiri itulah yang membedaknya. Kemampuanya untuk meniru dari luar selanjutnya mereka adopsi demi kemajuan bangsanya sebagai bangsa yang mempunyai karakteristik asli nilai-nilai budaya Jepang menjadi kata kunci majunya negara Jepang.</p>', '2014-10-31', 'jogja');

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE IF NOT EXISTS `cabang` (
  `kd_cbg` char(3) NOT NULL,
  `nama_cbg` varchar(100) NOT NULL,
  `alamat_cbg` varchar(255) NOT NULL,
  `th_berdiri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`kd_cbg`, `nama_cbg`, `alamat_cbg`, `th_berdiri`) VALUES
('jog', 'Cabang Yogyakarta', 'NG1/199 RT 09 RW 02 Ngampilan Yogyakarta', '2014-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id_comment` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
`id` int(11) NOT NULL,
  `nama_foto` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `nama_foto`, `foto`) VALUES
(1, 'jalan2 dibonbin tahun 2009', '1.jpg'),
(2, 'jalan2 diborobudur wisuda taher', '2.jpg'),
(3, 'Rekreasi dipantai paris dalam rangka musylub hipemwa', '3.jpg'),
(4, 'foto bersama anggota hipemwa didepan UGM', '4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
`id_pesan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
`id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `profil` text NOT NULL,
  `kd_cbg` char(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `judul`, `profil`, `kd_cbg`) VALUES
(1, 'Profil himpunan pelajar mahasiswa wapulaka', '<p>Organisasi pelajar dan mahasiswa Wapulaka sebenarnya sudah ada sejak belasan tahun yang lalu. Seperti Ikatan Keluarga Pelajar Bahari atau biasa disebut IKPB yang berdiri pada tahun 2000 di Kota Bau-Bau, kemudian Himpunan Pelajar Mahasiswa Mosolo dan Sinaulu Jaya atau HIPMMOSJA yang berdiri pada tahun 2002 di Kendari, dan Ikatan Pelajar Mahasiswa Mano atau IPMM yang juga berdiri sekitar tahun 2000-an di Ternate. Tetapi setiap organisasi ini masih berdiri sendiri-sendiri yang beranggotakan pelajar dan mahasiswa yang berasal dari daerah-daerah tertentu saja, misalnya IKPB hanya beranggotakan pelajar keturunan Wapulaka yang tinggal di Bahari saja, kemudian HIPMMOSJA hanya beranggotakan pelajar dan mahasiswa keturunan Wapulaka dan bukan keturunan Wapulaka yang tinggal di Mosolo dan Sinaulu Jaya saja, dan IPMM hanya beranggotakan pelajar dan mahasiswa keturunan Wapulaka dan bukan keturunan Wapulaka yang tinggal di Mano saja. Kemudian pada tahun 2007 dibentuklah HIMAWA yang diketuai oleh Rusdin P, tapi organisasi ini ruang lingkupnya juga terbatas yaitu hanya beranggotakan mahasiwa Wapulaka yang tinggal di Bahari saja.</p>\n<p>Pada periode kedua tahun 2008-2009 HIMAWA dipimpin oleh Sudiyono, kemudian pada tahun ketiga atau periode 2009-2010 HIMAWA dipimpin oleh Murdini dan pada periode inilah muncul ide untuk menyatukan semua organisasi pelajar dan mahasiswa keturunan Wapulaka disemua daerah. Pada tahun 2013 diadakanlah kongres mahasiswa Wapulaka. Kongres ini mengusung ide utama yaitu persatuan mahasiswa, sehingga organisasi pemersatu yang dulu bernama HIMAWA berubah nama menjadi Himpunan Pelajar Mahasiswa Wapulaka atau HPMW. Hal demikian dimaksudkan untuk mengakomodasi pelajar keturunan Wapulaka. HPMW merupakan organisasi etnis Wapulaka yang melingkupi Wapulaka Bahari, Wapulaka Mosolo, Wapulaka Mano, Wapulaka Taliabo, dan Wapulaka Loseng. Pada periode pertama HPMW ini pengurus hariannya adalah Irwan sebagai ketua umum, Sudiryanto sebagai sekretaris umum, dan Janaria sebagai bendahara umum.</p>\n<p>Kemudian pada tahun 2014 tepatnya pada tanggal 31 Juli 2014 di adakanlah kongres perdana Himpunan Pelajar Mahasiswa Wapulaka di Balai Desa Bahari yang berlangsung sekitar 4 hari dan keputusan kongres mengamantakan saudara Asrun sebagai ketua umum periode 2014-2015&nbsp;</p>', 'pb'),
(2, 'Profil cabang yogyakarta', '<p>Pelajar dan Mahasiswa merupakan bagian generasi muda bangsa yang sadar akan hak dan kewajiban, sadar akan peran dan tanggunjawab moral dan intelektual terhadap bangsa Indonesia dalam mewujudkan cita-cita bangsanya, tentunya melalui berbagai macam tantangan dan problema yang harus diatasi baik secara moril maupun materil. Masalah dan problema tersebut menuntut untuk ditangani secara kolektif dengan bersandar pada kearifan lokal sebagai inti bangunan kebangsaan kita sehingga hal ini akan mewujudkan rasa kebersamaan dalam merealisasikan amanat pembangunan. Dengan kesepakatan tersebut, pelajar dan mahasiswa asal Wapulaka yang melanjutkan studi di Yogyakarta menghimpun diri dalam satu wadah atau organisasi yang aktifitasnya senantiasa berpedoman pada Anggaran Dasar dan Anggaran Rumah Tangga.</p>\n<p>Adapun struktur pengurus himpunan pelajar mahasiswa wapulaka cabang yogyakarta adalah sebgai berikut:</p>\n<p><strong>Dewan Penasehat Cabang</strong></p>\n<ol>\n<li>Dekarno</li>\n<li>Ramadhan</li>\n<li>Inirwan</li>\n<li>Nortin</li>\n<li>Juniarti</li>\n</ol>\n<p><strong>Pengurus Harian:</strong></p>\n<ul>\n<li>Ketua Bidang Pengembangan Wawasan dan Keilmuan : Fahrudin</li>\n<li>ketua Bidang Informasi dan Komunikasi : Astam</li>\n<li>Ketua Bidang Seni dan Olahraga : Julaiman&nbsp;</li>\n</ul>\n<p><strong>Anggota-Anggota Bidang:</strong></p>\n<ul>\n<li>Anggota bidang pengembangan wawasan dan keilmuan</li>\n</ul>\n<ol>\n<li>Mega Suranda</li>\n<li>Asmayanti</li>\n</ol>\n<ul>\n<li>Anggota bidang informasi dan komunikasi</li>\n</ul>\n<ol>\n<li>Sarjono</li>\n<li>Nur Insan</li>\n</ol>\n<ul>\n<li>Anggota bidang seni dan olahraga</li>\n</ul>\n<ol>\n<li>Meliano</li>\n<li>Dahlan</li>\n<li>Iqrawati</li>\n</ol>', 'jog');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `kd_cbg` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `full_name`, `level`, `kd_cbg`) VALUES
('admin', '182fa1663d1c52a57e678cc09b9725b3', 'Administrator', 'Administrator', 'pb'),
('jogja', '7aec1bebe81f429df808a9b466f08642', 'Cabang jogja', 'Operator', 'jog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
 ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`id_angg`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
 ADD PRIMARY KEY (`kd_cbg`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
 ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
MODIFY `id_angg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
