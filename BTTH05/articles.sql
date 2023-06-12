-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table btth_05.baiviet
CREATE TABLE IF NOT EXISTS `baiviet` (
  `ma_bviet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tieude` varchar(200) NOT NULL,
  `ten_bhat` varchar(100) NOT NULL,
  `ma_tloai` int(10) unsigned NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text DEFAULT NULL,
  `ma_tgia` int(10) unsigned NOT NULL,
  `ngay_viet` datetime NOT NULL DEFAULT current_timestamp(),
  `hinhanh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_bviet`),
  KEY `baiviet_ma_tloai_foreign` (`ma_tloai`),
  KEY `baiviet_ma_tgia_foreign` (`ma_tgia`),
  CONSTRAINT `baiviet_ma_tgia_foreign` FOREIGN KEY (`ma_tgia`) REFERENCES `tacgia` (`ma_tgia`) ON DELETE CASCADE,
  CONSTRAINT `baiviet_ma_tloai_foreign` FOREIGN KEY (`ma_tloai`) REFERENCES `theloai` (`ma_tloai`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.baiviet: ~50 rows (approximately)
INSERT INTO `baiviet` (`ma_bviet`, `tieude`, `ten_bhat`, `ma_tloai`, `tomtat`, `noidung`, `ma_tgia`, `ngay_viet`, `hinhanh`) VALUES
	(1, 'Consequatur aut repudiandae voluptatem amet magni molestiae sapiente.', 'Sit deleniti reiciendis dolor.', 3, 'Quo est et sunt vel molestiae unde modi.', 'Quia non accusantium odit perferendis vel. Non deleniti et voluptates sed cum optio voluptas.', 8, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00dd00?text=animals+suscipit'),
	(2, 'Repellendus hic nam laudantium ea qui facere et occaecati.', 'Beatae ipsam voluptatem quaerat animi.', 1, 'Porro porro omnis numquam molestiae. Fugit esse et eum non sed.', 'Eaque et et nostrum quisquam. Sunt rerum at ut itaque vero aut ipsa tenetur. Autem iure sit aperiam dolore provident reiciendis nisi.', 6, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00bb44?text=animals+nesciunt'),
	(3, 'Fugiat iusto sequi et minus itaque voluptate qui dicta saepe nihil harum accusantium.', 'Iure est ea praesentium asperiores.', 5, 'Consequatur ipsa ipsa qui dolor voluptas.', 'Quis nihil enim quibusdam. Enim maiores rem est minima et est temporibus praesentium. Minima qui est repudiandae qui ducimus eum.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0077ee?text=animals+sapiente'),
	(4, 'Cumque voluptatum eligendi ut sit voluptatem ea.', 'Animi a adipisci iusto corporis repudiandae ducimus.', 1, 'Similique officiis perspiciatis asperiores temporibus reprehenderit. Non qui sapiente placeat voluptatem esse odio.', 'Similique cupiditate impedit et inventore qui sapiente a. Officia exercitationem aut harum in dolor. Nobis eius officiis tempora veniam error est quo. Incidunt velit fugit officia est.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00bb00?text=animals+beatae'),
	(5, 'Vitae optio qui earum rerum ipsum id nemo facilis.', 'Fugiat temporibus enim ad eaque inventore est.', 1, 'Et quaerat ab ut enim illum voluptatem. Enim dolorem minima est nostrum deserunt.', 'Similique magnam asperiores voluptates nisi commodi. Qui excepturi eum vel voluptatibus. Enim sit tempora alias provident.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008855?text=animals+ullam'),
	(6, 'Sint sit saepe impedit et facere adipisci enim quis impedit autem.', 'Eum voluptatem nihil odit nostrum provident.', 1, 'Est ullam sed unde ut eaque quos. Voluptatem numquam soluta qui incidunt ea odio facere.', 'Aut quia alias in beatae aut. Libero voluptas esse omnis minima voluptatem. Qui ut sint harum assumenda mollitia repellendus ipsum. Hic dolore officiis eveniet quod culpa ipsam. Soluta totam officia et sed.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0077ee?text=animals+sunt'),
	(7, 'Natus facilis quae qui suscipit ea eum.', 'Sunt commodi non sit.', 1, 'Ducimus quam alias mollitia corrupti molestiae ut nostrum doloremque.', 'Maxime expedita voluptatem eveniet. Quos est itaque neque corrupti enim deleniti sapiente. Pariatur culpa qui perspiciatis iste nemo possimus quo.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00dd44?text=animals+nulla'),
	(8, 'Et eligendi vitae eligendi et delectus mollitia quo ducimus sit maiores repellat in.', 'Velit aut ea qui dolores est.', 4, 'Nemo eaque qui voluptatem odit et nostrum qui.', 'Accusamus unde earum et eaque sint placeat officiis. Debitis ut dolorum enim omnis. Modi eum reprehenderit quis deleniti. Praesentium eaque sint quis distinctio ut ad ut.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ddaa?text=animals+eius'),
	(9, 'Qui deleniti ipsum voluptatem vitae quia quo nam assumenda quis.', 'Laudantium et in ex enim nihil aut.', 2, 'Dignissimos qui provident sunt recusandae voluptatem qui.', 'Praesentium dignissimos vel placeat officia. Architecto distinctio exercitationem minima enim dolor. Dolorem sapiente voluptates eos magni earum qui voluptas. Nostrum deleniti quis ipsum est.', 3, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0033ee?text=animals+atque'),
	(10, 'Aliquid delectus in aut repellendus dolores mollitia.', 'Ea ipsam aperiam ea magnam est.', 5, 'Nobis ratione quia ipsam consequatur quis error harum. Nesciunt aspernatur facere minima incidunt eum saepe.', 'Dolor non quas et autem culpa asperiores. Ea dolores totam dolores itaque possimus impedit. Praesentium ipsam iste quis adipisci numquam sed. Incidunt repellat iusto sint ad a eum sunt.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00bb00?text=animals+nesciunt'),
	(11, 'Qui dolores sit eligendi est quis illo natus laborum.', 'Fuga aliquam est aliquid.', 3, 'Eius reprehenderit ipsam a illo ex.', 'Molestias cumque qui fugiat autem totam. Totam recusandae id facere provident nesciunt quibusdam excepturi. Accusantium optio explicabo molestias et et qui. Id fugit aut eos accusamus. Beatae corrupti quo quia in quod et quo.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0099cc?text=animals+cumque'),
	(12, 'Est illo autem labore unde nam quia totam natus numquam enim eveniet quam harum.', 'A eos minima rerum aut mollitia.', 5, 'Quia et sequi vero quo qui. Eaque exercitationem ducimus architecto.', 'Dolor dolor quos quos at natus molestiae exercitationem recusandae. Maxime eum unde id tempore neque quod iure. Voluptatum dicta pariatur pariatur minima. Tempora quam repellat eveniet dolorem voluptates occaecati optio.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ff00?text=animals+saepe'),
	(13, 'Molestiae dolorem sint aut et fugiat alias repudiandae esse sit rem autem voluptatem explicabo.', 'Necessitatibus et ut autem dolorum explicabo ut.', 5, 'Ad nam libero ad facilis et dolor at.', 'Quis ut natus accusamus porro. Quis blanditiis saepe nesciunt odit sunt praesentium. Delectus fugit reprehenderit fugiat fugiat. Et ut voluptas est totam delectus autem.', 5, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/007755?text=animals+amet'),
	(14, 'Omnis consequatur quod voluptates consequatur vel mollitia ex sunt dicta commodi est ab et.', 'In ab voluptatem consequatur perspiciatis.', 2, 'Consequatur ea voluptatem earum dignissimos.', 'Est ab quod cupiditate quibusdam veritatis hic officia. Ipsam expedita quas illum maiores.', 3, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0099bb?text=animals+eum'),
	(15, 'Neque nostrum ex aut nihil est autem ut sit nesciunt possimus.', 'Earum sequi aspernatur beatae rerum.', 1, 'Consequatur enim aut sunt ipsam consequatur accusamus. Beatae provident nostrum maiores accusantium nam pariatur commodi fuga.', 'Cupiditate nobis consectetur ducimus sit accusamus suscipit. Sapiente architecto at voluptates id ipsa. Nemo repellendus occaecati et quia dicta.', 8, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00bb99?text=animals+quas'),
	(16, 'Adipisci eligendi omnis quis ut sed quidem odit quas earum.', 'Adipisci voluptatibus libero et odio.', 4, 'Accusantium id ex pariatur amet illum.', 'Accusantium perspiciatis deserunt dolore reiciendis repellendus ullam. Eos quo asperiores eum provident minima impedit. Sint explicabo ut vel voluptas et non. Eius quam nam laboriosam enim ut odio eum.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/006600?text=animals+iste'),
	(17, 'Asperiores perspiciatis in laborum autem recusandae ratione eligendi soluta voluptate optio aut.', 'Ullam dolorum quia labore consectetur libero corrupti.', 5, 'Nesciunt est neque iste sunt architecto est. Sit dignissimos explicabo dolorem aut aut tempore harum.', 'Nesciunt itaque quam corrupti aspernatur sunt. Totam aut voluptatem repudiandae molestiae commodi expedita. Earum rem dolor sapiente qui error quod non.', 10, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008888?text=animals+exercitationem'),
	(18, 'Sunt quod ea iusto necessitatibus assumenda fugiat amet delectus eaque cum.', 'Impedit et praesentium eos et.', 1, 'Sequi dolorem ut eum sit. Eum laborum alias cum.', 'Quidem doloremque ex omnis maxime soluta aperiam. Illo debitis maiores omnis id voluptas.', 5, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ee22?text=animals+ea'),
	(19, 'Nemo quis libero voluptatibus aut quia qui non consequatur aut qui officia dicta vitae.', 'Quas natus assumenda maiores necessitatibus.', 5, 'Ipsam delectus sequi magnam maiores et labore. Inventore ut adipisci molestias.', 'In eius vel ad libero est exercitationem. Optio itaque cum minima reiciendis. Nobis corrupti dolorem beatae possimus omnis et alias ut. Culpa quae similique impedit ut.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/007711?text=animals+recusandae'),
	(20, 'Molestiae nihil qui ipsum ipsum aliquam reiciendis.', 'Aut alias qui tempore illo.', 5, 'Minima maxime dolorem nisi esse praesentium quae sed. Aut ipsum omnis aut aut necessitatibus et.', 'Itaque suscipit maxime magni non qui modi cupiditate. Blanditiis dolorum non animi modi aliquid qui. Error officia aut possimus accusamus rem velit.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0011dd?text=animals+perferendis'),
	(21, 'Quis ratione expedita et unde aperiam deleniti.', 'Harum ratione dicta doloribus.', 1, 'Tempore dolore aliquam corrupti ea delectus harum quae.', 'Reiciendis in vitae vel error doloribus. Cumque cupiditate officia vitae placeat. Eveniet possimus est amet voluptas qui omnis. Sequi esse eveniet non.', 8, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0000ee?text=animals+fugiat'),
	(22, 'A delectus blanditiis quibusdam quod et ad iure modi.', 'Architecto eveniet suscipit soluta quae quia odit nihil.', 2, 'Magni sunt quas voluptatum saepe enim sed. Explicabo voluptas consequatur sit dolores quasi ea voluptas doloribus.', 'Inventore tempora et quaerat aut. Quis molestias tempora sequi sequi natus ipsum molestias est. Magnam nesciunt iusto voluptate minus ipsa autem.', 6, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/001122?text=animals+aut'),
	(23, 'Qui ut quia perferendis aut recusandae voluptatem possimus.', 'Voluptas aut dignissimos ad.', 3, 'Corporis libero ipsa molestiae laboriosam.', 'Fuga accusantium harum maiores suscipit nulla quisquam quam. Qui quia architecto quis. Nulla animi omnis assumenda ipsam iusto vero.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/001166?text=animals+error'),
	(24, 'Qui necessitatibus temporibus voluptatem recusandae quae culpa rerum.', 'Officiis totam est est ducimus et tenetur.', 5, 'Aut ad unde magnam ipsa.', 'Dicta eaque asperiores velit ipsa. Illo inventore mollitia facere numquam est.', 5, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ddcc?text=animals+est'),
	(25, 'Repellat mollitia dignissimos in ipsum dolores reprehenderit animi magnam iusto sit dicta nulla optio.', 'Incidunt quidem adipisci iure iure.', 5, 'Vero praesentium vel numquam cumque consectetur.', 'Id illo sit natus voluptas vel eos. Delectus quasi et minus cum ut. Velit ducimus aut accusamus aut vel dolor. Assumenda consequatur distinctio sint.', 6, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/002299?text=animals+quidem'),
	(26, 'Voluptas ut tempora iure minima tempora consequuntur suscipit suscipit nesciunt.', 'In blanditiis esse beatae omnis quo quia.', 2, 'Ut in inventore molestiae sint dolor est neque. Amet beatae dolorum eum.', 'Laudantium numquam eaque consectetur possimus illum. Occaecati dolor tempora rerum enim ut. Natus cumque animi sunt enim et alias aliquid. Tenetur voluptatibus exercitationem id et voluptate.', 9, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008811?text=animals+aspernatur'),
	(27, 'Eligendi in sed cum repellat itaque natus.', 'Ratione unde tenetur magnam sed officia provident.', 2, 'Distinctio ut ut aliquid sed optio explicabo consequuntur.', 'Hic expedita voluptas voluptatem illo quia dolores. Esse velit vero sint sit quia. Blanditiis itaque sed blanditiis alias sit rerum reprehenderit. Sit delectus neque at enim.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008844?text=animals+consequatur'),
	(28, 'Qui qui nemo autem et esse quae soluta ut omnis.', 'Ut illo exercitationem eos placeat.', 1, 'Dignissimos repellat ut aspernatur dignissimos fugit. Voluptatem dolore nisi est sed.', 'Nesciunt expedita harum nisi blanditiis odio consequatur sed expedita. Dolorem nesciunt qui ut ducimus. Nulla repellat maiores voluptate nisi animi blanditiis.', 2, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ffaa?text=animals+dolor'),
	(29, 'Dolores voluptatem quis et blanditiis ipsum ut error illum nulla sunt ut.', 'Harum cupiditate nam quia et officiis eligendi.', 5, 'Est qui eos consequatur fuga deleniti id. Temporibus vel reiciendis voluptatem inventore.', 'Accusantium ut autem ut et quis accusantium sed. Hic quo veritatis impedit aut. Rerum quasi ea modi aut est. Explicabo qui veniam aliquid neque similique aliquam.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ee99?text=animals+id'),
	(30, 'Quasi perspiciatis dolor amet necessitatibus voluptates occaecati ipsum.', 'Iusto eaque quisquam blanditiis minus quia quos.', 4, 'Aperiam aut autem blanditiis.', 'Amet alias nulla qui porro voluptatem rerum minima. Modi est velit alias quis. Id inventore consequatur sed enim dolorum animi mollitia. Nesciunt aut quod illo ratione sed quia nam.', 6, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0077ff?text=animals+in'),
	(31, 'Animi modi accusamus sed ipsam et dolorem qui et soluta et veritatis qui sit.', 'Ut corporis molestias explicabo voluptatem odit ipsum.', 2, 'Dolore consequatur assumenda iusto. Assumenda ducimus laudantium incidunt ullam dolorem.', 'Aliquid esse consequatur qui sequi sint. Voluptatem rerum itaque recusandae qui. Aperiam expedita nulla distinctio incidunt quas. Adipisci illo accusamus rerum ea aspernatur.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008844?text=animals+nulla'),
	(32, 'Voluptatum sit molestiae omnis repellat et aut ipsa culpa id placeat voluptates.', 'Et ullam in eos in quae.', 4, 'Cum voluptates distinctio qui voluptas vitae magni reprehenderit. Quia rem omnis voluptatem quo tempore rerum voluptas.', 'Ipsum accusantium fugit sint ad. Distinctio vel iusto beatae doloremque error rerum quasi. Ut voluptas totam ea cupiditate suscipit.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0055ff?text=animals+ut'),
	(33, 'Praesentium architecto facere error maxime ut amet natus quisquam reiciendis est.', 'Molestiae neque laudantium placeat veritatis.', 3, 'Laudantium et doloremque vitae est. Voluptatum aut eveniet consequatur ut id voluptatem beatae.', 'Iure aut quam nisi accusamus iste aut non. Quam sequi illo cupiditate voluptas odit possimus sit. Dolor in nisi ea molestias. Dolor eos quia quia autem fugiat quisquam mollitia est.', 9, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ff77?text=animals+aut'),
	(34, 'Temporibus distinctio neque sint debitis sed sit tenetur dolorem.', 'Tenetur molestias expedita quia omnis.', 1, 'Ex aliquid officia non laboriosam.', 'Odio accusamus optio expedita qui in provident et molestias. Velit accusantium et ex laborum. Eveniet sed minima dolor sapiente incidunt nesciunt fugiat.', 6, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/007733?text=animals+rerum'),
	(35, 'Soluta deserunt vel aut soluta sit repellendus et.', 'Tempora voluptatem rerum quod sed.', 3, 'Voluptas eaque provident distinctio quia corrupti. Harum a et velit et libero.', 'Libero ab accusamus distinctio aliquam quod necessitatibus magnam reiciendis. Dolor voluptatem esse et esse qui. Molestiae quisquam est hic ut est consequatur nisi. Reiciendis deserunt sit ut sapiente rerum et ullam ut. Autem excepturi veniam quibusdam dolores.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/005511?text=animals+iste'),
	(36, 'Non minus eos qui repudiandae voluptatem quisquam.', 'Veniam a iusto error ex eum qui.', 1, 'Atque fugit omnis optio necessitatibus fugiat repudiandae qui.', 'Nobis quia facere in officia. Odio veritatis consequatur molestiae odit eveniet sint. Consequatur et et rerum voluptatum nihil. Consequatur sunt saepe minus impedit minus deleniti nulla.', 3, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0033cc?text=animals+exercitationem'),
	(37, 'Velit ut et et non ut et atque.', 'Minima dolores expedita voluptas.', 3, 'Sit non ea officiis.', 'Incidunt quis qui natus et ipsum voluptate adipisci. Commodi vitae voluptas consequatur deleniti autem quam sit. Ipsam quia vitae cum culpa. Quos nihil sapiente rem harum et.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0055bb?text=animals+eos'),
	(38, 'Provident rem eligendi reprehenderit optio dolorem vitae reiciendis quia dicta odit et aut.', 'Vitae ratione ut quos laudantium omnis.', 3, 'Ipsum voluptas cumque autem velit est sed omnis officiis.', 'Et et enim vel minima reiciendis officia. Molestiae voluptatem ex aut veritatis perspiciatis.', 3, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/008855?text=animals+occaecati'),
	(39, 'Voluptas tempore corrupti voluptas molestiae voluptas possimus doloremque eius voluptatem et delectus facere.', 'Eum distinctio tenetur repellat beatae.', 5, 'Ipsa nam totam excepturi consectetur magni.', 'Ea ipsa omnis autem qui quibusdam possimus consequuntur. Aliquam necessitatibus sed ea temporibus. Debitis voluptatem autem natus asperiores quibusdam qui. Accusantium fuga cum eos quia iure doloribus suscipit.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ff66?text=animals+hic'),
	(40, 'Et aliquid soluta consequatur aut ut iusto culpa voluptates.', 'Consequatur sit eos eos quia minus.', 2, 'Porro esse nisi non perferendis assumenda ab.', 'Alias rem culpa iusto blanditiis voluptatem quos cum. Architecto est explicabo nihil.', 10, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0011dd?text=animals+voluptatem'),
	(41, 'Ea quia maiores sint doloremque earum quia nisi nihil dolores.', 'Delectus provident ut in inventore voluptatem error.', 2, 'Velit optio consequatur magnam id odit similique doloremque. Et harum et dicta et expedita.', 'Ut ex voluptatem voluptatem hic. Aut excepturi eius minima qui dolorum facilis consequatur. Quam animi consequatur dolores et delectus voluptatem asperiores. Quia vel harum ex modi impedit facere qui.', 7, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ff22?text=animals+et'),
	(42, 'Est perferendis repudiandae qui quam officiis dolores et.', 'Aut blanditiis voluptatibus rerum provident.', 2, 'Omnis iure quod recusandae iure nam sed quae.', 'Ut et dolor ipsa sit quidem quasi. Est dolore quis aut cupiditate adipisci eligendi quos sint. Odio suscipit est ab id natus odit.', 2, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0000bb?text=animals+aut'),
	(43, 'Voluptas deserunt quia mollitia magnam ut quia omnis.', 'Distinctio et consequuntur quia ducimus quos eum.', 1, 'Expedita nam dolorem numquam.', 'Eum ipsum corporis eum cum reprehenderit expedita. Tempora dolore ex qui nihil itaque officiis officiis. Qui qui voluptatem nihil deserunt sunt.', 2, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ffee?text=animals+ea'),
	(44, 'Qui placeat molestiae dolores voluptate libero quos qui.', 'Praesentium omnis aliquam qui fugiat.', 5, 'Amet nulla aut amet nihil velit non culpa.', 'Perferendis molestiae consequatur ipsum. Tenetur tempore eius quidem dolorem similique dolores. Qui dolorum dolore molestiae ut perferendis iste quia velit.', 8, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/0044cc?text=animals+sequi'),
	(45, 'Quas fugit mollitia incidunt eligendi voluptas quas aut vero harum tempora.', 'Labore voluptate incidunt perferendis.', 4, 'Eveniet nihil quam ipsa nesciunt facere ab corporis.', 'Et quas dolore ut quam in eum corporis reprehenderit. Enim ullam necessitatibus et officia. Et aut ut quod iusto voluptate maxime rerum expedita.', 1, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ffbb?text=animals+dolorum'),
	(46, 'Sint exercitationem voluptate et est eos dolorum sed porro sunt quisquam voluptatum.', 'Sunt enim ut assumenda voluptatibus.', 5, 'Vero dolorem aut consectetur et rerum nemo placeat. Iusto dignissimos sunt qui et.', 'Excepturi ratione non vel recusandae totam. Laboriosam aut aperiam sunt vero voluptatem quos. Blanditiis optio voluptas ratione illo impedit.', 8, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00ee66?text=animals+quia'),
	(47, 'Et officiis alias sequi et dignissimos et exercitationem magni ut.', 'Impedit dolore laboriosam at.', 5, 'Et architecto in fuga. Ut et debitis nesciunt in iure.', 'Autem neque rerum libero nihil iste et. Quo ea aliquid accusantium debitis repellendus. Beatae illo velit doloremque natus velit nam minima. Ab quo nemo perferendis porro ducimus.', 2, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/007799?text=animals+dignissimos'),
	(48, 'Eius sint natus ut assumenda voluptates a.', 'Inventore voluptates cum qui laudantium expedita.', 2, 'A vitae quod quis vel saepe natus recusandae labore.', 'Tempora corporis sit et et at velit dolorem dolorem. Eveniet soluta optio blanditiis. Molestiae quis aut accusantium qui fugiat ut.', 2, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00bbaa?text=animals+nihil'),
	(49, 'Repellendus similique perspiciatis dolorem velit id blanditiis delectus ea itaque ea vel nemo sed.', 'Et sapiente hic ab officia voluptatibus porro.', 5, 'Repudiandae mollitia et distinctio dolorum libero omnis aperiam. Laboriosam voluptatem nostrum fugiat mollitia at quis odio.', 'Quasi molestiae quae aliquid quaerat debitis quidem vero. Voluptatem quibusdam aut qui saepe. Cumque veniam praesentium aut iste deserunt deleniti quam.', 9, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/002299?text=animals+et'),
	(50, 'Fugiat asperiores sapiente molestiae repudiandae enim quo.', 'Consequatur vitae dolores est quod dolor voluptate.', 3, 'Cumque quis qui alias quia. Ut ea qui facere.', 'Et et harum laboriosam quia placeat dolorem. Voluptatibus quo magnam et eligendi corrupti. Voluptatem provident nesciunt nihil asperiores. Corporis perspiciatis modi ut.', 4, '2023-06-11 23:18:11', 'https://via.placeholder.com/640x480.png/00dd88?text=animals+quaerat');

-- Dumping structure for table btth_05.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table btth_05.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_06_11_160103_create_tacgia_table', 1),
	(6, '2023_06_11_160118_create_theloai_table', 1),
	(7, '2023_06_11_160126_create_baiviet_table', 1);

-- Dumping structure for table btth_05.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table btth_05.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table btth_05.tacgia
CREATE TABLE IF NOT EXISTS `tacgia` (
  `ma_tgia` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_tgia` varchar(100) NOT NULL,
  `hinh_tgia` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_tgia`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.tacgia: ~50 rows (approximately)
INSERT INTO `tacgia` (`ma_tgia`, `ten_tgia`, `hinh_tgia`) VALUES
	(1, 'Vitae rerum assumenda.', 'https://via.placeholder.com/200x200.png/006666?text=peoples+praesentium'),
	(2, 'Quae nihil ut animi.', 'https://via.placeholder.com/200x200.png/0011ee?text=peoples+expedita'),
	(3, 'Dignissimos est dolor.', 'https://via.placeholder.com/200x200.png/004400?text=peoples+incidunt'),
	(4, 'Et omnis est.', 'https://via.placeholder.com/200x200.png/006666?text=peoples+delectus'),
	(5, 'Hic consequatur et eius.', 'https://via.placeholder.com/200x200.png/00aa11?text=peoples+voluptatem'),
	(6, 'Aut sunt pariatur.', 'https://via.placeholder.com/200x200.png/002266?text=peoples+ullam'),
	(7, 'Officiis enim omnis corrupti et.', 'https://via.placeholder.com/200x200.png/00bb88?text=peoples+enim'),
	(8, 'Ex accusamus quia autem.', 'https://via.placeholder.com/200x200.png/00bbdd?text=peoples+porro'),
	(9, 'In corrupti.', 'https://via.placeholder.com/200x200.png/00dd99?text=peoples+qui'),
	(10, 'Voluptas occaecati adipisci.', 'https://via.placeholder.com/200x200.png/001111?text=peoples+nisi'),
	(11, 'Eaque odio porro.', 'https://via.placeholder.com/200x200.png/005566?text=peoples+quaerat'),
	(12, 'Quidem totam fugit.', 'https://via.placeholder.com/200x200.png/008855?text=peoples+expedita'),
	(13, 'Blanditiis qui explicabo non.', 'https://via.placeholder.com/200x200.png/000066?text=peoples+sapiente'),
	(14, 'Porro sint a fuga.', 'https://via.placeholder.com/200x200.png/00ddee?text=peoples+sit'),
	(15, 'Officiis eaque dignissimos.', 'https://via.placeholder.com/200x200.png/00ccdd?text=peoples+architecto'),
	(16, 'Laudantium eum accusantium.', 'https://via.placeholder.com/200x200.png/00dd77?text=peoples+nostrum'),
	(17, 'Explicabo neque est natus.', 'https://via.placeholder.com/200x200.png/00cc66?text=peoples+aut'),
	(18, 'Labore voluptas esse est error.', 'https://via.placeholder.com/200x200.png/001144?text=peoples+aut'),
	(19, 'Quod eos et ea.', 'https://via.placeholder.com/200x200.png/006600?text=peoples+nam'),
	(20, 'Repellendus delectus placeat.', 'https://via.placeholder.com/200x200.png/00bb55?text=peoples+impedit'),
	(21, 'Officia adipisci.', 'https://via.placeholder.com/200x200.png/008877?text=peoples+recusandae'),
	(22, 'Distinctio architecto sint.', 'https://via.placeholder.com/200x200.png/00cccc?text=peoples+ut'),
	(23, 'Vitae modi tenetur sapiente ut.', 'https://via.placeholder.com/200x200.png/0000cc?text=peoples+laborum'),
	(24, 'Aut est laudantium sint velit.', 'https://via.placeholder.com/200x200.png/002200?text=peoples+perferendis'),
	(25, 'Nemo consequatur dolor iure.', 'https://via.placeholder.com/200x200.png/0000bb?text=peoples+omnis'),
	(26, 'Esse atque fugiat voluptas.', 'https://via.placeholder.com/200x200.png/0011aa?text=peoples+eos'),
	(27, 'Eos ad dolorem rem.', 'https://via.placeholder.com/200x200.png/00cc00?text=peoples+velit'),
	(28, 'Aut temporibus et reprehenderit expedita.', 'https://via.placeholder.com/200x200.png/007766?text=peoples+sequi'),
	(29, 'Dolor animi eos esse enim.', 'https://via.placeholder.com/200x200.png/0077bb?text=peoples+ut'),
	(30, 'Sint et ea.', 'https://via.placeholder.com/200x200.png/0000aa?text=peoples+quae'),
	(31, 'Ipsum exercitationem minus error.', 'https://via.placeholder.com/200x200.png/000033?text=peoples+omnis'),
	(32, 'Necessitatibus alias.', 'https://via.placeholder.com/200x200.png/000033?text=peoples+ab'),
	(33, 'Quas odio.', 'https://via.placeholder.com/200x200.png/000033?text=peoples+ab'),
	(34, 'Ut ut placeat.', 'https://via.placeholder.com/200x200.png/00ffff?text=peoples+praesentium'),
	(35, 'In est tempore fuga nam.', 'https://via.placeholder.com/200x200.png/006688?text=peoples+quis'),
	(36, 'Omnis illo aliquam qui.', 'https://via.placeholder.com/200x200.png/00bb77?text=peoples+iste'),
	(37, 'Eum a nemo ducimus.', 'https://via.placeholder.com/200x200.png/00cc44?text=peoples+aliquam'),
	(38, 'Et aliquam ullam.', 'https://via.placeholder.com/200x200.png/0077dd?text=peoples+rerum'),
	(39, 'Atque quos alias quos.', 'https://via.placeholder.com/200x200.png/0088dd?text=peoples+quaerat'),
	(40, 'Maiores ut omnis dolorem.', 'https://via.placeholder.com/200x200.png/00ee22?text=peoples+esse'),
	(41, 'Nisi et laboriosam.', 'https://via.placeholder.com/200x200.png/0099cc?text=peoples+corporis'),
	(42, 'Placeat est rerum et.', 'https://via.placeholder.com/200x200.png/001199?text=peoples+occaecati'),
	(43, 'Qui nisi aut.', 'https://via.placeholder.com/200x200.png/000022?text=peoples+aut'),
	(44, 'Omnis quasi sequi assumenda.', 'https://via.placeholder.com/200x200.png/000088?text=peoples+delectus'),
	(45, 'Qui mollitia.', 'https://via.placeholder.com/200x200.png/00ee00?text=peoples+autem'),
	(46, 'Autem itaque voluptate reiciendis.', 'https://via.placeholder.com/200x200.png/00dd44?text=peoples+qui'),
	(47, 'Dicta amet enim.', 'https://via.placeholder.com/200x200.png/006666?text=peoples+cumque'),
	(48, 'Commodi nisi officiis.', 'https://via.placeholder.com/200x200.png/00bbdd?text=peoples+aspernatur'),
	(49, 'Vitae hic.', 'https://via.placeholder.com/200x200.png/0000ff?text=peoples+omnis'),
	(50, 'Consequatur dolores ipsam.', 'https://via.placeholder.com/200x200.png/00aa99?text=peoples+accusamus');

-- Dumping structure for table btth_05.theloai
CREATE TABLE IF NOT EXISTS `theloai` (
  `ma_tloai` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(50) NOT NULL,
  PRIMARY KEY (`ma_tloai`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.theloai: ~50 rows (approximately)
INSERT INTO `theloai` (`ma_tloai`, `ten_loai`) VALUES
	(1, 'Et quia magni.'),
	(2, 'Non et.'),
	(3, 'Ea dolore alias.'),
	(4, 'Culpa qui.'),
	(5, 'Eos tenetur.'),
	(6, 'Recusandae et consequuntur.'),
	(7, 'Eos libero aut.'),
	(8, 'In et nesciunt.'),
	(9, 'Suscipit quae culpa.'),
	(10, 'Et commodi.'),
	(11, 'Quam molestiae.'),
	(12, 'Eveniet voluptates.'),
	(13, 'Nesciunt et non.'),
	(14, 'Dolorum corrupti quia.'),
	(15, 'Ut corporis voluptas.'),
	(16, 'Consequatur possimus.'),
	(17, 'Ut in.'),
	(18, 'Beatae quia.'),
	(19, 'Iusto assumenda suscipit.'),
	(20, 'Et omnis non.'),
	(21, 'Labore sequi id.'),
	(22, 'Repellendus voluptas dolorum.'),
	(23, 'In illum.'),
	(24, 'Laudantium dolorem.'),
	(25, 'Nam ipsa.'),
	(26, 'Fuga at et.'),
	(27, 'Inventore ut quasi.'),
	(28, 'Nemo eligendi deserunt.'),
	(29, 'Et nemo.'),
	(30, 'Quae sed.'),
	(31, 'Rerum nostrum.'),
	(32, 'Nobis adipisci ut.'),
	(33, 'Aut consequatur.'),
	(34, 'Blanditiis omnis.'),
	(35, 'Repudiandae blanditiis.'),
	(36, 'Et accusamus.'),
	(37, 'Et a modi.'),
	(38, 'Et et alias.'),
	(39, 'Quod ut.'),
	(40, 'Id necessitatibus.'),
	(41, 'Dolorum quidem.'),
	(42, 'Culpa laborum repellat.'),
	(43, 'Soluta voluptatem nihil.'),
	(44, 'Dolor recusandae quia.'),
	(45, 'Quam dolorum.'),
	(46, 'Eos ipsa.'),
	(47, 'Fuga eum deleniti.'),
	(48, 'Sequi blanditiis.'),
	(49, 'Et omnis tenetur.'),
	(50, 'Maxime quaerat ut.');

-- Dumping structure for table btth_05.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table btth_05.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
