-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 24 Kas 2022, 04:00:33
-- Sunucu sürümü: 8.0.30
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test6`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'werqwerq', 0, '2022-11-23 23:32:33', '2022-11-23 23:32:33'),
(2, 1, 'qwerqwerqw', 1, '2022-11-23 23:32:33', '2022-11-23 23:32:33'),
(3, 1, 'erqwerqwer', 0, '2022-11-23 23:32:33', '2022-11-23 23:32:33'),
(4, 1, 'qwerqwer', 0, '2022-11-23 23:32:33', '2022-11-23 23:32:33'),
(5, 2, 'İtfaiye', 0, '2022-11-23 15:13:54', '2022-11-23 15:13:54'),
(6, 2, 'Ambulans', 1, '2022-11-23 15:13:54', '2022-11-23 15:13:54'),
(7, 2, 'Polis imdat', 0, '2022-11-23 15:13:54', '2022-11-23 15:13:54'),
(8, 2, 'Jandarma imdat', 0, '2022-11-23 15:13:54', '2022-11-23 15:13:54'),
(9, 3, 'Adı ve soyadının öğrenilmesi', 0, '2022-11-23 15:15:43', '2022-11-23 15:15:43'),
(10, 3, 'Kullandığı ilaçların belirlenmesi', 0, '2022-11-23 15:15:43', '2022-11-23 15:15:43'),
(11, 3, 'Kişisel özgeçmişinin öğrenilmesi', 0, '2022-11-23 15:15:43', '2022-11-23 15:15:43'),
(12, 3, 'Solunum sayısının değerlendirilmesi', 1, '2022-11-23 15:15:43', '2022-11-23 15:15:43'),
(13, 4, 'Yardımı güçleştirecek meraklı kişilerin olay yerinden uzaklaştırılması', 1, '2022-11-23 15:17:12', '2022-11-23 15:17:12'),
(14, 4, 'Olay yerinin diğer araç sürücüleri tarafından görünmesinin engellenmesi', 0, '2022-11-23 15:17:12', '2022-11-23 15:17:12'),
(15, 4, 'Araç LPG´li ise bagajında bulunan tüpün vanasının kapatılmaması', 0, '2022-11-23 15:17:12', '2022-11-23 15:17:12'),
(16, 4, 'Kazaya uğrayan aracın kontağının açık bırakılması', 0, '2022-11-23 15:17:12', '2022-11-23 15:17:12'),
(17, 5, 'Kanamanın durdurulması için', 0, '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(18, 5, 'Dolaşımın değerlendirilmesi için', 0, '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(19, 5, 'Kemik kırıklarının tespit edilmesi için', 0, '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(20, 5, 'Yabancı cisim tıkanmalarında solunum yolunu açmak için', 1, '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(21, 6, 'Yetişkin:2, Bebek:1', 0, '2022-11-23 15:23:41', '2022-11-23 15:23:41'),
(22, 6, 'Yetişkin:3, Bebek:2', 0, '2022-11-23 15:23:41', '2022-11-23 15:23:41'),
(23, 6, 'Yetişkin:5, Bebek:4', 1, '2022-11-23 15:23:41', '2022-11-23 15:23:41'),
(24, 6, 'Yetişkin:7, Bebek:6', 0, '2022-11-23 15:23:41', '2022-11-23 15:23:41'),
(25, 7, 'Böbrek', 0, '2022-11-23 15:25:50', '2022-11-23 15:25:50'),
(26, 7, 'Akciğer', 1, '2022-11-23 15:25:50', '2022-11-23 15:25:50'),
(27, 7, 'Bağırsak', 0, '2022-11-23 15:25:50', '2022-11-23 15:25:50'),
(28, 7, 'Karaciğer', 0, '2022-11-23 15:25:50', '2022-11-23 15:25:50'),
(29, 8, 'Başı sıcak su ile yıkanır', 0, '2022-11-23 15:36:19', '2022-11-23 15:36:19'),
(30, 8, 'Bulantı önleyici ve ağrı kesici ilaç verilir.', 0, '2022-11-23 15:36:19', '2022-11-23 15:36:19'),
(31, 8, 'Normal faaliyetini sürdürmesine izin verilir.', 0, '2022-11-23 15:36:19', '2022-11-23 15:36:19'),
(32, 8, 'En az 12-24 saat süre ile hekim kontrolünde tutulur.', 1, '2022-11-23 15:36:19', '2022-11-23 15:36:19'),
(33, 9, 'Öksürmek', 0, '2022-11-23 15:37:21', '2022-11-23 15:37:21'),
(34, 9, 'Yutkunmak', 0, '2022-11-23 15:37:21', '2022-11-23 15:37:21'),
(35, 9, 'İdrar kaçırmak', 1, '2022-11-23 15:37:21', '2022-11-23 15:37:21'),
(36, 9, 'Sesli dürtülere tepki vermek', 0, '2022-11-23 15:37:21', '2022-11-23 15:37:21'),
(41, 10, 'Yalnız I', 0, '2022-11-23 15:52:32', '2022-11-23 15:52:32'),
(42, 10, 'I ve II', 0, '2022-11-23 15:52:32', '2022-11-23 15:52:32'),
(43, 10, 'II ve III', 0, '2022-11-23 15:52:32', '2022-11-23 15:52:32'),
(44, 10, 'I, II ve III', 1, '2022-11-23 15:52:32', '2022-11-23 15:52:32'),
(49, 11, 'I. doğru, II. yanlış', 0, '2022-11-23 16:04:04', '2022-11-23 16:04:04'),
(50, 11, 'I. yanlış, II. doğru', 0, '2022-11-23 16:04:04', '2022-11-23 16:04:04'),
(51, 11, 'Her ikisi de doğru', 1, '2022-11-23 16:04:04', '2022-11-23 16:04:04'),
(52, 11, 'Her ikisi de yanlış', 0, '2022-11-23 16:04:04', '2022-11-23 16:04:04'),
(53, 12, 'şok', 1, '2022-11-23 16:07:12', '2022-11-23 16:07:12'),
(54, 12, 'havale', 0, '2022-11-23 16:07:12', '2022-11-23 16:07:12'),
(55, 12, 'epilepsi', 0, '2022-11-23 16:07:12', '2022-11-23 16:07:12'),
(56, 12, 'bayılma', 0, '2022-11-23 16:07:12', '2022-11-23 16:07:12'),
(57, 13, 'Tali yol', 0, '2022-11-23 16:16:59', '2022-11-23 16:16:59'),
(58, 13, 'Geçiş yolu', 0, '2022-11-23 16:16:59', '2022-11-23 16:16:59'),
(59, 13, 'Bağlantı yolu', 0, '2022-11-23 16:16:59', '2022-11-23 16:16:59'),
(60, 13, 'Bölünmüş yol', 1, '2022-11-23 16:16:59', '2022-11-23 16:16:59'),
(61, 14, 'Minibüs', 1, '2022-11-23 16:22:04', '2022-11-23 16:22:04'),
(62, 14, 'Tramvay', 0, '2022-11-23 16:22:04', '2022-11-23 16:22:04'),
(63, 14, 'Kamyonet', 0, '2022-11-23 16:22:04', '2022-11-23 16:22:04'),
(64, 14, 'Arazi taşıtı', 0, '2022-11-23 16:22:04', '2022-11-23 16:22:04'),
(65, 15, 'Geri dönmesini', 0, '2022-11-23 16:23:59', '2022-11-23 16:23:59'),
(66, 15, 'Motoru durdurmasını', 0, '2022-11-23 16:23:59', '2022-11-23 16:23:59'),
(67, 15, 'Harekete hazırlanmasını', 1, '2022-11-23 16:23:59', '2022-11-23 16:23:59'),
(68, 15, 'Biraz sonra kırmızı ışığın yanacağını', 0, '2022-11-23 16:23:59', '2022-11-23 16:23:59'),
(69, 16, 'Kavşağa 50 m kaldığını', 0, '2022-11-23 16:28:55', '2022-11-23 16:28:55'),
(70, 16, 'Asgari (en az) hız sınırını', 0, '2022-11-23 16:28:55', '2022-11-23 16:28:55'),
(71, 16, 'Azami (en yüksek) hız sınırını', 1, '2022-11-23 16:28:55', '2022-11-23 16:28:55'),
(72, 16, 'Öndeki araca 50 m´den fazla yaklaşılmamasını', 0, '2022-11-23 16:28:55', '2022-11-23 16:28:55'),
(73, 17, 'Kasisli yola girileceğini', 1, '2022-11-23 16:34:21', '2022-11-23 16:34:21'),
(74, 17, 'Yolda çalışma olduğunu', 0, '2022-11-23 16:34:21', '2022-11-23 16:34:21'),
(75, 17, 'Yolun trafiğe kapalı olduğunu', 0, '2022-11-23 16:34:21', '2022-11-23 16:34:21'),
(76, 17, 'Motorlu taşıtların giremeyeceğini', 0, '2022-11-23 16:34:21', '2022-11-23 16:34:21'),
(77, 18, 'Kavşağa', 0, '2022-11-23 16:37:51', '2022-11-23 16:37:51'),
(78, 18, 'Köprüye', 1, '2022-11-23 16:37:51', '2022-11-23 16:37:51'),
(79, 18, 'Tali yola', 0, '2022-11-23 16:37:51', '2022-11-23 16:37:51'),
(80, 18, 'Demir yoluna', 0, '2022-11-23 16:37:51', '2022-11-23 16:37:51'),
(81, 19, 'Mopet yolunu', 0, '2022-11-23 16:41:18', '2022-11-23 16:41:18'),
(82, 19, 'Bisiklet yolunu', 0, '2022-11-23 16:41:18', '2022-11-23 16:41:18'),
(83, 19, 'Mopetin giremeyeceğini', 1, '2022-11-23 16:41:18', '2022-11-23 16:41:18'),
(84, 19, 'Motosikletin giremeyeceğini', 0, '2022-11-23 16:41:18', '2022-11-23 16:41:18'),
(85, 20, 'Yol eğimliyse çıkışta kullanılan vitesle inilmesi', 0, '2022-11-23 16:43:11', '2022-11-23 16:43:11'),
(86, 20, 'Park manevrası yaparken geri gidilmesi', 0, '2022-11-23 16:43:11', '2022-11-23 16:43:11'),
(87, 20, 'Hız azaltmak için frene basılması', 0, '2022-11-23 16:43:11', '2022-11-23 16:43:11'),
(88, 20, 'Ters yönden yola girilmesi', 1, '2022-11-23 16:43:11', '2022-11-23 16:43:11'),
(89, 21, '50', 1, '2022-11-23 16:47:01', '2022-11-23 16:47:01'),
(90, 21, '70', 0, '2022-11-23 16:47:01', '2022-11-23 16:47:01'),
(91, 21, '80', 0, '2022-11-23 16:47:01', '2022-11-23 16:47:01'),
(92, 21, '90', 0, '2022-11-23 16:47:01', '2022-11-23 16:47:01'),
(93, 22, 'Hızın azaltılması', 0, '2022-11-23 16:49:20', '2022-11-23 16:49:20'),
(94, 22, 'Öndeki aracın geçilmesi', 1, '2022-11-23 16:49:20', '2022-11-23 16:49:20'),
(95, 22, 'Takip mesafesi kuralına uyulması', 0, '2022-11-23 16:49:20', '2022-11-23 16:49:20'),
(96, 22, 'Bulunduğu şeridin sağına yaklaşılması', 0, '2022-11-23 16:49:20', '2022-11-23 16:49:20'),
(97, 23, '35', 1, '2022-11-23 16:51:45', '2022-11-23 16:51:45'),
(98, 23, '50', 0, '2022-11-23 16:51:45', '2022-11-23 16:51:45'),
(99, 23, '70', 0, '2022-11-23 16:51:45', '2022-11-23 16:51:45'),
(100, 23, '140', 0, '2022-11-23 16:51:45', '2022-11-23 16:51:45'),
(101, 24, 'Yalnız I', 0, '2022-11-23 16:55:01', '2022-11-23 16:55:01'),
(102, 24, 'I ve II', 1, '2022-11-23 16:55:01', '2022-11-23 16:55:01'),
(103, 24, 'II ve III', 0, '2022-11-23 16:55:01', '2022-11-23 16:55:01'),
(104, 24, 'I, II ve III', 0, '2022-11-23 16:55:01', '2022-11-23 16:55:01'),
(105, 25, 'Otomobil', 1, '2022-11-23 16:57:39', '2022-11-23 16:57:39'),
(106, 25, 'Kamyonet', 0, '2022-11-23 16:57:39', '2022-11-23 16:57:39'),
(107, 25, 'Motosiklet', 0, '2022-11-23 16:57:39', '2022-11-23 16:57:39'),
(108, 25, 'At arabası', 0, '2022-11-23 16:57:39', '2022-11-23 16:57:39'),
(109, 26, 'asli kusur', 1, '2022-11-23 17:00:27', '2022-11-23 17:00:27'),
(110, 26, 'tali kusur', 0, '2022-11-23 17:00:27', '2022-11-23 17:00:27'),
(111, 26, 'yol kusuru', 0, '2022-11-23 17:00:27', '2022-11-23 17:00:27'),
(112, 26, 'kusuru paylaştırma', 0, '2022-11-23 17:00:27', '2022-11-23 17:00:27'),
(113, 27, 'Araç dengesinin korunması', 0, '2022-11-23 17:03:53', '2022-11-23 17:03:53'),
(114, 27, 'Trafik güvenliğinin dikkate alınması', 0, '2022-11-23 17:03:53', '2022-11-23 17:03:53'),
(115, 27, 'Taşıma sınırına ve dingil ağırlığına uyulması', 0, '2022-11-23 17:03:53', '2022-11-23 17:03:53'),
(116, 27, 'Taşınan yük üzerine veya araç dışına yolcu bindirilmesi', 1, '2022-11-23 17:03:53', '2022-11-23 17:03:53'),
(117, 28, 'Sürücü arkasında yeterli oturma yeri olsa bile bir kişiden fazlasının taşınması', 1, '2022-11-23 17:04:47', '2022-11-23 17:04:47'),
(118, 28, 'Gidiş yönüne göre yolun en sağından seyredilmesi', 0, '2022-11-23 17:04:47', '2022-11-23 17:04:47'),
(119, 28, 'Tehlikeli madde taşıyan araçların geçilmesi', 0, '2022-11-23 17:04:47', '2022-11-23 17:04:47'),
(120, 28, 'Geçme yaparken sinyal verilmesi', 0, '2022-11-23 17:04:47', '2022-11-23 17:04:47'),
(121, 29, 'Kasko sigortası', 0, '2022-11-23 17:07:37', '2022-11-23 17:07:37'),
(122, 29, 'Zorunlu mali sorumluluk sigortası', 1, '2022-11-23 17:07:37', '2022-11-23 17:07:37'),
(123, 29, 'Zorunlu deprem sigortası', 0, '2022-11-23 17:07:37', '2022-11-23 17:07:37'),
(124, 29, 'Hırsızlık sigortası', 0, '2022-11-23 17:07:37', '2022-11-23 17:07:37'),
(125, 30, 'Sürücüsüne hapis cezası verilir.', 0, '2022-11-23 17:10:39', '2022-11-23 17:10:39'),
(126, 30, 'Araç sahibine sadece para cezası verilir.', 0, '2022-11-23 17:10:39', '2022-11-23 17:10:39'),
(127, 30, 'İhtar edilir, tekrarı halinde araç trafikten men edilir.', 1, '2022-11-23 17:10:39', '2022-11-23 17:10:39'),
(128, 30, 'Sürücüsü trafikten ömür boyu men edilir.', 0, '2022-11-23 17:10:39', '2022-11-23 17:10:39'),
(129, 31, 'Yalnız I', 0, '2022-11-23 17:15:19', '2022-11-23 17:15:19'),
(130, 31, 'I ve II', 0, '2022-11-23 17:15:19', '2022-11-23 17:15:19'),
(131, 31, 'II ve III', 0, '2022-11-23 17:15:19', '2022-11-23 17:15:19'),
(132, 31, 'I, II ve III', 1, '2022-11-23 17:15:19', '2022-11-23 17:15:19'),
(133, 32, 'Aracın hızı', 0, '2022-11-23 17:17:16', '2022-11-23 17:17:16'),
(134, 32, 'Yolun eğimi', 0, '2022-11-23 17:17:16', '2022-11-23 17:17:16'),
(135, 32, 'Lastiklerin durumu', 0, '2022-11-23 17:17:16', '2022-11-23 17:17:16'),
(136, 32, 'Yolun genişliği', 1, '2022-11-23 17:17:16', '2022-11-23 17:17:16'),
(137, 33, 'Otoyol', 0, '2022-11-23 17:21:06', '2022-11-23 17:21:06'),
(138, 33, 'Demir yolu', 0, '2022-11-23 17:21:06', '2022-11-23 17:21:06'),
(139, 33, 'Devlet yolu', 1, '2022-11-23 17:21:06', '2022-11-23 17:21:06'),
(140, 33, 'Uluslararası yol', 0, '2022-11-23 17:21:06', '2022-11-23 17:21:06'),
(141, 34, 'Emme susturucusu', 0, '2022-11-23 17:22:12', '2022-11-23 17:22:12'),
(142, 34, 'Egzoz susturucusu', 1, '2022-11-23 17:22:12', '2022-11-23 17:22:12'),
(143, 34, 'Emme manifoldu', 0, '2022-11-23 17:22:12', '2022-11-23 17:22:12'),
(144, 34, 'Egzoz supabı', 0, '2022-11-23 17:22:12', '2022-11-23 17:22:12'),
(145, 35, 'Fren pedalının', 0, '2022-11-23 17:23:36', '2022-11-23 17:23:36'),
(146, 35, 'Far ampulünün', 0, '2022-11-23 17:23:36', '2022-11-23 17:23:36'),
(147, 35, 'Marş motorunun', 1, '2022-11-23 17:23:36', '2022-11-23 17:23:36'),
(148, 35, 'Silecek motorunun', 0, '2022-11-23 17:23:36', '2022-11-23 17:23:36'),
(149, 36, 'Elektrik devresinde aşırı şarj veya düşük şarj olduğunu', 0, '2022-11-23 17:25:47', '2022-11-23 17:25:47'),
(150, 36, 'Arka cam rezistansının çalışmakta olduğunu', 1, '2022-11-23 17:25:47', '2022-11-23 17:25:47'),
(151, 36, 'Soğutma sıvısı sıcaklığının çok yükseldiğini', 0, '2022-11-23 17:25:47', '2022-11-23 17:25:47'),
(152, 36, 'Motor kaputunun tam kapanmadığını', 0, '2022-11-23 17:25:47', '2022-11-23 17:25:47'),
(153, 37, 'Yağlama sistemi', 1, '2022-11-23 17:27:13', '2022-11-23 17:27:13'),
(154, 37, 'Şarj sistemi', 0, '2022-11-23 17:27:13', '2022-11-23 17:27:13'),
(155, 37, 'Ateşleme sistemi', 0, '2022-11-23 17:27:13', '2022-11-23 17:27:13'),
(156, 37, 'Soğutma sistemi', 0, '2022-11-23 17:27:13', '2022-11-23 17:27:13'),
(157, 38, 'Bantlanır.', 0, '2022-11-23 17:28:18', '2022-11-23 17:28:18'),
(158, 38, 'Yapıştırılır.', 0, '2022-11-23 17:28:18', '2022-11-23 17:28:18'),
(159, 38, 'Değiştirilir.', 1, '2022-11-23 17:28:18', '2022-11-23 17:28:18'),
(160, 38, 'İple sarılır.', 0, '2022-11-23 17:28:18', '2022-11-23 17:28:18'),
(161, 39, 'Buji', 0, '2022-11-23 17:29:35', '2022-11-23 17:29:35'),
(162, 39, 'Soket', 0, '2022-11-23 17:29:35', '2022-11-23 17:29:35'),
(163, 39, 'Ampul', 0, '2022-11-23 17:29:35', '2022-11-23 17:29:35'),
(164, 39, 'Sigorta', 1, '2022-11-23 17:29:35', '2022-11-23 17:29:35'),
(165, 40, 'Saf su', 0, '2022-11-23 17:30:34', '2022-11-23 17:30:34'),
(166, 40, 'Antifriz', 1, '2022-11-23 17:30:34', '2022-11-23 17:30:34'),
(167, 40, 'Motor yağı', 0, '2022-11-23 17:30:35', '2022-11-23 17:30:35'),
(168, 40, 'Fren hidroliği', 0, '2022-11-23 17:30:35', '2022-11-23 17:30:35'),
(169, 41, 'Motor yağ basıncı ikaz ışığı', 1, '2022-11-23 17:33:43', '2022-11-23 17:33:43'),
(170, 41, 'Egzoz gazları kontrol ikaz ışığı', 0, '2022-11-23 17:33:43', '2022-11-23 17:33:43'),
(171, 41, 'Fren balataları aşınmış ikaz ışığı', 0, '2022-11-23 17:33:43', '2022-11-23 17:33:43'),
(172, 41, 'Emniyet kemeri takılı değil ikaz ışığı', 0, '2022-11-23 17:33:43', '2022-11-23 17:33:43'),
(173, 42, 'Araç üstü tavan bagajı kullanılması', 0, '2022-11-23 17:35:10', '2022-11-23 17:35:10'),
(174, 42, 'Tam gazdan ve ani hızlanmalardan kaçınılması', 1, '2022-11-23 17:35:10', '2022-11-23 17:35:10'),
(175, 42, 'Araçta yapılması gerekli bakım ve ayarların ihmal edilmesi', 0, '2022-11-23 17:35:10', '2022-11-23 17:35:10'),
(176, 42, 'Tavsiye edilmeyen tip ve ebatlarda araç lastiği kullanılması', 0, '2022-11-23 17:35:10', '2022-11-23 17:35:10'),
(181, 43, 'Mizaç', 0, '2022-11-23 17:40:03', '2022-11-23 17:40:03'),
(182, 43, 'Beden dili', 0, '2022-11-23 17:40:03', '2022-11-23 17:40:03'),
(183, 43, 'Trafik adabı', 1, '2022-11-23 17:40:03', '2022-11-23 17:40:03'),
(184, 43, 'Konuşma üslubu', 0, '2022-11-23 17:40:03', '2022-11-23 17:40:03'),
(185, 44, 'Davranışlarının sonuçlarını düşünerek hareket etmesi', 0, '2022-11-23 17:41:56', '2022-11-23 17:41:56'),
(186, 44, 'Aracını kullanırken trafik kurallarının bilincinde olması', 0, '2022-11-23 17:41:56', '2022-11-23 17:41:56'),
(187, 44, 'Başkalarının canına ya da malına zarar verme sorumluluğunu üstlenerek araç kullanması', 0, '2022-11-23 17:41:56', '2022-11-23 17:41:56'),
(188, 44, 'Sürekli şerit değiştirerek (slalom yaparak) araç kullanması', 1, '2022-11-23 17:41:56', '2022-11-23 17:41:56'),
(189, 45, 'Öfke', 0, '2022-11-23 17:42:37', '2022-11-23 17:42:37'),
(190, 45, 'Sabır', 1, '2022-11-23 17:42:37', '2022-11-23 17:42:37'),
(191, 45, 'İnatlaşma', 0, '2022-11-23 17:42:37', '2022-11-23 17:42:37'),
(192, 45, 'Aşırı tepki', 0, '2022-11-23 17:42:37', '2022-11-23 17:42:37'),
(193, 46, 'Korkutmak veya şaşırtmak', 0, '2022-11-23 17:43:57', '2022-11-23 17:43:57'),
(194, 46, 'Su, çamur ve benzerlerini sıçratmak', 0, '2022-11-23 17:43:57', '2022-11-23 17:43:57'),
(195, 46, 'Sola ya da sağa dönüş yapmadan önce sinyal vermek', 1, '2022-11-23 17:43:57', '2022-11-23 17:43:57'),
(196, 46, 'Sigara külü ve izmaritlerini veya başka şeyleri yola atıp dökmek', 0, '2022-11-23 17:43:57', '2022-11-23 17:43:57'),
(197, 47, 'Yalnız I', 0, '2022-11-23 17:46:57', '2022-11-23 17:46:57'),
(198, 47, 'I ve II', 1, '2022-11-23 17:46:57', '2022-11-23 17:46:57'),
(199, 47, 'II ve III', 0, '2022-11-23 17:46:57', '2022-11-23 17:46:57'),
(200, 47, 'I, II ve III', 0, '2022-11-23 17:46:57', '2022-11-23 17:46:57'),
(201, 48, 'Ülke ekonomisini', 1, '2022-11-23 17:48:13', '2022-11-23 17:48:13'),
(202, 48, 'Kasko sigortasının önemini', 0, '2022-11-23 17:48:13', '2022-11-23 17:48:13'),
(203, 48, 'Bireylerde trafik bilincinin oluşmasını', 0, '2022-11-23 17:48:13', '2022-11-23 17:48:13'),
(204, 48, 'Taşıt güvenlik donanımlarının gelişimini', 0, '2022-11-23 17:48:13', '2022-11-23 17:48:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_17_070011_create_quizzes_table', 1),
(6, '2022_11_17_070044_create_questions_table', 1),
(7, '2022_11_17_070058_create_answers_table', 1),
(8, '2022_11_17_070116_create_quiz_user_table', 1),
(9, '2022_11_17_071210_create_results_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, '<p>fasdfafsdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>asdfasdfasdfasdfasdfsafaskdjfşlasjdflkjaslfjsajflasjflksjafdjasdfljasidfjasifjasifdjasjflsjfljasdfkaisldkfaisdfjasildjfiaslkjfalsjfasfasdfasdf</p><p>asdfasdfasdflasdjfailsjdfilasjdflasjlfdkjasilfdjasifdklasjildjkfalisdkjflasjkdflajsldjfalsjdfasjkdlfjaslkjfasjfdksklajdfasdlşkjifsdkljifrjdıkaqrtweğıjewığtrıığohrtherohtoğwehrtoğwherothweorthweorhtowerhjtoıwerhıothweıorhtoıwehrtoıhwertwertwertwertwertwertpsdfkghğspfdkgğskdfg</p><p>skdfğ</p><p>gsdfg</p>', 1, '2022-11-23 23:32:33', '2022-11-23 23:32:33'),
(2, '<p><strong>Ülkemizde 112 acil telefon hattı, öncelikle hangi hizmet için kullanılmaktadır?</strong></p>', 2, '2022-11-23 15:13:54', '2022-11-23 15:13:54'),
(3, '<p><strong>Aşağıdakilerden hangisi, kazazedenin ikinci değerlendirilme aşamalarından olan \"Baştan Aşağı Kontrol\" basamağında yer alır?</strong></p>', 2, '2022-11-23 15:15:43', '2022-11-23 15:15:43'),
(4, '<p><strong>Aşağıdakilerden hangisi, kaza sonrası güvenli bir ortamın oluşturulması için yapılması gereken uygulamalardandır?</strong></p>', 2, '2022-11-23 15:17:12', '2022-11-23 15:17:12'),
(5, '<p><strong>Resimde görülen manevra, hangi amaçla uygulanır?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Manevra_1669238457.PNG\"></p>', 2, '2022-11-23 15:22:14', '2022-11-23 15:22:14'),
(6, '<p><strong>Yetişkinlere ve bebeklere yapılan temel yaşam desteği uygulamasında, göğüs kemiği kaç cm aşağı inecek şekilde kalp basısı uygulanır?</strong></p>', 2, '2022-11-23 15:23:41', '2022-11-23 15:23:41'),
(7, '<p><strong>İlk yardımcı olarak bulunduğunuz bir kaza yerinde, kazazedelerden birinin öksürme ile ağzından açık kırmızı renkte, köpüklü kan geldiğini gözlemlediniz. Bu durumda, aşağıdaki organlardan hangisinin yaralandığını düşünürsünüz?</strong></p>', 2, '2022-11-23 15:25:50', '2022-11-23 15:25:50'),
(8, '<p><strong>Baş yaralanması sebebiyle bayılan ve daha sonra kendine gelen yaralıya, aşağıdakilerden hangisi uygulanır?</strong></p>', 2, '2022-11-23 15:36:19', '2022-11-23 15:36:19'),
(9, '<p><strong>Bilinç kaybının en ileri durumu, koma hâli olarak bilinir. Buna göre, aşağıdakilerden hangisi koma hâli belirtilerindendir?</strong></p>', 2, '2022-11-23 15:37:21', '2022-11-23 15:37:21'),
(10, '<ul><li><strong>I. Damar ve sinir sıkışmasına&nbsp;</strong></li><li><strong>II. Çıkığın sık sık tekrar etmesine</strong></li><li><strong>III. Eklem bağlarının düzelmeyecek ölçüde tahrip olmasına&nbsp;</strong></li></ul><p>&nbsp;</p><p><strong>Çıkmış kemiğin uzman olmayan kişilerce eklem boşluğuna konulmaya çalışılması, yukarıda verilenlerden hangilerine neden olabilir?</strong></p>', 2, '2022-11-23 15:51:52', '2022-11-23 15:52:32'),
(11, '<p><strong>Sürükleme yöntemleri;&nbsp;</strong></p><ul><li><strong>I. Çok kilolu ve iri yarı kişilerin taşınmasında,&nbsp;</strong></li><li><strong>II. Kazazedelerin dar, basık ve geçiş güçlüğü olan bir yerden çıkarılmasında kullanılır.&nbsp;</strong></li></ul><p><strong>Verilenler için aşağıdakilerden hangisi söylenebilir?</strong></p>', 2, '2022-11-23 16:02:59', '2022-11-23 16:02:59'),
(12, '<p><strong>Kalp-damar sisteminin yaşamsal organlara uygun oranda kanlanma yapamaması nedeniyle ortaya çıkan, tansiyon düşüklüğü ile seyreden ve ani gelişen dolaşım yetmezliğine - - - - denir.&nbsp;</strong></p><p><strong>Bu ifadede boş bırakılan yere aşağıdakilerden hangisi yazılmalıdır?</strong></p>', 2, '2022-11-23 16:07:12', '2022-11-23 16:07:12'),
(13, '<p><strong>Şekildeki kara yoluna ne ad verilir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Yol_1669241709.PNG\"></p>', 2, '2022-11-23 16:16:59', '2022-11-23 16:16:59'),
(14, '<p><strong>Sürücüsü dahil oturma yeri on yediyi aşmayan otobüslere ne ad verilir?</strong></p>', 2, '2022-11-23 16:22:04', '2022-11-23 16:22:04'),
(15, '<p><strong>Işıklı trafik işaret cihazında kırmızı ile birlikte sarı ışığın yanması, beklemekte olan sürücüye neyi bildirir?</strong></p>', 2, '2022-11-23 16:23:59', '2022-11-23 16:23:59'),
(16, '<p><strong>Taşıt yolu üzerine çizilen şekildeki yatay işaretleme, sürücülere aşağıdakilerden hangisini bildirir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/50_1669242432.PNG\"></p>', 2, '2022-11-23 16:28:55', '2022-11-23 16:28:55'),
(17, '<p><strong>Şekildeki trafik işareti aşağıdakilerden hangisini bildirir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Üçgen_1669242618.PNG\"></p>', 2, '2022-11-23 16:34:21', '2022-11-23 16:34:21'),
(18, '<p><strong>Kara yolunun sağ ve soluna konan şekildeki trafik işaretleri, sürücülere aşağıdakilerden hangisine yaklaşıldığını bildirir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Çizgi_1669242946.PNG\"></p>', 2, '2022-11-23 16:37:51', '2022-11-23 16:37:51'),
(19, '<p><strong>Şekildeki trafik işareti aşağıdakilerden hangisini bildirir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/bisiklet_1669243177.PNG\"></p>', 2, '2022-11-23 16:41:18', '2022-11-23 16:41:18'),
(20, '<p><strong>Aşağıdakilerden hangisinin tek yönlü yollarda yapılması yasaktır?</strong></p>', 2, '2022-11-23 16:43:11', '2022-11-23 16:43:11'),
(21, '<p><strong>Aksine bir işaret yoksa şekildeki aracın yerleşim yeri içindeki azami hızı saatte kaç kilometredir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Otobüs_1669243559.PNG\"></p>', 2, '2022-11-23 16:47:01', '2022-11-23 16:47:01'),
(22, '<p><strong>Görüş yetersizliği olan tepe üstü ve dönemeçlerde, aşağıdakilerden hangisinin yapılması yasaktır?</strong></p>', 2, '2022-11-23 16:49:20', '2022-11-23 16:49:20'),
(23, '<p><strong>Şekildeki 1 numaralı aracın saatteki hızı 70 kilometredir.</strong></p><p><strong><img src=\"http://127.0.0.1:8000/media/70_1669243814.PNG\"></strong></p><p><strong>Takip mesafesi, saatteki hızın en az yarısı kadar metre olduğuna göre; 1 numaralı araç ile önündeki araç arasında en az kaç metre olmalıdır?</strong></p>', 2, '2022-11-23 16:51:45', '2022-11-23 16:51:45'),
(24, '<p><strong>Şekildeki gibi sola dönüş yapacak olan sürücü, aşağıdakilerden hangilerini yapmalıdır?&nbsp;</strong></p><ul><li><strong>I. Sola dönüş lambasını yakmalı&nbsp;</strong></li><li><strong>II. Hızını azaltmalı&nbsp;</strong></li><li><strong>III. Dar bir kavisle dönmeli</strong></li></ul><p><img src=\"http://127.0.0.1:8000/media/soll_1669243987.PNG\"></p>', 2, '2022-11-23 16:55:01', '2022-11-23 16:55:01'),
(25, '<p><strong>Şekildeki kontrolsüz kavşakta ilk geçiş hakkını hangi araç kullanmalıdır?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Kavşak_1669244181.PNG\"></p>', 2, '2022-11-23 16:57:39', '2022-11-23 16:57:39'),
(26, '<p><strong>\"Kırmızı ışıklı trafik işaretinde veya yetkili memurun dur işaretinde geçme\" trafik kazalarında - - - - sayılan hâllerdendir.&nbsp;</strong></p><p><strong>Verilen ifadede boş bırakılan yere aşağıdakilerden hangisi yazılmalıdır?</strong></p>', 2, '2022-11-23 17:00:27', '2022-11-23 17:00:27'),
(27, '<p><strong>Kara yollarında seyreden araçların yüklenmesine ilişkin usullere göre, aşağıdakilerden hangisinin yapılması yasaktır?</strong></p>', 2, '2022-11-23 17:03:53', '2022-11-23 17:03:53'),
(28, '<p><strong>Motorlu bisiklet, motosiklet ve sürücüleriyle ilgili olarak aşağıdakilerden hangisinin yapılması yasaktır?</strong></p>', 2, '2022-11-23 17:04:47', '2022-11-23 17:04:47'),
(29, '<p><strong>Araç sahiplerinin aşağıdakilerden hangisini yaptırması zorunludur?</strong></p>', 2, '2022-11-23 17:07:37', '2022-11-23 17:07:37'),
(30, '<p><strong>Bir araç çevreyi rahatsız edecek şekilde duman ve gürültü çıkarıyorsa aşağıdakilerden hangisi uygulanır?</strong></p>', 2, '2022-11-23 17:10:39', '2022-11-23 17:10:39'),
(31, '<ul><li><strong>I. Sürülen taşıtın cinsine uygun olması&nbsp;</strong></li><li><strong>II. Yetkililerin istemesi hâlinde gösterilmesi&nbsp;</strong></li><li><strong>III. Taşıt sürerken sürücünün yanında bulundurması&nbsp;</strong></li></ul><p><strong>Motorlu taşıt sürücü belgesiyle ilgili olarak yukarıda verilenlerden hangileri zorunludur?</strong></p>', 2, '2022-11-23 17:15:19', '2022-11-23 17:15:19'),
(32, '<p><strong>Frene basıldığı andan itibaren, aracın durmasına kadar geçen sürede kat edilen yola \"fren mesafesi\" denir. Buna göre, aşağıdakilerden hangisi fren mesafesini etkileyen faktörlerden biri değildir?</strong></p>', 2, '2022-11-23 17:17:16', '2022-11-23 17:17:16'),
(33, '<p><strong>Haritalarda gösterilen şekildeki işaret, aşağıdakilerden hangisine verilen yol numarasıdır?</strong></p><p><img src=\"http://127.0.0.1:8000/media/100_1669245583.PNG\"></p>', 2, '2022-11-23 17:21:06', '2022-11-23 17:21:06'),
(34, '<p><strong>Aşağıdakilerden hangisi, motordaki basınçlı yanmış gazların çıkarken oluşturacağı sesi azaltır?</strong></p>', 2, '2022-11-23 17:22:12', '2022-11-23 17:22:12'),
(35, '<p><strong>Motoru çalıştırmak için uzun süre ve sıkça marş yapılması aşağıdakilerden hangisinin ömrünü kısaltır?</strong></p>', 2, '2022-11-23 17:23:36', '2022-11-23 17:23:36'),
(36, '<p><strong>Aracın gösterge panelinde şekildeki uyarı lambasının yanıyor olması neyi bildirir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/ok_1669245870.PNG\"></p>', 2, '2022-11-23 17:25:47', '2022-11-23 17:25:47'),
(37, '<p><strong>Motorda çalışan parçaların temizliğini hangi sistem sağlar?</strong></p>', 2, '2022-11-23 17:27:13', '2022-11-23 17:27:13'),
(38, '<p><strong>Radyatör hortumlarında çatlaklar varsa ne yapılır?</strong></p>', 2, '2022-11-23 17:28:18', '2022-11-23 17:28:18'),
(39, '<p><strong>Araçta elektrik devresini yüksek akıma karşı koruyan devre elemanı hangisidir?</strong></p>', 2, '2022-11-23 17:29:35', '2022-11-23 17:29:35'),
(40, '<p><strong>Motor soğutma suyuna kışın donmaması için aşağıdakilerden hangisi yeterli miktarda karıştırılır?</strong></p>', 2, '2022-11-23 17:30:34', '2022-11-23 17:30:34'),
(41, '<p><strong>Aracın gösterge panelinde bulunan şekildeki ikaz ışığı, aşağıdakilerden hangisidir?</strong></p><p><img src=\"http://127.0.0.1:8000/media/Yağ_1669246380.PNG\"></p>', 2, '2022-11-23 17:33:43', '2022-11-23 17:33:43'),
(42, '<p><strong>Aşağıdakilerden hangisinin yapılması araçta yakıt tasarrufu sağlar?</strong></p>', 2, '2022-11-23 17:35:10', '2022-11-23 17:35:10'),
(43, '<p><strong>Denetim ve ceza korkusu olmadan yazılı kurallara uymanın yanı sıra yazılı olmayan, trafik içerisinde karşılıklı anlayış ve empati gerektiren davranışları oluşturma ve bu davranışları alışkanlık haline getirmedir. Bu cümlede tanımı yapılan kavram, aşağıdakilerden hangisidir?</strong></p>', 2, '2022-11-23 17:38:23', '2022-11-23 17:38:23'),
(44, '<p><strong>Sürücünün trafik ortamında yaptığı hangi davranış, diğer sürücülerin dikkatinin dağılmasına ya da paniğe kapılmalarına sebep olabilir?</strong></p>', 2, '2022-11-23 17:41:56', '2022-11-23 17:41:56'),
(45, '<p><strong>Kentlerimizin en büyük sorunlarından biri olan trafik sıkışıklığında trafiği açmayacağını bile bile sürekli korna çalarak, çevrede bulunanların gürültü kirliliğine maruz bırakılması hâli, trafikte hangi temel değere sahip olunmadığını gösterir?</strong></p>', 2, '2022-11-23 17:42:37', '2022-11-23 17:42:37'),
(46, '<p>Sürücünün aracını hareket ettirmesiyle birlikte trafikteki diğer yol kullanıcıları ile iletişimi başlar ve aracını park edinceye kadar da bu iletişim sürer. Buna göre, aşağıdakilerden hangisi trafikte olumlu yönde iletişim kurma becerisine örnektir?</p>', 2, '2022-11-23 17:43:57', '2022-11-23 17:43:57'),
(47, '<ul><li><strong>I. Dikkatin dağılması&nbsp;</strong></li><li><strong>II. Kural ihlallerinin artması&nbsp;</strong></li><li><strong>III. Sabırsızlık ve tahammülsüzlüğün azalması&nbsp;</strong></li></ul><p><strong>Verilenlerden hangilerinin, trafikte öfke duygusuna kapılan sürücülerde görülme olasılığı diğer sürücülere göre daha fazladır?</strong></p>', 2, '2022-11-23 17:46:57', '2022-11-23 17:46:57'),
(48, '<ul><li><strong>Kaza sonrası meydana gelen maddi hasar miktarı&nbsp;</strong></li><li><strong>İş gücü kaybının yanı sıra yaralıların tedavi süreçleri ve maliyeti&nbsp;</strong></li></ul><p><strong>Trafik kazalarıyla ilgili olarak verilenler, aşağıdakilerden hangisini olumsuz yönde etkiler?</strong></p>', 2, '2022-11-23 17:48:13', '2022-11-23 17:48:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdfas', 'fasdfsasdf', 15, '2022-11-23 23:31:15', '2022-11-23 23:31:15'),
(2, 'Ehliyet Sınavı', 'Ehliyet Sınavı 2022', 30, '2022-11-23 15:06:37', '2022-11-23 23:58:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint UNSIGNED NOT NULL,
  `quiz_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `results`
--

CREATE TABLE `results` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `quiz_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 6, '2022-11-23 23:59:22', '2022-11-23 23:59:22'),
(2, 2, 3, 2, 9, '2022-11-23 23:59:25', '2022-11-23 23:59:25'),
(3, 2, 4, 2, 15, '2022-11-23 23:59:26', '2022-11-23 23:59:26'),
(4, 2, 5, 2, 17, '2022-11-23 23:59:31', '2022-11-23 23:59:31'),
(5, 2, 6, 2, 23, '2022-11-23 23:59:39', '2022-11-23 23:59:39'),
(6, 2, 7, 2, 28, '2022-11-23 23:59:42', '2022-11-23 23:59:42'),
(7, 2, 8, 2, 31, '2022-11-23 23:59:44', '2022-11-23 23:59:44'),
(8, 2, 9, 2, 33, '2022-11-23 23:59:46', '2022-11-23 23:59:46'),
(9, 2, 10, 2, 43, '2022-11-23 23:59:49', '2022-11-23 23:59:49'),
(10, 2, 11, 2, 49, '2022-11-23 23:59:51', '2022-11-23 23:59:51'),
(11, 2, 12, 2, 55, '2022-11-23 23:59:53', '2022-11-23 23:59:53'),
(12, 2, 13, 2, 57, '2022-11-23 23:59:55', '2022-11-23 23:59:55'),
(13, 2, 14, 2, 64, '2022-11-24 00:00:00', '2022-11-24 00:00:00'),
(14, 2, 15, 2, 66, '2022-11-24 00:00:02', '2022-11-24 00:00:02'),
(15, 2, 16, 2, 69, '2022-11-24 00:00:04', '2022-11-24 00:00:04'),
(16, 2, 17, 2, 74, '2022-11-24 00:00:07', '2022-11-24 00:00:07'),
(17, 2, 18, 2, 78, '2022-11-24 00:00:09', '2022-11-24 00:00:09'),
(18, 2, 19, 2, 83, '2022-11-24 00:00:10', '2022-11-24 00:00:10'),
(19, 2, 20, 2, 87, '2022-11-24 00:00:13', '2022-11-24 00:00:13'),
(20, 2, 21, 2, 91, '2022-11-24 00:00:24', '2022-11-24 00:00:24'),
(21, 2, 22, 2, 93, '2022-11-24 00:00:26', '2022-11-24 00:00:26'),
(22, 2, 23, 2, 99, '2022-11-24 00:00:29', '2022-11-24 00:00:29'),
(23, 2, 24, 2, 104, '2022-11-24 00:00:32', '2022-11-24 00:00:32'),
(24, 2, 25, 2, 107, '2022-11-24 00:00:34', '2022-11-24 00:00:34'),
(25, 2, 26, 2, 109, '2022-11-24 00:00:36', '2022-11-24 00:00:36'),
(26, 2, 27, 2, 114, '2022-11-24 00:00:38', '2022-11-24 00:00:38'),
(27, 2, 28, 2, 119, '2022-11-24 00:00:40', '2022-11-24 00:00:40'),
(28, 2, 29, 2, 124, '2022-11-24 00:00:42', '2022-11-24 00:00:42'),
(29, 2, 30, 2, 127, '2022-11-24 00:00:44', '2022-11-24 00:00:44'),
(30, 2, 31, 2, 129, '2022-11-24 00:00:46', '2022-11-24 00:00:46'),
(31, 2, 32, 2, 135, '2022-11-24 00:00:50', '2022-11-24 00:00:50'),
(32, 2, 33, 2, 137, '2022-11-24 00:00:52', '2022-11-24 00:00:52'),
(33, 2, 34, 2, 143, '2022-11-24 00:00:55', '2022-11-24 00:00:55'),
(34, 2, 35, 2, 145, '2022-11-24 00:00:57', '2022-11-24 00:00:57'),
(35, 2, 36, 2, 149, '2022-11-24 00:01:01', '2022-11-24 00:01:01'),
(36, 2, 37, 2, 156, '2022-11-24 00:01:03', '2022-11-24 00:01:03'),
(37, 2, 38, 2, 158, '2022-11-24 00:01:05', '2022-11-24 00:01:05'),
(38, 2, 39, 2, 163, '2022-11-24 00:01:07', '2022-11-24 00:01:07'),
(39, 2, 40, 2, 167, '2022-11-24 00:01:13', '2022-11-24 00:01:13'),
(40, 2, 41, 2, 170, '2022-11-24 00:01:15', '2022-11-24 00:01:15'),
(41, 2, 42, 2, 173, '2022-11-24 00:01:17', '2022-11-24 00:01:17'),
(42, 2, 43, 2, 183, '2022-11-24 00:01:19', '2022-11-24 00:01:19'),
(43, 2, 44, 2, 186, '2022-11-24 00:01:21', '2022-11-24 00:01:21'),
(44, 2, 45, 2, 189, '2022-11-24 00:01:23', '2022-11-24 00:01:23'),
(45, 2, 46, 2, 196, '2022-11-24 00:01:24', '2022-11-24 00:01:24'),
(46, 2, 47, 2, 198, '2022-11-24 00:01:27', '2022-11-24 00:01:27'),
(47, 2, 48, 2, 203, '2022-11-24 00:01:30', '2022-11-24 00:01:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `visible_password`, `occupation`, `address`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2022-11-23 23:29:15', '$2y$10$/3tdKznOP5L6M1oPzVnZPu5w8i2mnD0Kg7n9QNpNsV/ohYDK5CICW', 'password', 'CEO', 'Turkiye', '05555555555', 1, NULL, '2022-11-23 23:29:15', '2022-11-23 23:29:15'),
(2, 'gazi', 'gazi@gmail.com', NULL, '$2y$10$lUHVqTqemwAYE/9Hna9aIOuCx/iuEU7QiOMIa5IuyK1lveMrkUQkm', 'feyzagazi1230', 'Frontend Developer', 'ankara', '55555555', 0, NULL, '2022-11-23 17:52:28', '2022-11-23 17:52:28'),
(3, 'feyza', 'feyzaksirin08@gmail.com', NULL, '$2y$10$jW1RhgJIN9w.A8UPKSp0vOPpxPY8VCqlFFMISGH0QLTNoo.MEmlvq', 'feyzagazi1230', 'Frontend Developer', 'ankara', '888888888888888888', 0, NULL, '2022-11-23 17:52:44', '2022-11-23 17:52:44'),
(4, 'Alparslan Akbaş', 'alp@gmail.com', NULL, '$2y$10$2eIqJuNwLCdOS2IKrs/17e.VSiJ3OAVwQYI7JzqoGxUWUZlqdGhnO', 'legolego', 'Senior .Net developer', 'Domaniç', '88888888888', 0, NULL, '2022-11-23 17:54:01', '2022-11-23 17:54:01');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tablo için AUTO_INCREMENT değeri `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
