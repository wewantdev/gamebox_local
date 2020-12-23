-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Hôte : t028w.myd.infomaniak.com
-- Généré le :  mar. 27 oct. 2020 à 02:16
-- Version du serveur :  5.7.31-log
-- Version de PHP :  7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `t028w_gamebox`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'GameboxMaster', 'gamebox@gmail.com', '$2y$10$764Lb2qaqhbrcFr0esW/PeNq5Ri8Z1.UtwgVt3KYOJR/jifLOjBcq', 'nH0vV7jieRDjj4q5W2HXlzC84nlgiomgYSoyXQYEyEdVef6D9ATtIfu0Q7b9', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'FPS', 'fps'),
(2, 'Survival', 'survival'),
(3, 'Battle royal', 'battle-royal'),
(4, 'MMORPG', 'mmorpg'),
(5, 'RPG', 'rpg'),
(6, 'Coopération', 'cooperation'),
(7, 'Multijoueur', 'multijoueur'),
(8, 'Aventure', 'aventure'),
(9, 'Horreur', 'horreur'),
(10, 'Simulation', 'simulation'),
(11, 'RTS', 'rts');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comments_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comments_body`, `news_id`, `users_id`, `created_at`, `updated_at`) VALUES
(45, 'test', 6, 12, '2020-10-25 16:54:32', '2020-10-25 16:54:32'),
(21, 'Je valide ! :)', 9, 12, '2020-10-10 16:59:36', '2020-10-10 16:59:36'),
(14, 'Je reteste et je m\'en vais !', 10, 1, '2020-10-02 15:42:20', '2020-10-02 15:42:20'),
(17, 'J\'aimerais vous saluer, car je suis nouveau sur l\'application.', 10, 12, '2020-10-06 15:04:20', '2020-10-06 15:04:20'),
(20, 'Tout à fait d\'accord avec toi @bahjeera ! C\'est top.', 5, 1, '2020-10-06 16:41:39', '2020-10-06 16:41:39'),
(19, 'Meilleure invention jamais pensée ! Change le jeu du tout au tout.', 5, 12, '2020-10-06 16:30:05', '2020-10-06 16:30:05'),
(44, 'Test', 6, 15, '2020-10-25 10:02:16', '2020-10-25 10:02:16'),
(24, 'Waouh super !', 9, 2, '2020-10-14 14:17:45', '2020-10-14 14:17:45'),
(25, 'Merci !', 9, 12, '2020-10-14 14:20:33', '2020-10-14 14:20:33'),
(26, 'Cool', 10, 12, '2020-10-15 22:29:03', '2020-10-15 22:29:03'),
(27, 'Wow trop cool! 😎', 5, 12, '2020-10-16 19:46:07', '2020-10-16 19:46:07'),
(28, 'salut', 10, 2, '2020-10-17 15:01:23', '2020-10-17 15:01:23'),
(29, 'aze', 10, 2, '2020-10-19 08:56:51', '2020-10-19 08:56:51'),
(30, 'test', 10, 2, '2020-10-19 09:09:05', '2020-10-19 09:09:05'),
(31, 'test', 10, 2, '2020-10-19 09:21:26', '2020-10-19 09:21:26'),
(32, 'test', 10, 2, '2020-10-19 09:22:57', '2020-10-19 09:22:57'),
(33, 'gggg', 10, 2, '2020-10-19 09:23:29', '2020-10-19 09:23:29'),
(34, 'po', 10, 2, '2020-10-19 09:25:59', '2020-10-19 09:25:59'),
(35, 'aze', 10, 2, '2020-10-19 09:27:24', '2020-10-19 09:27:24'),
(36, 'test', 10, 2, '2020-10-19 09:31:46', '2020-10-19 09:31:46'),
(37, 'test', 10, 2, '2020-10-19 09:41:42', '2020-10-19 09:41:42'),
(38, 'test', 10, 2, '2020-10-19 09:42:34', '2020-10-19 09:42:34'),
(39, 'test', 10, 2, '2020-10-19 09:43:28', '2020-10-19 09:43:28'),
(40, 'test', 10, 2, '2020-10-19 13:48:56', '2020-10-19 13:48:56'),
(41, 'Je commente. Sans vergogne !', 3, 2, '2020-10-20 22:34:21', '2020-10-20 22:34:21'),
(42, 'Hâte de le commander ! :D', 6, 12, '2020-10-23 15:00:50', '2020-10-23 15:00:50'),
(43, 'Salut', 6, 12, '2020-10-25 01:25:09', '2020-10-25 01:25:09'),
(47, 'Hello world ! J\'écris du texte pour tester tout ça !', 6, 12, '2020-10-25 17:05:35', '2020-10-25 17:05:35'),
(48, 'J\'ai hâte !! Ça traine !', 4, 18, '2020-10-25 19:53:07', '2020-10-25 19:53:07'),
(50, 'Oui ça traine ! C\'est le mot ! 31 décembre c\'est loiin.', 4, 19, '2020-10-25 23:38:52', '2020-10-25 23:38:52'),
(51, 'Test', 1, 19, '2020-10-26 13:07:21', '2020-10-26 13:07:21');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favorites_games`
--

CREATE TABLE `favorites_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `games_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `favorites_games`
--

INSERT INTO `favorites_games` (`id`, `games_id`, `users_id`, `created_at`, `updated_at`) VALUES
(4, 9, 19, NULL, NULL),
(6, 8, 19, NULL, NULL),
(12, 14, 12, NULL, NULL),
(13, 11, 12, NULL, NULL),
(15, 5, 18, NULL, NULL),
(18, 13, 12, NULL, NULL),
(20, 9, 12, NULL, NULL),
(21, 1, 19, NULL, NULL),
(22, 12, 12, NULL, NULL),
(23, 10, 12, NULL, NULL),
(24, 5, 12, NULL, NULL),
(25, 7, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `games_title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `desc_intro` longtext NOT NULL,
  `desc_body` longtext NOT NULL,
  `release_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`id`, `games_title`, `slug`, `poster`, `desc_intro`, `desc_body`, `release_date`, `created_at`, `updated_at`) VALUES
(1, 'Apex Legends', 'apex-legends', 'assets/images/posters/apex-legends.png', 'Apex Legends est un jeu vidéo de type battle royale développé par Respawn Entertainment et édité par Electronic Arts. Il est publié en accès gratuit le 4 février 2019 sur Microsoft Windows, PlayStation 4 et Xbox One.', 'Aussitôt considéré comme un concurrent du très populaire Fortnite Battle Royale, le jeu bat des records de fréquentation dès sa sortie, en réunissant plus de 2,5 millions de joueurs en 24 heures, 10 millions en trois jours puis 25 millions en une semaine après sa commercialisation. Après un mois de commercialisation, le jeu dépasse la barre des 50 millions de joueurs3. Le déploiement sur mobile est prévu d\'ici fin 2020, dans le but de toucher un plus large public.', '2019-02-04', NULL, '2020-09-26 05:32:58'),
(2, 'PlayerUnknown\'s Battlegrounds', 'pubg', 'assets/images/posters/pubg.jpg', 'PlayerUnknown\'s Battlegrounds (PUBG) est un jeu vidéo multijoueur en ligne de type battle royale développé et édité par PUBG Corporation. Il est disponible en accès anticipé sur Microsoft Windows à partir du 23 mars 2017, et la version 1.0 du jeu est sortie le 20 décembre 2017. Le jeu est également disponible à partir du 12 décembre sur Xbox One dans le cadre du programme Xbox Game Preview. Il est disponible sur PlayStation 4 depuis le 7 décembre 2018. Le 10 octobre 2019 sort PlayerUnknown’s Battlegrounds Lite, une version allégée et gratuite destinée aux joueurs possédant des performances matérielles plus basses.', 'Le jeu est également disponible sur iOS et Android gratuitement depuis mars 2018 sous le titre PlayerUnknown’s Battlegrounds Mobile. Une version allégée intitulée PlayerUnknown\'s Battlegrounds Mobile Lite est sorti le 19 mars 2020 pour les joueurs possédant des smartphones aux performances plus basses. En 2020, PUBG Corporation annonce avoir écoulé 70 millions d’exemplaires depuis sa sortie.', '2017-12-20', NULL, '2020-09-22 08:30:31'),
(3, 'Grounded', 'grounded', 'assets/images/posters/grounded.jpg', 'Grounded est un jeu vidéo de survie développé par Obsidian Entertainment et édité par Xbox Game Studios, sorti le 28 juillet 2020 en accès anticipé sur Windows et Xbox One. Dans le jeu, le personnage du joueur a été réduit à la taille d\'une fourmi et doit lutter pour survivre dans un jardin rempli de dangers.', 'Grounded est un jeu de survie qui peut être joué à la première personne ou à la troisième personne. Dans le jeu, la taille du protagoniste est miniaturisée à celle d\'une fourmi et doit survivre dans une arrière-cour. Dans le jeu, le personnage joueur doit consommer une quantité adéquate de nourriture et d\'eau, sinon il perdra respectivement sa santé en raison de la famine ou de la déshydratation. La cour arrière est remplie de divers insectes et créatures, notamment des araignées, des abeilles, des acariens, des mantes et des coccinelles. Différents insectes ont des objectifs différents dans le jeu. Par exemple, les araignées sont l\'un des principaux prédateurs du jeu qui traqueront les joueurs, les coccinelles peuvent conduire les joueurs à la source de nourriture, tandis qu\'un puceron peut être cuit et consommé pour se nourrir. Les joueurs peuvent également couper l\'herbe pour collecter les gouttes de rosée. Le jeu a une option d\'accessibilité pour les joueurs souffrant d\'arachnophobie, qui permet aux joueurs de décider de la façon dont les araignées effrayantes seront dans le jeu.\r\n\r\nÀ mesure que les joueurs progressent dans le jeu, ils visiteront de nouvelles zones dans l\'arrière-cour, la difficulté du jeu augmente et des ennemis seront plus dangereux. Tout au long du jeu, les joueurs doivent récupérer des ressources dans le monde afin de construire une base afin de se défendre contre certaines créatures, en particulier pendant la nuit car certains insectes deviennent plus agressifs. Les ressources peuvent également être utilisées pour fabriquer différents outils, pièges et armes, tels que des haches, des lances et des arcs, pour vaincre les ennemis. Les joueurs doivent également gérer leur endurance car le personnage jouable peut s\'épuiser en combat soutenu. Le jeu peut être joué en solo, mais il dispose également d\'un mode multijoueur coopératif à quatre joueurs.', '2020-07-28', NULL, '2020-09-22 08:32:13'),
(4, 'Fortnite', 'fortnite', 'assets/images/posters/fortnite.jpg', 'Fortnite est un jeu en ligne développé par Epic Games sous la forme de différents progiciels proposant différents modes de jeu qui partagent le même gameplay général et le même moteur de jeu. Les modes de jeu comportent Fortnite : Sauver le monde, un jeu coopératif de tir et de survie conçu pour quatre joueurs au maximum et dont le but est de combattre les hordes de zombies et de défendre des objets avec des fortifications à construire par le ou les joueurs, et Fortnite Battle Royale, un jeu de bataille royale anciennement payant, maintenant en free-to-play où jusqu\'à 100 joueurs se battent dans des espaces de plus en plus petits pour finir comme dernière personne debout.', 'Le mode de jeu Fortnite : Sauver le monde a été publié en 2011 en bêta alors que le mode Fortnite Battle Royale a été publié plus tard à partir de 2017 en accès anticipé ; Sauver le monde est disponible uniquement pour Microsoft Windows, MacOS, PlayStation 4 et Xbox One, tandis que Battle Royale a été publié pour ces dernières plates-formes, mais aussi pour Nintendo Switch, les appareils iOS et Android qui ne supportaient pas un tel téléchargement de données.\r\n\r\nSi les deux jeux ont été un succès pour Epic Games, Fortnite Battle Royale est devenu un phénomène de société, attirant plus de 125 millions de joueurs en moins d\'un an et générant des centaines de millions de dollars par mois. Epic Games annonce en 2019 que Fortnite compte 250 millions de joueurs, soit deux fois plus qu\'en juin 2018.', '2017-07-21', '2020-09-22 07:08:40', '2020-09-22 08:09:00'),
(5, 'World of Warcraft', 'world-of-warcraft', 'assets/images/posters/wow.webp', 'World of Warcraft (abrégé WoW) est un jeu vidéo de type MMORPG (jeu de rôle en ligne massivement multijoueur) développé par la société Blizzard Entertainment. C\'est le 4e jeu de l\'univers médiéval-fantastique Warcraft, introduit par Warcraft: Orcs and Humans en 1994. World of Warcraft prend place en Azeroth, près de quatre ans après les événements de la fin du jeu précédent, Warcraft III: The Frozen Throne (2003). Blizzard Entertainment annonce World of Warcraft le 2 septembre 2001. Le jeu est sorti en Amérique du Nord le 23 novembre 2004, pour les 10 ans de la franchise Warcraft.', 'La première extension du jeu, The Burning Crusade, est sortie le 16 janvier 2007. Depuis, sept extensions de plus ont été développées : Wrath of the Lich King, Cataclysm, Mists of Pandaria, Warlords of Draenor, Legion et Battle for Azeroth. Blizzard a annoncé la sortie d\'une nouvelle extension, Shadowlands, pour le 27 octobre 2020.\r\n\r\nDepuis sa sortie, World of Warcraft est le plus populaire des MMORPG. Le jeu tient le Guinness World Record pour la plus grande popularité pour un MMORPG. En avril 2008, World of Warcraft a été estimé comme rassemblant 62 % des joueurs de MMORPG. Le 7 octobre 2010, Blizzard annonce que plus de 12 millions de joueurs ont un compte World of Warcraft actif. C\'est à partir de fin 2012 que World of Warcraft a commencé à perdre continuellement un nombre croissant de joueurs. Au dernier trimestre 2012, Blizzard annonce le nombre de 9,6 millions d’abonnés à travers le monde, puis 7,7 millions pour le 2e trimestre 2013.\r\n\r\nWorld of Warcraft a fêté son 10e anniversaire en novembre 2014. Le mois suivant, à la suite de la sortie de l\'extension Warlords of Draenor, Blizzard annonce que World of Warcraft repasse le cap des 10 millions d\'abonnés.', '2004-11-23', '2020-09-23 06:16:41', '2020-09-23 06:16:41'),
(6, 'Call of Duty : Black Ops Cold War', 'cod-black-ops-cold-war', 'assets/images/posters/cod-cold-war.png', 'Call of Duty Black Ops Cold War fait très clairement partie des titres les plus attendus de cette fin d\'année. Nombreux sont les joueurs à vouloir s\'y essayer et notamment en apprendre davantage sur les multiples facettes du titre développé par Treyarch. Après le solo, nous avons donc eu le droit de mettre nos mains velues sur le mode Multi, qui vient d\'être dévoilé en vidéo à l\'instant. Voici nos impressions LIVE !', 'La moelle épinière d\'un Call of Duty se situe évidemment au niveau de son mode multijoueur. Après un Modern Warfare énormément joué notamment grâce à la présence de Warzone, Treyarch a souhaité continué dans le sillon des Black Ops. Qu\'en est-il réellement manette en main ? On vous raconte tout !', '2020-11-13', '2020-09-25 13:05:02', '2020-09-25 13:05:02'),
(7, 'Genshin impact', 'genshin-impact', 'assets/images/posters/genshin-impact.jpg', 'Vivez une aventure solo immersive. Venu d\'un autre monde, vous embarquez pour un voyage en quête de votre identité et de votre famille, mais aussi pour percer les secrets de Teyvat.', 'Parcourez le monde en volant, nagez dans des eaux cristallines et escaladez des montagnes à couper le souffle. Sortez des sentiers battus pour découvrir les secrets cachés d\'un monde rempli de merveilles et de mystères. Lancez-vous seul dans la bataille ou invitez des amis à vous rejoindre avec la possibilité de jouer à 4 sur PS4, iOS, Android et PC. Ne foncez pas tête baissée dans l\'aventure : manipulez les différents éléments pour venir à bout de puissants ennemis et résoudre des énigmes complexes.', '2020-09-28', '2020-10-12 08:23:36', '2020-10-19 15:13:53'),
(8, 'Ghost of tsushima', 'ghost-of-tsushima', 'assets/images/posters/ghost-of-tsushima.webp', 'Plongez au coeur du Japon féodal !', 'Ghost of Tsushima est un jeu vidéo d\'action en monde ouvert développé par Sucker Punch et édité par Sony, sorti le 17 juillet 2020 sur PlayStation 4. Le jeu se passe au Japon, en 1274 et s\'inspire de l\'Histoire de cette époque, sans pour autant chercher à la retranscrire fidèlement.', '2020-07-17', '2020-10-15 22:42:43', '2020-10-16 08:05:02'),
(9, 'Baldur\'s gate 3', 'baldurs-gate-3', 'assets/images/posters/baldurs-gate-3.jpg', 'Baldur\'s Gate III est le nouvel opus des jeux de rôle de la série Baldur\'s Gate, issue de l\'univers Donjons et Dragons. Il se déroule avant le premier opus. Vous grandissez du premier au trentième niveau, de Baldur\'s Gate aux Enfers. Ce RPG reprend le principe de son aîné et propose la création d\'un personnage parmi diverses classes, caractéristiques et compétences.', 'Constituez votre groupe et retournez aux Royaumes Oubliés dans une histoire d\'amitié, de trahison, de sacrifice et de survie, sur fond d\'attrait du pouvoir absolu.\r\n\r\nD\'étranges pouvoirs se déclarent en vous depuis que les flagelleurs mentaux vous ont implanté un parasite dans le cerveau. Résistez à ces dons malfaisants et retournez-les contre les forces des ténèbres, ou acceptez la corruption et devenez l\'incarnation du mal.\r\n\r\nLes créateurs de Divinity: Original Sin 2 vous présentent un RPG de nouvelle génération se déroulant dans l\'univers de Donjons et Dragons.', '2020-10-06', '2020-10-16 08:25:18', '2020-10-16 08:25:58'),
(10, 'The legends of Zelda : Breath of the wild', 'the-legends-of-zelda-botw', 'assets/images/posters/the-legend-of-zelda-breath-of-the-wild.jpg', 'Oubliez tout ce que vous savez sur les jeux The Legend of Zelda. Plongez dans un monde de découverte, d\'exploration et d\'aventure dans The Legend of Zelda: Breath of the Wild, un nouveau jeu qui vient bouleverser la série à succès.', 'The Legend of Zelda: Breath of the Wild est un jeu d\'action-aventure développé par la division Nintendo EPD, assisté par Monolith Soft, et publié par Nintendo le 3 mars 2017 sur Nintendo Switch lors du lancement de la console, ainsi que sur Wii U dont il est le dernier jeu produit par Nintendo.', '2017-03-03', '2020-10-16 18:41:11', '2020-10-16 18:41:11'),
(11, 'Theme hospital', 'theme-hospital', 'assets/images/posters/theme-hospital.jpg', 'Theme Hospital est un jeu vidéo de gestion développé par Bullfrog et édité par Electronic Arts en 1997 sur PC dans lequel les joueurs conçoivent et gèrent un hôpital privé dans le but de guérir les patients de maladies comiques fictives. Le jeu est le successeur de Theme Park, également produit par Bulfrog. Le jeu est remarqué pour son humour et contient de nombreuses références à la culture pop.', 'Le jeu a un sens de l\'humour un peu sombre, similaire à celui de son prédécesseur, Theme Park. Le joueur doit gérer les finances, les équipements et le personnel d\'un hôpital où affluent des porteurs de maladies loufoques telles que l\'hyperlangue (langue pendante à raccourcir au taille-langue), invisibilité (à soigner à la pharmacie), syndrome du King (un psychiatre devra convaincre le patient qu\'il n\'est pas Elvis Presley), etc. Un bilan de fin d\'année récompense les progrès du joueur et sanctionne ses manquements.\r\n\r\nPour gagner le niveau en cours, le joueur doit remplir un ensemble de conditions ; les plus courantes concernent le niveau de réputation de l\'hôpital, le montant de la trésorerie, la valeur de l\'établissement, ou le pourcentage de personnes soignées. Parfois, un critère supplémentaire conditionne la réussite : par exemple, tous les médicaments doivent atteindre un taux minimum d\'efficacité de 80 %. Il y a au total 12 niveaux à remporter.\r\n\r\nLe joueur commence une partie avec un hôpital vide. Avant l\'arrivée des premiers patients, le joueur dispose d\'un temps limité afin de pourvoir préparer l\'hôpital. Il doit y construire des salles, agencer les couloirs, ainsi que recruter du personnel, allouer les budgets.', '1997-01-01', '2020-10-16 18:53:50', '2020-10-16 18:53:50'),
(12, 'Cyber punk : 2077', 'cyber-punk-2077', 'assets/images/posters/cyber-punk.jpeg', 'Cyberpunk 2077 est un jeu vidéo d\'action-RPG en vue à la première personne développé par CD Projekt RED, fondé sur la série de jeu de rôle sur table Cyberpunk 2020 conçue par Mike Pondsmith.', 'Cyberpunk 2077 est un jeu d’action-aventure en monde ouvert qui se déroule à Night City, une mégalopole obsédée par le pouvoir, la séduction et les modifications corporelles. Vous incarnez V, mercenaire hors-la-loi à la recherche d’un implant unique qui serait la clé de l’immortalité. Personnalisez les cyberlogiciels, les compétences et le style de jeu de votre personnage, et explorez cette ville immense où chacun de vos choix aura un impact direct sur l’histoire et le monde qui vous entoure.', '2020-12-31', '2020-10-16 18:57:15', '2020-10-16 18:57:15'),
(13, 'Minecraft : Dungeons', 'minecraft-dungeons', 'assets/images/posters/minecraft-dungeons.jpg', 'Minecraft: Dungeons est un jeu vidéo d\'action-aventure se déroulant dans l\'univers de Minecraft. Le jeu, édité par Xbox Game Studios et co-développé par Mojang Studios et Double Eleven, est disponible depuis le 26 mai 2020 sur Windows, Xbox One, PlayStation 4 et Nintendo Switch.', 'Avance en écartant l’ennemi dans un tout nouveau jeu d’action et d’aventure disponible sur PC, Nintendo Switch, PlayStation 4, Xbox One et Xbox Game Pass. Fraie-toi un chemin seul ou allie-toi avec des amis ! Jusqu’à quatre joueurs peuvent participer ensemble, en ligne ou en couch co-op. Prends part à des combats rapprochés avec des attaques de mêlée, ou bien reste en retrait en te protégeant d’une épaisse armure ! Personnalise ton personnage et déverrouille des éléments et enchantements d’armes uniques pour des attaques spéciales dévastatrices. Explore des niveaux plein d’action et truffés de trésors dans une quête épique pour sauver les villageois et détruire le terrible Arch-Illager !', '2020-05-26', '2020-10-16 19:03:13', '2020-10-18 22:51:41'),
(14, 'Rocket league', 'rocket-league', 'assets/images/posters/rocket-league.jpg', 'Rocket League est un jeu vidéo de sport développé par Psyonix, sorti en juillet 2015 sur Windows et sur PlayStation 4, en février 2016 sur Xbox One, en septembre 2016 sur Linux et Mac et en novembre 2017 sur Nintendo Switch. Le jeu est gratuit depuis le 23 septembre 2020.', 'Le jeu est inspiré du Football : deux équipes, composée de un à quatre joueurs conduisant des voitures, doivent frapper un ballon afin de marquer dans le but adverse. Les voitures sont équipées de boost et peuvent sauter, permettant de jouer le ballon dans les airs. Des mises à jour du jeu incluent également d\'autres modes de jeu, se rapprochant du Basketball ou du Hockey sur glace.\r\n\r\nRocket League fait suite à Supersonic Acrobatic Rocket-Powered Battle-Cars, un jeu vidéo sorti en 2008 sur Playstation 3 et également développé par Psyonix. Bien que ce premier jeu ait reçu un accueil mitigé, une base solide d\'amateurs a motivé le studio pour développer une nouvelle version, cette fois-ci disponible sur plusieurs plate-formes.\r\n\r\nLe jeu est reconnu pour son style de jeu unique et a reçu de nombreuses distinctions. Le studio revendique plus de 10 millions de ventes en deux ans, au premier trimestre 2017, et 60 millions de joueurs en 2019.', '2015-07-07', '2020-10-19 14:55:19', '2020-10-23 14:34:55');

-- --------------------------------------------------------

--
-- Structure de la table `games_categories`
--

CREATE TABLE `games_categories` (
  `id` int(11) NOT NULL,
  `games_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `games_categories`
--

INSERT INTO `games_categories` (`id`, `games_id`, `categories_id`) VALUES
(1, 14, 6),
(2, 14, 7),
(3, 13, 5),
(4, 13, 6),
(5, 13, 7),
(6, 13, 8),
(7, 12, 1),
(8, 12, 5),
(9, 12, 8),
(10, 11, 10),
(11, 10, 5),
(12, 10, 8),
(13, 9, 5),
(14, 9, 7),
(15, 9, 8),
(16, 8, 5),
(17, 8, 8),
(18, 7, 5),
(19, 7, 8),
(20, 6, 1),
(21, 6, 6),
(22, 6, 7),
(23, 5, 4),
(24, 4, 1),
(25, 4, 3),
(26, 1, 1),
(27, 1, 3),
(28, 2, 1),
(29, 2, 3),
(30, 3, 6),
(31, 3, 7),
(32, 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `games_platforms`
--

CREATE TABLE `games_platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `games_id` int(11) NOT NULL,
  `platforms_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `games_platforms`
--

INSERT INTO `games_platforms` (`id`, `games_id`, `platforms_id`) VALUES
(1, 14, 3),
(2, 14, 4),
(3, 14, 5),
(4, 14, 6),
(5, 13, 3),
(6, 13, 4),
(7, 13, 5),
(8, 13, 6),
(9, 12, 3),
(10, 12, 4),
(11, 12, 5),
(12, 11, 4),
(13, 11, 5),
(14, 10, 6),
(15, 9, 5),
(16, 8, 4),
(17, 7, 3),
(18, 7, 4),
(19, 7, 5),
(20, 6, 3),
(21, 6, 4),
(22, 6, 5),
(23, 5, 5),
(24, 4, 3),
(25, 4, 4),
(26, 4, 5),
(27, 4, 6),
(28, 1, 3),
(29, 1, 4),
(30, 1, 5),
(31, 2, 3),
(32, 2, 4),
(33, 2, 5),
(34, 3, 3),
(35, 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2019_08_19_000000_create_failed_jobs_table', 2),
(9, '2020_09_17_221105_add_created_at_updated_at_games_table', 4),
(8, '2020_09_16_151255_create_admins_table', 3),
(10, '2020_09_18_064921_add_created_at_updated_at_games_categories_table', 5),
(11, '2020_09_22_080619_add_description_column_games_table', 6),
(12, '2020_09_22_082537_edit_description_column_games_table', 7),
(13, '2020_09_22_083054_add_desc_intro_and_release_date_columns_games_table', 8),
(14, '2020_09_24_120823_create_news_table', 9),
(15, '2020_09_24_121500_edit_category_id_news_table', 10),
(16, '2020_09_25_101414_create_news_highlights_table', 11),
(17, '2020_09_25_101914_add_image_column_to_news_table', 12),
(18, '2020_09_25_102054_edit_poster_column_from_games_table', 13),
(19, '2020_09_25_102305_edit_image_column_from_games_table', 14),
(20, '2020_09_25_103117_add_link_to_news_highlights_table', 15),
(21, '2020_09_25_121041_edit_body_column_from_news_table', 16),
(22, '2020_09_25_121327_drop_link_column_from_news_highlights_table', 17),
(23, '2020_09_25_122025_edit_intro_desc_columns_from_news_table', 18),
(24, '2020_09_25_122131_edit_intro_column_from_news_highlights_table', 19),
(25, '2020_09_25_124012_edit_games_id_categories_id_columns_from_games_categories_table', 20),
(26, '2020_09_25_125502_edit_game_id_category_id_columns_from_games_categories_table', 21),
(27, '2020_09_25_135100_drop_game_id_category_id_columns_from_news_table', 22),
(28, '2020_09_25_135256_create_news_games_categories_table', 23),
(29, '2020_09_26_071124_add_intro_highlight_column_to_news_table', 24),
(30, '2020_09_26_071316_edit_intro_highlight_column_from_news_table', 25),
(31, '2020_09_26_081359_drop_news_highlights_table', 26),
(33, '2020_09_26_081558_add_highlighted_column_to_news_table', 27),
(34, '2020_09_29_103751_edit_title_column_from_games_table', 28),
(35, '2020_09_29_104533_edit_title_column_from_news_table', 29),
(36, '2020_09_30_101844_create_comments_table', 30),
(39, '2020_09_30_105452_add_news_id_users_id_columns_to_comments_table', 31),
(40, '2020_10_02_064132_add_avatar_column_to_users_table', 32),
(41, '2020_10_06_093452_add_my_desc_column_to_users_table', 33),
(42, '2020_10_07_145237_create_games_platforms_table', 34),
(43, '2020_10_07_145547_create_platforms_table', 34),
(44, '2020_10_07_152939_add_slug_column_to_platforms_table', 35),
(45, '2020_10_07_162250_add_timestamps_columns_to_categories_table', 36),
(46, '2020_10_07_162835_add_logo_column_to_platforms_table', 37),
(47, '2020_10_19_155437_add_ondeletecascade_to_games_categories_table', 38),
(48, '2020_10_19_160916_add_ondeletecascade2_to_games_categories_table', 39),
(49, '2020_10_19_163541_add_engineinnodb_to_games_categories_table', 40),
(50, '2020_10_26_005059_create_favorites_games_table', 40),
(51, '2020_10_26_005539_add_games_id_users_id_columns_to_favorites_games_table', 41),
(52, '2020_10_26_005736_edit_games_id_column_from_favorites_games_table', 42);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_intro_highlight` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_intro` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlighted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `image`, `news_title`, `desc_intro_highlight`, `desc_intro`, `desc_body`, `author`, `slug`, `highlighted`, `created_at`, `updated_at`) VALUES
(1, 'assets/images/news/apex-legends-evo-shield.jpg', 'Nouveauté ! L\'evo shield !', 'Nouveauté ! L\'evo shield !', 'Après avoir pu tester le bouclier évolutif d\'Apex Legends sur le mode temporaire Déjà Loot, celui-ci reste définitivement en jeu !', 'L\'evo shield est intéressant en début de partie, car si vous ne trouvez pas de bouclier bleu ou violet, il peut changer la donne. Cependant, les boucliers dorés apportent des bonus qui ne sont pas à laisser au dépourvu, notamment une multiplication de la vitesse de soin. Ce qui est non négligeable lors d\'un fight assez tendu. Or, l\'evo shield ne permet pas d\'aller jusque-là, donc il est tout de même conseillé de retirer le bouclier pour prendre un doré si vous en trouvez un.', 'GameboxMaster', 'evo-shield', 0, '2020-09-25 12:11:17', '2020-10-27 00:55:16'),
(2, 'assets/images/news/cod-black-ops-cold-war2.jpg', 'Call of Duty : Black Ops Cold War', 'Call of Duty : Black Ops Cold War', 'Call of Duty Black Ops Cold War fait très clairement partie des titres les plus attendus de cette fin d\'année. Nombreux sont les joueurs à vouloir s\'y essayer et notamment en apprendre davantage sur les multiples facettes du titre développé par Treyarch. Après le solo, nous avons donc eu le droit de mettre nos mains velues sur le mode Multi, qui vient d\'être dévoilé en vidéo à l\'instant. Voici nos impressions LIVE !', 'La moelle épinière d\'un Call of Duty se situe évidemment au niveau de son mode multijoueur. Après un Modern Warfare énormément joué notamment grâce à la présence de Warzone, Treyarch a souhaité continué dans le sillon des Black Ops. Qu\'en est-il réellement manette en main ? On vous raconte tout !', 'GameboxMaster', 'cod-black-ops-cold-war', 1, '2020-09-25 13:06:55', '2020-10-27 00:55:16'),
(3, 'assets/images/news/bastion.jpg', 'Shadowlands : Le Bastion, zone de l\'Ombreterre', 'Le Bastion est l\'une des 5 zones qui composent l\'Ombreterre dans Shadowlands. Celle-ci abrite la Congrégation des Kyrians.', 'Le Bastion est l\'une des 5 zones qui composent l\'Ombreterre dans Shadowlands. Celle-ci abrite la Congrégation des Kyrians.', 'Cette zone est un lieu de jugement où les âmes les plus pures et les plus nobles peuvent faire leurs preuves. Vous pouvez y rencontrer de grands noms de l\'histoire de World of Warcraft. La région semble immaculée de blanc et la quiétude semble régner. Toutefois, ceci n\'est qu\'une façade ! Des temps bien plus sombres semblent arriver.\r\n\r\nNous vous proposons d\'y faire un tour en images à travers toutes les captures d\'écran que nous avons pu réaliser sur l\'alpha de Shadowlands.', 'GameboxMaster', 'wow-sl-bastion', 0, '2020-09-26 17:31:57', '2020-10-27 00:55:16'),
(4, 'assets/images/news/wow-priest.jpg', 'Changements annoncés pour le Prêtre \"Discipline\"', 'L\'extension Shadowlands de World of Warcraft apporte un grand nombre de changements. Parmi eux, certains concernent les trois spécialisations du Prêtre (Discipline, Ombre et Sacré). Découvrez-les sans plus attendre !', 'L\'extension Shadowlands de World of Warcraft apporte un grand nombre de changements. Parmi eux, certains concernent les trois spécialisations du Prêtre (Discipline, Ombre et Sacré). Découvrez-les sans plus attendre !', 'Comme à son habitude le Prêtre Discipline parviendra à manipuler l\'Ombre et la Lumière pour protéger ses alliés.\r\n\r\n \r\n\r\nCaresse de la Lumière (Talent) est une nouvelle technique que les plus puissants des disciples de la Lumière peuvent utiliser ; elle permet aux prêtres Discipline de soigner leurs alliés en les bénissant grâce à Mot de pouvoir : Barrière, avant de les soigner à nouveau s’ils sont toujours sous la barrière lorsque celle-ci expire.\r\nLes Prêtres Discipline peuvent désormais apprendre Concordat des ombres. Ce talent réinventé soigne immédiatement le héros choisi ainsi que quatre autres alliés blessés dans une petite zone, et augmente modérément les dégâts infligés par le prêtre pendant une courte période pendant laquelle il ne peut pas lancer de sorts du Sacré.\r\nAttaque mentale inflige de puissants dégâts, prodigue des soins par l’intermédiaire d’Expiation et octroie un bouclier d’absorption pour un coût en mana non négligeable.', 'GameboxMaster', 'priest-disc-sl', 0, '2020-09-29 15:32:21', '2020-10-27 00:55:16'),
(5, 'assets/images/news/ghost-of-tsushima-2.jpg', 'Ghost of tsushima est arrivé !', 'Plongez au coeur du Japon féodal !', 'On le sait depuis quelques jours, Ghost of Tsushima : Legends, qui permettra d\'obtenir un mode multijoueur et le New Game +, arrivera le 16 octobre prochain.', 'Il nous restait à connaître l\'heure à laquelle la mise à jour 1.1, qui embarquera tout le nouveau contenu, serait disponible. Dans deux Tweets publiés ce soir, Sucker Punch détaille tout ça, tout en précisant ce que les joueurs devront faire pour profiter du contenu. Premièrement, on apprend que le studio compte mettre en ligne la mise à jour le 16 octobre à 17h, avant une diffusion mondiale une heure plus tard. Une fois que la mise à jour 1.1 aura été téléchargée et installée par les joueurs, il faudra au choix :\r\n\r\nAller parler à Gyozen, ce qui renverra les joueurs vers le Playstation Store, où se trouvera de quoi débloquer Legends.\r\nChoisir Legends directement dans le menu, ce qui aura les mêmes conséquences.\r\nPour rappel, Legends proposera aux joueurs de s\'unir à deux ou quatre joueurs pour accomplir diverses missions, allant de petits scénarios aux missions de survie en passant par les raids. Pour en profiter, il faudra choisir parmi les 4 classes disponibles : Samouraï, Chasseur, Ronin et Assassin. Pour tous les détails, nous vous renvoyons à notre news dédiée, accessible ci-dessous.', 'GameboxMaster', 'ghost-of-tsushima', 1, '2020-10-16 08:12:36', '2020-10-27 00:55:16'),
(6, 'assets/images/news/The-Legend-of-Zelda-Wii-U-Natura-NintendOn.jpg', 'Breath of the Wild : Le savoir faire de Nintendo dans le jeu', 'Vous pouvez acheter The Legend of Zelda : Breath of the Wild pour 51,49 euros en ce moment.', 'Vous êtes un grand fan de la Nintendo Switch ? Vous adorez la saga The Legend of Zelda: Breath of the Wild est aujourd’hui proposé à moins de 52 euros. Une occasion de voir les progrès de la franchise et de passer un bon moment.', 'Dans ce nouvel opus sorti en 2017, le protagoniste, Link, émerge d\'un sommeil d’un siècle. À son réveil, il découvre un royaume d\'Hyrule ravagé par la guerre. Ainsi, à travers cette aventure, il vous faudra découvrir ce qui s’est passé en son absence et combattre Ganon, l’antagoniste. Comme à son accoutumée, Nintendo a particulièrement soigné l’univers de Breath of the Wild. Cela se ressentira surtout si vous êtes un adepte des découvertes. Eh, oui ! Contrairement aux titres précédents, vous pourrez cette fois-ci explorer davantage de territoires et aller toujours plus loin.', 'GameboxMaster', 'zelda-botw', 1, '2020-10-23 14:03:33', '2020-10-27 00:55:16');

-- --------------------------------------------------------

--
-- Structure de la table `news_games_categories`
--

CREATE TABLE `news_games_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL,
  `games_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `news_games_categories`
--

INSERT INTO `news_games_categories` (`id`, `news_id`, `games_id`, `categories_id`) VALUES
(1, 1, 1, 1),
(2, 2, 6, 1),
(3, 3, 5, 4),
(4, 4, 5, 4),
(5, 5, 8, 8),
(6, 6, 10, 8);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('wewantdev@gmail.com', '$2y$10$V1grua6loDQdZ6uDUlWa/ug07YRfTeabaByUjWGFtnRwm2tnDycaC', '2020-09-21 14:22:40'),
('brice.mourlon@live.fr', '$2y$10$OayxT8dlLm08KjoxdT4CKeNXj0zHAn0ens8X.eep3CnYkr.rMCI5a', '2020-09-21 14:26:24');

-- --------------------------------------------------------

--
-- Structure de la table `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platforms_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `platforms`
--

INSERT INTO `platforms` (`id`, `platforms_name`, `logo`, `slug`) VALUES
(3, 'Xbox', '<i class=\"fab fa-xbox\"></i>', 'xbox'),
(4, 'Playstation', '<i class=\"fab fa-playstation\"></i>', 'playstation'),
(5, 'PC', '<i class=\"fab fa-windows\"></i>', 'pc'),
(6, 'Switch', '<small class=\"switch\">Switch</small>', 'switch');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_desc` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `my_desc`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Brice', 'brice.mourlon@live.fr', NULL, '$2y$10$wTqrd4ousGPJ3XKgwkUq4.pxRAVYPIhYHgXJo0pCQKvWRan9hAsnW', NULL, NULL, 'assets/images/user/avatars/IMG_20200317_135153.jpg', '2020-09-16 11:37:17', '2020-10-06 16:40:53'),
(2, 'Audrey', 'audrey.fer13@gmail.com', NULL, '$2y$10$YIbFzi49QmRe9dkig5csrexI4xn37DXPJwO02TeAVqKI9SbHE6ere', 'WQcVrtEdRB8zQvPJlAmVRp970j8479AIes5OIEQBZQJ6nrDIiLKxGRbp11cP', 'Salut je m\'appelle Audrey.', 'assets/images/user/avatars/spaniel.webp', '2020-09-24 06:59:06', '2020-10-17 15:50:18'),
(18, 'Djyp', 'd@tbnk.ca', NULL, '$2y$10$QSyUY5kBENBYOX.LsWiBrOWu0IzrLZ3jKcmwFzInSUfCBbrEnkTt.', 'khNjCTKYVAifgkUrAhQEngMgxSGhlpBaFUhJpO0pHzY91s5heqZq245Yk9sK', 'Bonjour, voici ma bio. Je teste le projet de Brice !', 'assets/images/user/avatars/flat,800x800,075,t.u3.jpg', '2020-10-25 19:49:18', '2020-10-25 19:52:16'),
(5, 'Francisco', 'francisco@gmail.com', NULL, '$2y$10$kfaYFvAlXvD2F3H4A3fKi.1en03IqjaTMFnAj5OepcyqVa6TkZdAW', NULL, NULL, NULL, '2020-10-02 11:40:50', '2020-10-25 21:22:28'),
(6, 'Darlena', 'darlen@gmail.com', NULL, '$2y$10$BbpzzcCni73afzRGjSNslucLi7pU5HQTjFgqyYKJb3V9G63BA3u5C', NULL, NULL, NULL, '2020-10-02 11:46:39', '2020-10-27 00:54:55'),
(7, 'Marion', 'marion@gmail.com', NULL, '$2y$10$h5G.aDtbn6gzBS63mqSCQOhcMsf.DaQXndQ4FqxQd5p7Nn7wUuREy', NULL, NULL, NULL, '2020-10-02 11:55:56', '2020-10-02 11:55:56'),
(8, 'Edward', 'ed@gmail.com', NULL, '$2y$10$2atuJbn7BY7Ch.pADuXLResLlX4Bgx5l8N0dFJTsrsZuGzMv/CHvm', NULL, NULL, NULL, '2020-10-02 12:03:03', '2020-10-02 12:03:03'),
(9, 'Philippe', 'phil@gmail.com', NULL, '$2y$10$NQwt5J8fcmfSz7ihN/217u0e2cBUNxCffgOTyKJBykczVzwEERV.q', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-02 12:04:36', '2020-10-02 12:04:36'),
(10, 'Marie', 'marie@gmail.com', NULL, '$2y$10$K2rmyN/NTsW31Jmv5RwThujiFZzyoty1SG4bzCa9pLKq5EUufV6ay', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-02 12:19:13', '2020-10-02 12:19:41'),
(11, 'John', 'john@gmail.com', NULL, '$2y$10$jYmc01aizr82JZ3sifTQ8eUxnV5iXBXb7/gAz5LHIo9xF0LcZ.u5W', NULL, NULL, 'assets/images/user/avatars/zelda.jpg', '2020-10-02 12:19:58', '2020-10-02 12:35:44'),
(12, 'Bahjeera', 'bahjeera@gmail.com', NULL, '$2y$10$SQAPtfBpSvB261FeqKbGVumUy9sfnJ93l6nLZlo.wK7HJdpSjrUCO', NULL, 'World of Wracraft professionnal player (PvE & PvP) since 2009. I\'m a professionnal body-builder too.', 'assets/images/user/avatars/Bajheera-Header.png', '2020-10-05 21:45:00', '2020-10-25 22:59:07'),
(13, 'Dash', 'dash@live.fr', NULL, '$2y$10$aDpLbLNMkRbDRJlMJ1RqYegwqBiqU8hblo78irEBqDY/Wy15bcMnK', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-15 00:11:07', '2020-10-15 00:11:07'),
(14, 'José', 'jose@gmail.com', NULL, '$2y$10$32EWkccdAteAZYCa7FWEJeN2xLBWA9V06mt8zRcobrWoOtSUAM.V.', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-21 18:26:20', '2020-10-21 18:26:20'),
(15, 'test', 'test@gmail.com', NULL, '$2y$10$90Kav7FVbuhtNQ4UpK1P4.mvFUj0UgrCxXvoMZweSVnn8Itoa16pG', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-23 18:02:51', '2020-10-23 18:02:51'),
(16, 'test2', 'test2@gmail.com', NULL, '$2y$10$qG71zpEyfMDkyw5ttTlA/uCjJwF3skOScqfkUyKciPZ..NX0JOKwi', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-23 18:07:09', '2020-10-27 00:54:44'),
(17, 'test3', 'test3@gmail.com', NULL, '$2y$10$GEeop2C4c4rSrMRM3BKXMu.D56O6QOwAqXdT4/4z4WZOVCyx75rP.', NULL, NULL, 'assets/images/user/avatars/default.jpg', '2020-10-23 18:12:37', '2020-10-23 18:12:37'),
(19, 'Brice', 'brice@live.fr', NULL, '$2y$10$u/8QiPP0xUcqiRF1LvS1SeFBp/D2A3l48075CHvA6HBf5xn6oTxge', NULL, 'test', 'assets/images/user/avatars/lapi.jpg', '2020-10-25 23:07:57', '2020-10-25 23:53:31');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favorites_games`
--
ALTER TABLE `favorites_games`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `games_categories`
--
ALTER TABLE `games_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_categories_games_id_foreign` (`games_id`),
  ADD KEY `games_categories_categories_id_foreign` (`categories_id`);

--
-- Index pour la table `games_platforms`
--
ALTER TABLE `games_platforms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news_games_categories`
--
ALTER TABLE `news_games_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favorites_games`
--
ALTER TABLE `favorites_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `games_categories`
--
ALTER TABLE `games_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `games_platforms`
--
ALTER TABLE `games_platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `news_games_categories`
--
ALTER TABLE `news_games_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
