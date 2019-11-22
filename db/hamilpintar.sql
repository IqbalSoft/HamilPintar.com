-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 02:43 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamilpintar`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`) VALUES
(2, 'hamilpintar', '$2y$10$/VXFfXTZBpzKauWM/LnCAOACZovLoCGrPEc0MUq918ZjHRfdvd8aG');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` varchar(30000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `gambar`, `judul`, `isi`) VALUES
(19, '5befeddbc4b27.jpg', '25 Tips menjaga ibu hamil dan Janin Tetap Sehat', 'Hai, mau tau gak? cara menjaga ibu hamil dan janin tetap sehat.\r\n\r\nKami punya 25 tips sehat untuk menjaga kehamilan sepanjang 9 bulan 10 hari nanti, agar janin di kandungan Anda lahir dalam kondisi sehat walafiat.\r\n\r\nTips 1.\r\n\r\nJangan menunda untuk kontrol pada dokter setelah Anda tahu bahwa Anda hamil. Penting sekali lho untuk mengetahui kondisi perkembangan bayi di dalam perut Anda.\r\n\r\nTips 2.\r\n\r\nUbah kebiasaan makan Anda, apabila tadinya doyan makan yang tidak sehat, maka harus makan yang sehat-sehat saja. Hindari junk food, hindari juga minuman bersoda dan beralkohol.\r\n\r\nTips 3.\r\n\r\nBerolahraga agar tubuh tetap bugar dan tidak gampang terserang penyakit. Tubuh yang metabolismenya baik, akan lebih mudah menghadapi problem-problem seperti morning sick dan lain sebagainya.\r\n\r\nTips 4.\r\n\r\nSelalu disiplin mengikuti anjuran dokter sehingga kandungan Anda selalu sehat dan jauh dari masalah.\r\n\r\nTips 5.\r\n\r\nPerbanyak konsumsi sayuran dan buah-buahan sehingga kebutuhan nutrisi dapat tercukupi. Hindari makanan-makanan kalengan yang nutrisinya tak sebanyak makanan segar.\r\n\r\nTips 6.\r\n\r\nRajin membawa buku dan browsing info kehamilan dari sumber yang dapat dipercaya. Jangan hanya mendengarkan apa yang dikatakan orang.\r\n\r\nTips 7.\r\n\r\nBerhenti merokok ya, bunda. Rokok berbahaya sekali untuk perkembangan dan kesehatan janin. Bila Anda meneruskan merokok, bisa-bisa kesehatan si kecil akan terganggu.\r\n\r\nTips 8.\r\n\r\nHindari mengonsumsi sembarang obat kimia dan obat tradisional tanpa berkonsultasi pada dokter Anda.\r\n\r\nTips 9.\r\n\r\nMintalah resep tambahan atau multivitamin pada dokter apabila memang kondisi Anda lemah dan mudah jatuh sakit.\r\n\r\nTips 10.\r\n\r\nAjak pasangan untuk mulai hidup sehat, mengonsumsi makanan sehat, dan juga berhenti merokok.\r\n\r\nTips 11.\r\n\r\nCari dokter kandungan terbaik, bukan yang termurah atau sekedar dekat dengan rumah.\r\n\r\nTips 12.\r\n\r\nAda sisi positif berbagi pengalaman dengan teman yang pernah hamil, namun jangan menelan bulat-bulat semua informasi tersebut.\r\n\r\nTips 13.\r\n\r\nHindari kontak dengan bahan-bahan kimia yang beresiko menimbulkan bahaya seperti pembersih lantai, pembersih keramik, atau bahan-bahan lain beraroma keras.\r\n\r\nTips 14.\r\n\r\nPerhatikan kondisi kesehatan mulut dan gigi sepanjang hamil, karena bakteri atau virus dapat tertular melalui problem ini.\r\n\r\nTips 15.\r\n\r\nCeritakan riwayat kesehatan pada dokter kandungan sehingga ia dapat mengerti dan menangani Anda dengan baik.\r\n\r\nTips 16.\r\n\r\nKetahui sejarah alergi terutama terhadap obat-obatan tertentu dan pastikan dokter kandungan Anda mengetahui hal ini.\r\n\r\nTips 17.\r\n\r\nHindari berinteraksi dengan hewan terutama yang belum mendapat vaksin dan mintalah orang lain yang membersihkan kandang hewan selama Anda hamil.\r\n\r\nTips 18.\r\n\r\nBila usia Anda sudah lebih dari 35 tahun saat sedang hamil, maka jaga baik-baik kandungan Anda dan berikan perhatian lebih.\r\n\r\nTips 19.\r\n\r\nMinta pendapat dan support dari orang-orang di sekitar Anda akan kehamilan ini.\r\n\r\nTips 20.\r\n\r\nHindari melakukan kegiatan fisik yang terlalu berat dan melelahkan agar tidak sampai menyebabkan keguguran.\r\n\r\nTips 21.\r\n\r\nPerbanyak waktu istirahat dan tidur sehingga tubuh punya banyak energi untuk melakukan kegiatan keesokan hari tanpa merasa kelelahan.\r\n\r\nTips 22.\r\n\r\nBuat catatan perkembangan kehamilan Anda dari minggu ke minggu, sehingga Anda bisa memantau kesehatan anak Anda.\r\n\r\nTips 23.\r\n\r\nJangan mengandalkan obat kimia untuk mengatasi mual, tetapi cari alternatif lain dari makanan seperti buah-buahan atau aroma buah untuk mengatasinya.\r\n\r\nTips 24.\r\n\r\nMinum air putih setidaknya 8 gelas setiap hari agar tubuh tidak mengalami dehidrasi.\r\n\r\nTips 25.\r\n\r\nLakukan olahraga ringan seperti berjalan santai di sekeliling rumah sehingga tubuh tetap fit.'),
(20, '5befef3fb29b9.jpg', 'Masa-masa kehamilan dan pertumbuhan janin', 'Sekedar Info Buat calon orang tua yang sedang menunggu kelahiran sang buah hati atau hanya sekedar sebagai tambahan pengetahuan kita.\r\nKehamilan dimulai dari proses pembuahan (konsepsi) sampai sebelum janin lahir. Kehamilan normal berlangsung selama 280 hari (40 minggu atau 9 bulan 7 hari), dihitung mulai dari hari pertama menstruasi terakhir. Untuk menentukan usia kehamilan dapat digunakan rumus Naegele sebagai berikut.\r\n\r\nBulan dikurang 3\r\nTahun ditambah 1\r\nTanggal ditambah 7\r\n(1 bulan = 30 hari)\r\n\r\nContoh :\r\n\r\nHari pertama haid terakhir dengan siklus normal jatuh pada tanggal 24 September 2008, Persalinan diperkirakan terjadi pada tanggal 01 Juni 2009.\r\n\r\nPerhitungan tanggal kelahiran dapat juga dilakukan dengan cara, tanggal ditambah 7 hari, bulan ditambah 9, seperti kehamilan cukup bulan yang terhitung 9 bulan 7 hari.\r\n\r\nJika Anda lupa hari pertama haid terakhir, dapat dilakukan perhitungan dengan USG (ultrasonografi/scan ultra sound) beberapa kali pada usia kehamilan dini.\r\n\r\nMasa kehamilan dibagi menjadi tiga trimester, yaitu :\r\n\r\nTrimester pertama, dimulai dari proses konsepsi sampai usia kehamilan tiga bulan,\r\n\r\nTrimester Kedua dihitung dari bulan keempat sampai usia kehamilan enam bulan, dan\r\n\r\nTrimester ketiga, dihitung dari bulan ketujuh sampai usia kehamilan sembilan bulan.\r\n\r\nPertumbuhan dan perkembangan janin dalam kandungan\r\nProses pematangan telur dipengaruhi oleh hormon. Pada setiap bulannya, indung telur wanita usia subur akan menghasilkan satu atau dua telur matang, yang disebut ovum. Sekitar 14 hari sebelum haid akan terjadi proses pelepasan telur yang matang dari indung telurnya. Proses ini dinamakan ovulasi. Telur inilah yang siap untuk dibuahi oleh sebuah sperma. Proses bersatunya inti ovum dan inti sperma disebut konsepsi (pembuahan), yang merupakan awal dari proses kehamilan. Proses terjadinya pembuahan sampai pertumbuhan janin diuraikan berikut ini.\r\n\r\nMinggu pertama\r\nMasa haid terakhir selama 5-7 hari. Pada fase ini, seorang wanita harus memperhatikan tanggal dari hari pertama haid terakhir. Penanggalan ini akan digunakan untuk menentukan usia kehamilan menurut rumus Naegele.\r\n\r\nMinggu ke-2 dan ke-3\r\nMinggu ke-2 dan ke-3 merupakan masa subur, jika siklus seseorang terjadi selama 28-35 hari.Pada fase ini akan terjadi proses ovulasi dan dilanjutkan dengan konsepsi di saluran telur. Hasil konsepsi akan berkembang dengan cara pembelahan sel, mulai dari 1 sel menjadi 2, 4, 8 sampai membentuk sekelompok sel yang bergerak dari saluran telur menuju rongga rahim. Kelompok sel ini akan melekat (bernidasi) pada dinding rahim.\r\n\r\nMinggu ke-4\r\nKelompok sel akan berkembang menjadi embrio kecil dan melekat pada lapisan dinding rahim.\r\n\r\nMinggu ke-5\r\nTerjadi pembentukan awal embrio (manusia dini) yang sudah memiliki sistim vaskuler (peredaran darah). Pada fase ini, seorang wanita tidak akan mengalami menstruasi (haid terhenti). Jika dilakukan uji kehamilan secara klinis akan diproleh hasil yang positip. Pada fase inipun sudah terbentuk kantung ketuban yang terdiri dari dua selaput tipis. Selaput ini berisi air ketuban tempat bayi terapung di dalam rahim. Air ketuban akan menjaga bayi dari cedera akibat benturan luar selama kehamilan.\r\n\r\nMinggu ke-6\r\nTerbentuk tulang belakang, kepala besar yang mengandung otak rudimenter, bakal tangan kaki, serta soket untuk mata dan telinga. Jantung sedang dibentuk, pada USG akan terdengar denyut jantung yang kuat. Plasenta (ari-ari) tampak lebih besar dari embrio.\r\n\r\nMinggu ke-8\r\nTerjadi pembentukan semua organ besar dan bagian-bagian organ ginjal. Kelopak mata telah menyatu untuk melindungi kedua matanya. Hidung, telinga, dan jari-jari mulai terbentuk. Kepala mulai menunduk ke arah dada. Wajah dan jari-jari sudah berkembang. Embrio tampak seperti manusia yang meningkat menjadi janin. Pada fase ini sudah terjadi gerakan janin, tetapi terlalu lembut untuk dapat dirasakan oleh sang ibu. Panjang janin mencapai 2,5 cm.\r\n\r\nMinggu ke-10\r\nPada masa ini, kegiatan jantung janin hampir dapat terdeteksi dengan dengan peralatan yang menggunakan prinsip Doppler ultrasonik. Sirkulasi darah melalui tali pusat. Jari-jari dan kuku sudah terlihat dan ukuran kepala masih belum proporsional.\r\n\r\nMinggu ke-12\r\nDaun telinga mulai terbentuk, kelopak mata masih melekat, leher dan alat kelamin luar mulai terbentuk. Pada masa ini, ginjal janin mulai berfungsi. Janin sudah lebih aktif, tetapi masih belum dapat dirasakan oleh sang ibu. Berat ari-ari 6 kali berat janin. Kantung ketuban berisi sekitar 100 ml air ketuban. Panjang janin sekitar 9 cm.\r\n\r\nMinggu ke- 14\r\nRasa nyeri payudara sudah hilang. Kulit putting susu dan sekitar areola akan terlihat lebih gelap. Pada masa ini, perut ibu mulai bertambah gendut dan sudah terlihat hamil.\r\n\r\nMinggu ke- 16\r\nAlat kelamin luar sudah terbentuk, hidung dan telinga tampak jelas, kulit merah, rambut mulai tumbuh, dan semua bagian sudah terbentuk lengkap. Pada masa ini plasenta (ari-ari) sudah terbentuk sempurna, yang merupakan akar janin untuk tumbuh dan berkembang dengan baik dalam rahim. Kadang-kadang terjadi gerakan yang tidak teratur. Pada kehamilan pertama, gerakan semacam ini tidak terasa oleh sang ibu. Rambut-rambut yang halus (lanugo) mulai tumbuh. Berat janin sama dengan berat ari-ari. Pembuluh darah terlihat dengan jelas pada kulit janin yang tipis. Panjang janin mencapai 16-18 cm.\r\n\r\nMinggu ke-20\r\nKulit makin tebal, rambut kepala mulai tumbuh, rambut halus (lanugo) mulai tampak. Untuk pertama kalinya, getaran janin mulai dirasakan oleh sang ibu (seperti kepakan sayap kupu-kupu). Jika tidak merasakan adanya gerakan janin, jangan khawatir karena kondisi ini tidak selalu terjadi. Bola dan alis mata sudah tumbuh. Panjang janin sekitar 25 cm.\r\n\r\nMinggu ke- 22\r\nTelinga bagian dalam sempurna. Janin sudah mulai bias mendengar suara dari luar.\r\n\r\nMinggu ke-24\r\nKelopak mata terpisah, tumbuh alis dan bulu mata, kulit khas berkerut-kerut, dan lemak tertumpuk di bagian bawahnya. Kepala besar dan panjang janin mencapai 30 cm. Jika janin ini lahir, akan berusaha untuk bernafas, tetapi akan meninggal setelah beberapa jam dilahirkan.\r\n\r\nMinggu ke- 28\r\nJanin dapat mengisap jari. Kulit tipis merah ditutupi lemak yang disebut verniks. Pertumbuhan kepala mulai lambat, ukurannya sebanding dengan ukuran tubuhnya . Organ dalam sudah lengkap. Berat janin mencapai 1000 gram. Jika janin ini lahir dapat bertahan hidup dengan perawatan khusus. Panjang janin mencapai 35 cm. Pada usia 28 minggu, janin masih leluasa berputar di dalam rahim ibu.\r\n\r\nMinggu ke- 32\r\nJanin masih mempunyai cukup ruang untuk berenang bebas dalam air ketuban, menendang, dan jungkir balik. Sebagian besar, janin akan berada pada posisi siap lahir, yaitu kepala di bawah dan kaki di atas. Kulit janin merah dan keriput. Jika lahir, tampak seperti orang tua kecil (little old man). Panjang janin mencapai 40-43 cm.\r\n\r\nMinggu ke- 34\r\nCahaya akan tersaring masuk ke dalam rongga rahim. Janin lebih banyak bergerak dan mata berkembang sepenuhnya.\r\n\r\nMinggu ke- 36\r\nBadan menjadi lebih bulat, kerutan di wajah hilang karena lemak menutupi kulit sekeliling bayi dan menutupi wajahnya. Janin yang dikandung oleh sebagaian wanita yang hamil untuk pertama kalinya akan mengalami penurunan, yaitu turunnya kepala ke rongga panggul ( bayi sudah \"turun\") Umumnya testis (buah pelir) janin laki-laki sudah turun ke skrotum. Turunnya buah pelir ini dapat terjadi pula sampai mendekati kelahiran. Pada masa ini disebut bayi prematur. Panjang janin sekitar 46 centimeter dan beratnya 2.5 kilogram.\r\n\r\nMinggu ke- 38\r\nTendangan keras berkurang dan kepala janin mulai masuk ke dalam panggul.\r\n\r\nMinggu ke- 40\r\nJanin telah berkembang sempurna dan siap lahir. Hari kelahirannya sudah dekat. Secara umum sebagaian lanugo sudah hilang , tetapi pelindung verniks masih ada sampai bayi lahir. Umumnya, panjang bayi yang lahir mencapai 48 - 50 centimeter (ukurang orang Indonesia) dan berat badannya sekitar 2750 - 3000 gram\r\n\r\nSelanjutnya, pasti mendebarkan menunggu detik-detik kelahiran si buah hati.'),
(21, '5beff1dc991c3.jpg', 'Nutrisi Vitamin Suplemen Dan Makanan Sehat Untuk Ibu hamil', 'Nutrisi Vitamin Suplemen Dan Makanan Sehat Untuk Ibu Hamil â€“ Ketika dalam kondisi hamil, seorang wanita pastinya akan mudah lelah dan merasa punggung sakit dan mudah pegal. Hal ini memang merupakan ciri dan gejala yang pada umumnya memang dialami seorang wanita.\r\n\r\nKondisi tersebut terkadang diabaikan oleh suami atau bahkan ibu hamil itu sendiri, dengan alasan hal itu adalah hal yang biasa. Namun mereka harusnya menyadari bahwa hal itu adalah hal biasa yang bisa mengakibatkan sesuatu hal yang fatal. Misalnya, ketika mau masuk ke kamar mandi, tiba tiba punggung terasa nyeri dan tubuh lemas, kemudian terpeleset. Bisa jadi kandungan tersebut akan mengalami pendarahan dan efek yang paling parah adalah keguguran kandungan.\r\n\r\nOleh karena itu, demi menjaga janin dalam kandungan tetap sehat serta ibu yang hamil juga, maka disarankan kepada ibu hamil untuk mengkonsumsi makanan yang sehat dan bergizi. Di bawah ini adalah Nutrisi Vitamin Suplemen Dan Makanan Sehat Untuk Ibu Hamil :\r\n\r\n1. Susu\r\n\r\nSusu merupakan salah satu bahan makanan yang merupakan nutrisi yangbisa dikatakan wajib untuk dikonsumsi oleh ibu dan wanita yang sedang hamil. Susu yang harus diminum oleh ibu hamil bukanlah susu sapi murni yang segar. Namun susu yang telah diformulasikan khusus untuk ibu hamil yang memiliki kandungan kandungan penting untuk ibu dan bayi yang sedang dikandung.\r\n\r\nUntuk jenis susu mana yang bisa dikonsumsi dan cocok untuk Anda, Anda bisa berkonsultasi dengan bidan dan juga dokter yang ada di tempat pelayanan kesehatan di sekitar Anda. Hal ini dikarenakan, terkadang beberapa ibu hamil akan mual jika meminum susu jenis tertentu, jadi Anda bisa mencoba dari susu yang biasa disarankan oleh dokter tersebut.\r\n\r\n2. Madu\r\n\r\nSelain memiliki fungsi yang bagus sebagai penambah energi, madu juga memiliki kandungan nutrisi yang sangat baik bagi ibu hamil dan juga bayi yang dikandung. Apalagi jika ibu hamil tersebut sedang mengalami mual di pagi hari atau biasa disebut morning sickness. Madu ini bisa membuat perut tidak akan terlalu mual dan juga bisa dijadikansebagai sumber energy bagi ibu hamil tersebut.\r\n\r\n3. Buah Dan Sayur\r\n\r\nSelama masa kehamilan, sebaiknya banyak banyak mengkonsumsi buah dan sayuran. Buah dan sayuran merupakan bahan makanan yang memiliki banyak kandungan antioksidan. Dengan semakin banyak kandungan antioksidan, hal iniakan berdampak baik pada kesehatan bayi dan juga pada kondisi fisik bayi. Menurut beberapa pakar kesehatan, dengan antioksidan yang cukup, bayi akan memiliki kulit yang bersih dan bagus serta memiliki imunitas yang tinggi. Sehingga dengan pertahanan tubuh yang bagus, bayi juga tidak akan mudah terserang penyakit.\r\n\r\n4. Jamu Tradisional\r\n\r\nPercaya atau tidak, setiap daerah tertentu memiliki ramuan jamu tradisional khusus untuk ibu hamil. Jamu bukan hanya sebuah warisan nenek moyang yang hanya kita ketahuisaja. Namun jamu juga harus benar benar diaplikasikan dalam kehidupan sehari hari. Karena pada umumnya ramuan jamu untuk ibu hamil memang memiliki khasiat yang bagus untuk kandungan dalam rahim dan juga agar kandungan dalam kondisi sehat. Oleh karena itu, jika anda sedang hamil Anda bisa segera bertanya pada dukun bayi di sekitar tempatAnda atau orang yang dituakan. Biasanya hanya sesepuh itulah yang mengetahui ramuan jamu khusus untuk ibu hamil.\r\n'),
(22, '5beff2c3dec91.jpg', '5 Asupan Penting Untuk Ibu Hamil', '1. Air putih\r\n\r\nHal yang simple, tapi super penting. Seorang ibu hamil ternyata butuh 6-8 liter air per hari. Hahaha, dulu aku selalu nyetok aqua 1 liter berbotol-botol di samping kasur supaya bisa minum setiap saat. Kenapa air penting buat ibu hamil?\r\n\r\nBayangin aja mom, di tubuh kita, ada si kecil yang butuh asupan cairan yang cukup. Enggak cuma untuk janin, tapi juga untuk cairan di dalam plasenta, air ketuban, hingga payudara. Banyak minum air putih juga katanya bisa mengurangi mual dan gangguan pencernaan.\r\n\r\n2. Air kelapa\r\n\r\nPernah enggak mom, disuruh orang tua supaya kita minum air kelapa saat hamil? Katanya sih supaya kulit bayinya bisa lahir bersih, tanpa ada kayak kerak begitu. Hahaha, aku dulu ketawa sih pas disuruh keluargaku untuk minum air kelapa. Kadang suka enggak percaya soalnya sama penjelasan berbau-bau mitos gitu.\r\n\r\nTapi karena aku emang dasarnya suka kelapa muda, apalagi pake es hahaha, oke deh aku coba. Lumayan juga, jadi alasan aku biar dibeliin es kelapa muda tiap hari sama suami :P Aku juga sambil cek artikel-artikel soal manfaat air kelapa bagi ibu hamil. Ternyata, emang punya banyak manfaat mom.\r\n\r\nAir kelapa ternyata bisa melancarkan darah, membantu mengurangi lelah, sampai antioksidan yang baik untuk melenyapkan radikal bebas dalam tubuh. Cuss mom, langsung beli air kelapa depan komplek hahaha.\r\n\r\n3. Buah-buahan\r\n\r\nBuah-buahan ini penyelamat aku banget pas diare datang. Drama kehamilanku bukan mual-mual kayak banyak orang, tapi diare. Iya diare, ampunnn bisa berhari-hari tersiksa banget. Makin tersiksa lagi, aku eneg banget kalau disuruh minum diatab. Padahal sebelum hamil, biasa aja minum obat tablet segede apa pun juga.\r\n\r\nAlhasil, karena enggak bisa minum obat, sama dokter disaranin untuk konsumsi buah-buahan yang tinggi serat. Waktu akhirnya makan pisang tiap hari, diselang-seling sama alpukat juga (karena doyan hihihi). Alhamdulillah, sembuh juga tanpa obat. Bye diare!\r\n\r\n4. Susu hamil\r\n\r\nBanyak ibu yang nanya, termasuk aku, penting enggak sih minum susu hamil? Kenapa? Karena aku bukan tipe peminum susu :D Konsultasi sama dokter, katanya penting enggak penting susu hamil itu.\r\n\r\nSusu dianggap enggak penting, kalau makanan kita sudah bener jadi semua vitamin yang dibutuhkan ibu bisa terpenuhi dari sumber lain.\r\n\r\nErrrâ€¦ aku kayaknya ragu kalau makan aku sudah bergizi banget. Makanya, aku cobalah itu susu hamil.\r\n\r\nKandungan yang ada di susu hamil biasanya ada asam folat untuk pembentukan organ janin juga untuk menghindari cacat tulang belakang, GA dan DHA sebagai nutrisi untuk otak, zat besi untuk pembentukan sel darah merah buat ibu, dan kalsium untuk pembentukan tulang dan gigi bayi serta memperlancar produksi ASI.\r\n\r\nAwal nyoba susu yang putih, hoeeek! Eneg bangeet. Terus baunya kayak kimia gitu enggak sih? Apa cuma aku aja yang ngerasain begitu? Akhirnya aku nemu satu merk susu hamil yang cocok buat aku. Kenapa cocok? Yang terutama, ga bau kimia, jadi aku enggak eneg duluan. Kedua, ada banyak pilihan rasanya ada cokelat sampai strawberry. Yes!\r\n\r\n5. Vitamin\r\n\r\nVitamin biasanya sudah menjadi barang wajib yang disarankan dokter untuk dikonsumsi ibu hamil. Kalau waktu itu aku diberikan vitamin asam folat. Asam folat penting untuk pembentukan organ janin, dia juga membantu produksi ASI. Sehingga vitamin ini bisa diteruskan untuk dikonsumsi pasca melahirkan.'),
(23, '5beff3499beba.png', 'Cara untuk mendeteksi Kehamilan Wanita Modern Dan Tradisional', 'Cara Modern Dan Tradisional Untuk Tes Kehamilan â€“ Kehamilan merupakan salah satu proses biologis yang tentunya akan disertai dengan tanda, ciri ciri dan gejala yang bisa dilihat secara biologi dengan panca indera maupun dengan bantuan proses kimiawi. Oleh karena itu, selain dengan cara memperhatikan Tanda dan Ciri Ciri Orang Yang Sedang Hamil, maka dapat diketahui dengan cara cara lain bahwa seorang wanita itu sedang hamil.\r\n\r\nMeskipun saat ini jaman sudah sangat modern, tetapi masih ada masyarakat di beberapa wilayah tertentu yang menggunakan cara cara tradisional untuk mengetahui apakah seorang wanita itu sedang hamil atau tidak. Hal ini terjadi karena beberapa masyarakat yang masih memiliki adat istiadat tertentu masih memiliki kepercayaan bahwa ilmu yang diajarkan oleh nenek moyang bukanlah ilmu yang sembarangan. Jadi ilmu tentang kehamilan yang diajarkan oleh nenek moyang pun akan tetap digunakan selama masyarakat tersebut masih memiliki kepercayaan terhadap ilmu pengetahuan itu.\r\n\r\n1. Cara Tes Kehamilan Tradisional\r\nPada umumnya cara tes kehamilan secara tradisional adalah memanfaatkan ilmu pengetahuan dari dukun bayi. Pada beberapa suku tertentu, ada istilah yang dinamakan sebagai dukun bayi. Dukun bayi adalah seseorang yang memiliki ilmu pengetahuan yang berhubungan dengan bayi, dari mulai proses kehamilan, kandungan, ataupun ketika bayi sudah dilahirkan dan bagaimana cara perawatan bayi yang benar.\r\n\r\nSeorang dukun bayi dipercaya memiliki ilmu spiritual yang tinggi jika berkaitan dengan bayi dan kehamilan. Hanya dengan mengelus perut saja dan disertai membaca doa atau mantra, seorang dukun bayi bisa mengetahui apakah seorang wanita hamil atau tidak. Bahkan bukan hanya itu saja, seorang dukun bayi bisa memperkirakan bayi perempuan atau laki laki kah yang akan lahir dari rahim seorang wanita.\r\n\r\n2. Cara Tes Kehamilan Modern\r\nCara tes kehamilan secara modern umumnya dengan menggunakan 2 alat kesehatan, yakni dengan adanya testpack dan juga dengan adanya USG. Testpack digunakan untuk mendeteksi kehamilan di usia muda, sedangkan USG bisa menunjukkan kondisi janin di dalam rahim pada usia berapapun. USG bisa dikatakan alat yang cukup modern. Lewat hasil USG pun seorang dokter bisa menganalisa apakah janin tersebut sehat atau tidak, dan bahkan bisa mengetahui janin tersebut adalah seorang laki laki atau perempuan.'),
(24, '5bf0131e3c493.jpg', 'Tanda Dan Ciri Ciri Orang Wanita Hamil Muda 1 Minggu Sampai 3 Bulan', 'Suatu proses kehamilan tentunya juga ditandai oleh keadaan yang berbeda jika dibandingkan dengan keadaan ketika belum hamil. Oleh karena itu, seorang ibu muda atau wanita yang baru menikah tentu saja harus mengetahui beberapa ciri ciri wanita hamil. Karena perlakuan terhadap tubuh serta asupan nutrisi pun akan berbeda jika kita dalam kondisi hamil.\r\nDi bawah ini adalah 5 tanda dan juga ciri ciri seorang wanita yang hamil muda dengan usia 1 minggu sampai dengan usia 3 bulan :\r\n\r\n1. Terlambat Haid / Datang Bulan\r\n\r\nSalah satu tanda pertama seorang wanita hamil adalah adanya keterlambatan haid atau dating bulan. Seorang wanita yang hamil akan mengalami proses pematangan sel telur yang telah dibuahi oleh sel sperma. Sehingga dalam keadaan ini seorang wanita tidak lagi mengalami proses pembuatan sel telur dan efeknya adalahtidak terjadi lagi peluruhan sel telur yang biasa dikenal dengan sebutan menstruasi atau haid.\r\n\r\nNamun,terlambat haid 3 sampai 7 hari belum tentu merupakan tanda bahwa seorang wanita hamil. Bisa jadi hal ini disebabkan oleh adanya perubahan siklus haid karena faktor hormonal. Jadi masih perlu dilakukan pengecekan hormonal dengan menggunakan TestPack.\r\n2. Adanya Perubahan Bentuk Beberapa Bagian Tubuh\r\n\r\nCiri seorang wanita yang hamil adalah memiliki beberapa perubahan signifikan pada beberapa bagian tubuhnya. Hal yang pertama kali mengalami perubahan tentunya adalah organ yang berhubungan dengan hormone estrogen dan progesterone, yakni payudara. Selain bagian tersebut,bagian lain yang akan mengalami perubahan adalah bentuk perut yang semakin membesar, dada, lengan, dan juga pinggul.\r\n3. Mudah Lelah, Mood Gampang Berubah Dan Merasakan Sakit Di Punggung\r\n\r\nSalah satu tanda wanita yang hamil inilah yang biasanya tidak disukai oleh suami. Yaitu wanita hamil cenderung moody dan gampang marah, cerewet dan bawel. Mau tidak mau begitulah kenyataannya. Untuk itu seorang suami harus ekstra sabar, karena seorang istri yang hamil tentu saja merasakan sakit dan juga berat karena harus mengandung janin di dalam rahim.\r\n\r\nKarena mengandung janin di dalam rahim itu, seorang wanita hamil jadi cepat lelah dan tentunya akan mudah sakit punggung. Hal ini adalah hal yang wajar, karena dengan adanya janin tentunya akan meningkatkan bobot tubuh seorang wanita hamil tersebut.\r\n4. Mual (Morning Sickness)\r\n\r\nKetika memasuki usia kandungan 2 bulan, maka seorang wanita hamil akan merasakan mual di pagi hari atau yang biasa dikenal dengan sebutan morning sickness. Rasa mual ini tentu saja akan sangat mengganggu kondisi wanita hamil tersebut. Pada kondisi ini, wanita hamil biasanya akan malas sekali untuk makan, sehingga diperlukan tambahan nutrisi agar kandungan tetap sehat.\r\n\r\nBaca : Nutrisi Dan Vitamin Tambahan Untuk Wanita Hamil\r\n5. Positif Saat Tes Kehamilan Menggunakan TestPack\r\nIni adalah langkah terakhir untuk memastikan apakah anda memang benar benar hamil. Testpack merupakan alat kesehatan yang digunakan untuk mendeteksi kehamilan. Testpack merupakan indikator hormon kehamilan yang akan ikut terekskresi bersama dengan urine.\r\n\r\nJadi bila Anda ingin memastikan apakah Anda hamil atau tidak, silahkan menggunakan Testpack. Anda bisa menggunakannya sendiri atau bahkan Anda bisa meminta pertolongan jasa layanan kesehatan seperti klinik ataupun Puskesmas terdekat atau bahkan bidan bidan di sekitar rumah Anda.'),
(25, '5beff9450403f.jpg', 'Cara Menggunakan Testpack Untuk Mengetahui Hamil Atau Tidak', 'Testpack adalah salah satu produk kesehatan yang berfungsi untuk mendeteksi apakah seorang wanita sedang hamil atau tidak. Testpack merupakan salah satu cara yang menggunakan proses biokimia dengan menggunakan indikator agar bisa mendeteksi kehamilan seorang wanita.\r\n\r\nTestpack saat ini memang bisa dikatakan bukan hal yang tabu lagi di kalangan masyarakat. Kalau dulu, seseorang pasti enggan mendeteksi kehamilan menggunakan testpack. Seorang pasangan suami istri rela menunggu hingga seorang istri telah terlambat haid selama 3 bulan, baru bisa dikatakan wanita tersebut sedang hamil.\r\n\r\nNamun saat ini, sejak adanya alat kesehatan berupa testpack. Kehamilan seorang wanita berusia 1 minggu pun sudah bisa terdeteksi. Sehingga ibu hamil tersebut bisa lebih awal untuk mempersiapkan fisik serta menambah asupan nutrisi sejak kandungan masih muda. Dalam hal ini tentunya bertujuan agar janin dalam rahim tetap sehat dan terjaga.\r\n\r\nDi bawah ini adalah tata cara menggunakan testpack yang benar dan juga persiapan yang perlu dilakukan sebelum menggunakan testppack.\r\n\r\n1. Sebelum kita memakai testpack, terlebih dahulu siapkan testpack Anda pada malam hari, dengan tujuan agar besok pagi testpack bisa langsung digunakan.\r\n\r\n2. Proses pengambilan urine dilakukan pada pagi hari setelah bangun pagi. Hal ini dikarenakan hormon kehamilan akan memiliki kadar lebih banyak pada pagi hari.\r\n\r\n3. Urine yang anda keluarkan silahkan ditampung pada wadah, cara pengambilannya adalah dengan cara mengeluarkan urine yang keluar di awal, tahan sebentar kemudian tamping urine yangkeluar di pertengahan, kemudian sisihkan wadah urine dan urine yang tersisa bisa dibuang.\r\n\r\n4. Setelah urine sudah tertampung, buka testpack, kemudian anda bisa mencelupkan testpack ke dalam wadah tersebut di bawah tanda batas. Tunggu hingga cairanurine mengalami perpindahan sehingga telah muncul tanda garis pada bagian atas testpack.\r\n\r\n5. Jika telah muncultanda garis, angkat testpack kemudian diamkan selama kurang lebih 5 menit.\r\n\r\n6. Amati garis yang muncul pada bagian atas testpack.\r\nJika muncul 1 garis, hal ini berarti negatif dan anda tidak hamil\r\nJika muncul 2 garis, hal ini berarti positif dan anda sedang hamil'),
(26, '5beff9c3bb2e9.jpg', 'Bagaimana Cara Diet Yang Sehat Untuk Ibu Hamil', 'Ketika anda mendengar diet untuk ibu hamil, anda mungkin akan merasa sedikit kaget. Betapa tidak kaget, ibu hamil yang memang secara lahiriah akan mengandung janin, tentunya pasti akan memiliki berat badan yang bertambah. Kenapa harus diet dan justru menurunkan berat badan yang mungkin bisa berdampak terhadap kesehatan si kecil.\r\n\r\nHal di atas memang mungkin terdengar aneh, tapi menurut beberapa pakar kesehatan terutama dokter spesialis kandungan (Sp.Og), seorang ibu hamil memang harus menjaga berat badan agar tidak mengganggu proses persalinan, untuk itu seorang ibu hamil yang mengalami overweight harus menjalani sedikit diet dan terapi agar tidak kelebihan berat badan yang justru akan mengganggu kondisi janin serta proses persalinan anak dari ibu hamil tersebut.\r\n\r\nBerikut ini merupakan beberapa kiat kiat serta cara diet yang sehat bagi ibu hamil. Tentunya selain memberikan manfaat bagi ibu hamil tersebut, hal ini juga memberikan dampak yang positif terhadap janin yang dikandung ibu tersebut.\r\n1. Mengurangi Konsumsi Karbohidrat\r\nSebagaimana diet pada umumnya, diet dengan cara mengkonsumsi karbohidrat juga berlaku untuk diet ibu ibu yang sedang hamil. Namun diet ini harus dilakukan dengan cara yang benar agar ibu hamil tersebut tidak lemas dan justru sakit karena diet ini.\r\n\r\nBagi ibu hamil yang ingin diet dengan cara ini, anda harus mengurangi porsi makan karbohidrat. Misalkan setiap satu kali makan memerlukan karbohidrat sebesar 300-400 gram, tentunya pada diet ini anda hanya memerlukan setengahnya saja. Yakni 150-200 gram di setiap kali makan. Misal dalam satu harri terbiasa makan 3x sehari, anda tetap bisa makan sebanyak 3x sehari. Hanya saja anda harus mengubah jam makan yaitu sarapan pagi jam 7.00, makan siang jam 12.00 dan makan malam jam 18.00.\r\n2. Mengkonsumsi Buah Sebagai Pengganti Nasi\r\nBuah buhan merupakan salah satu bahan makanan yang sangat bermanfaat bagi kesehatan tubuh. Kandungan vitamin dan mineral yang tinggi serta beberapa buah yang memiliki efek antioksidan sangat bermanfaat untuk peningkatan daya tahan tubuh agar tidak mudah sakit dan selalu tampil bugar setiap harinya.\r\n\r\nSelain fungsi tersebut, ada juga buah buahan yang bisa dimanfaatkan sebagai pengganti nasi untuk melakukan proses diet. Baik itu diet secara umum maupun diet yang sehat untuk ibu dan wanita hamil. Beberapa buah yang bisa dimanfaatkan diantaranya adalah buah apel, pisang, buah pir dan beberapa buah yang lain yang bisa mengenyangkan tubuh serta mengandung banyak kandungan air buah.\r\n\r\nUntuk diet dengan cara mengkonsumsi buah ini, bisa dilakukan dengan sama sekali tidak mengkonsumsi nasi dan benar benar mengurangi konsumsi nasi. Atau dengan melakukan perpaduan. Yakni pada pagi hari menggunakan buah sebagai sarapan, pada siang hari mengkonsumsi nasi, dan pada malam harinya mengkonsumsi buah kembali.\r\n3. Lakukan Olahraga Ringan Di Pagi Hari\r\nCara ini merupakan cara yang menurut saya cukup efektif sebagai pelengkap kedua cara di atas. Di perkampungan tempat saya tinggal, setiap pagi pasti ada saja ibu hamil yang melakukan jalan jalan pagi bersama suaminya atau bahkan bersama dengan anaknya yang pertama. Menurut saya, selain bisa berdampak bagus terhadap saraf janin yang dikandung. Jalan jalan pagi juga menyehatkan karena masih banyak oksigen yang tersedia di pagi hari. Sehingga dalam hal ini bisa dikatakan jalan jalan pagi akan berdampak positif bagi kesehatan ibu maupun janin yang dikandung ibu tersebut.\r\n\r\nCara cara diet di atas merupakan cara diet untuk Anda yang sedang hamil dan mengalami masalah overweight atau kelebihan berat badan.');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama`, `email`, `isi_pesan`, `tanggal`, `waktu`) VALUES
(14, 'muhammad iqbal', 'muhammadiqbal.rpl@gmail.com', 'dokter bagaimana cara membuat susu bayi yang baik dan benar', 'Saturday,17-Nov-2018', '10:06:25'),
(15, 'fikri', 'fikri24@gmail.com', 'Bagaimana cara mengatasi ngidam isitri yang terlalu kuat seperti ingin makan durian padahalkan makan durian untuk ibu hamil itu dilarang ?', 'Saturday,17-Nov-2018', '10:08:23'),
(16, 'fajar', 'fajar.rt54@gmail.com', 'dokter kenapa makanan untuk ibu hamil harus lebih di jaga di bandingkan makanan untuk orang biasa', 'Saturday,17-Nov-2018', '10:10:08'),
(17, 'hauna', 'haunadh@gmail.com', 'apabila kita sakit di saat mengandung apakah kita boleh minum obat ?', 'Sunday,18-Nov-2018', '06:49:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;