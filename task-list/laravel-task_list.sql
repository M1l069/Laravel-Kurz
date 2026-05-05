-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 27.Apr 2026, 22:18
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `laravel-task_list`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_28_181810_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7xDZk5yxzzfbNggmsAbkU1KyBU5CnNkzZx6dhzOr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHFLcnptUnR2aUo0aFBJenBuSFF6TEV1YjNPM0UxaXJFMFZSb3NheSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90YXNrcy9jcmVhdGUiO3M6NToicm91dGUiO3M6MTI6InRhc2tzLmNyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777301340),
('WKtWTT1yEboKmSasRQxhilDIwT0284GXD8Fibxg8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjhZQ0l3dDRPeE91VDlUUjl3bWVCazNxS2NzYlRLTXlxOGhDSEZLdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90YXNrcyI7czo1OiJyb3V0ZSI7czoxMToidGFza3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777321039);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `tasks`
--

INSERT INTO `tasks` (`id`, `created_at`, `updated_at`, `title`, `description`, `long_description`, `completed`) VALUES
(1, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Quas rem qui explicabo omnis.', 'Repudiandae dolore cum voluptas quod qui animi consectetur. Est et qui accusantium minus aut. Tempora quibusdam laborum placeat error at quia. Ut aut tempora ipsam tempora adipisci velit.', 'Dolores quam nihil explicabo numquam veniam excepturi. Est et veniam rerum officiis sint. Omnis voluptas magnam vero et.\n\nEt reiciendis est quasi. Ea et veritatis quia dignissimos illum. Consequuntur qui facilis ut. Expedita animi molestiae qui ab voluptas nobis.\n\nQuisquam autem voluptate nihil at impedit in est. Exercitationem blanditiis unde praesentium dolore dolorum et. Eius est sit velit eius esse vitae excepturi. Tenetur qui eos optio aut.\n\nLaborum labore voluptas sit nam. Veniam voluptatum aut vel id consequatur. Quae quia doloremque excepturi reprehenderit voluptates temporibus voluptates. Est dolorem necessitatibus repudiandae blanditiis nihil sed.\n\nPlaceat et consectetur nesciunt omnis. Aspernatur aperiam quis fugit adipisci consequatur deleniti quidem et. Fugiat cum aut tempora est sed odit.\n\nIncidunt ut et ex sapiente. Rerum recusandae consequuntur tenetur qui eaque dignissimos. Voluptas consequatur explicabo veniam. Vitae suscipit animi qui debitis nisi consectetur iusto.\n\nAutem occaecati ipsa placeat qui reprehenderit magnam iure. Voluptas aut velit mollitia eos omnis est ut. Sit quibusdam est eos.', 0),
(2, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Sunt et est voluptatem atque dolor quos voluptatem.', 'Dicta dolores ex ratione corporis. Cum iusto molestiae sed non et. Aut et corrupti iusto consequatur praesentium itaque aut.', 'Omnis voluptates laborum modi. Excepturi consequatur qui ut praesentium ea voluptatem.\n\nNam recusandae ut atque minima. Magnam nemo dolorum quasi veritatis iure voluptas. Neque quas recusandae odio et sequi corporis suscipit.\n\nLaborum odit quo aut assumenda eveniet beatae laborum. Quidem magnam dicta eius labore eum officia pariatur quis. Autem animi consectetur autem. Dolorem numquam ut rerum saepe illum tempora qui quia. Non repellendus consequuntur ad aliquid.\n\nVoluptatem ut nesciunt sapiente. Aut soluta at ut reprehenderit qui veritatis maiores. Ut maiores accusamus nesciunt enim. Ad voluptas ipsam sapiente inventore quaerat.\n\nNihil qui quisquam aut. Dicta dolor explicabo eligendi. Aut autem rerum ut cumque fugiat at.\n\nImpedit deleniti magnam itaque similique. Aut non enim aliquid cupiditate omnis iusto magni. Ipsa quas veritatis debitis eum.\n\nCulpa explicabo vel animi sed qui. Quia tempore eaque et maiores ea asperiores id. Sequi quia repellendus dolores quia. Quidem itaque eum aut voluptatem distinctio assumenda. Nesciunt ut aperiam facilis officiis quis.', 1),
(3, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Repellat mollitia voluptas odit quo possimus velit.', 'Et unde sit ab architecto alias. Accusantium alias error omnis corporis ut doloremque. Culpa voluptatem exercitationem assumenda id delectus dolore.', 'Et ut quae voluptate dicta tempore laborum. Repudiandae nisi veritatis minima doloremque et magnam. Laboriosam voluptatum vel vitae dignissimos.\n\nBlanditiis qui quisquam dicta odio. Praesentium consectetur cumque corporis dolorem voluptatem. Et voluptate minus nemo mollitia.\n\nAd deserunt porro voluptatem nostrum qui tempore. Itaque nesciunt tenetur sit tempora. Incidunt quis eos voluptatum optio dolores ut architecto. Omnis ducimus aut non beatae accusamus rerum.\n\nExplicabo harum incidunt voluptas optio in aperiam. Aut occaecati veniam cumque eos. Aliquam asperiores illum totam doloribus iure nemo delectus reiciendis. Odio in qui odit qui.\n\nLibero cupiditate et adipisci est incidunt ullam ut. Adipisci qui quis earum atque asperiores voluptatem. Qui tenetur maxime nemo dolorem. Assumenda beatae numquam sed rem velit. Recusandae ullam labore nam repudiandae.\n\nOptio sed voluptatem molestias voluptatem autem at porro velit. Sequi praesentium praesentium sit sint et. Maxime facere quia blanditiis et voluptatem. Accusantium rem sit et omnis quae.\n\nSaepe sequi dolor rerum rerum deleniti quod rerum. Quod porro reprehenderit velit sint. Est enim aut quis omnis earum.', 0),
(4, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Aut iure omnis eum et laborum ratione.', 'Laborum adipisci et voluptate autem perspiciatis illum. Facilis omnis tenetur quaerat rerum fugit. Est doloremque ut ut aut ut porro in ratione. Saepe quidem et et deserunt.', 'Maxime expedita repellendus velit est mollitia voluptas. Consequatur saepe quas nobis sint harum ipsam totam. Esse odit adipisci est. Nobis quam mollitia blanditiis ut.\n\nEa voluptatibus doloribus harum fuga non. Consectetur ratione suscipit possimus voluptas soluta error aut. Neque cum autem inventore porro provident error dolorem facere. Molestiae accusantium voluptatem illo.\n\nAnimi qui assumenda voluptas neque officiis. Est debitis consequatur et aut ad. Dicta nihil optio nostrum accusantium aut assumenda saepe accusantium. Iusto et et sed vero est placeat magni.\n\nArchitecto in aut error itaque nesciunt. Omnis voluptatibus eos eos dolorum minus ipsum qui. Dolorem quam magni magnam provident. Nulla maxime enim corporis iste ex officiis.\n\nEnim sint alias vel ut eveniet. Corrupti sapiente similique quia quis dicta. Quaerat deserunt voluptatem quaerat et ratione porro delectus.\n\nQuia nesciunt nihil sed aliquid. Eos sed eius dolore. Harum et veniam veniam est.\n\nAccusamus sunt et molestiae hic architecto. Architecto labore similique at dolore a. Et vitae aspernatur numquam sit quia consequuntur et. Sequi animi ut autem cum eaque nihil.', 1),
(5, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Architecto recusandae animi maiores dolorem temporibus aut.', 'Dolor eligendi veniam et neque est suscipit cupiditate. Aliquid magnam voluptatem quibusdam tempore. Tenetur odio voluptatum in dolorem alias. Nihil itaque mollitia rerum velit aut vitae et.', 'Dicta voluptas id sint quia. Voluptate occaecati rem quis nulla nisi est id. Ab quia quas culpa tempora aut enim.\n\nFacere officiis nisi non dolore ipsa sed occaecati similique. Sapiente excepturi vitae distinctio.\n\nUt et sint eius cum omnis sit accusantium omnis. Sit culpa nihil mollitia. Possimus consequatur vero ea iusto. Voluptatem corporis fuga dicta numquam alias recusandae.\n\nVero deserunt qui voluptatem est repellendus. Unde assumenda qui aspernatur dolorum vero. Quas saepe quasi vel commodi. Consequatur exercitationem accusantium animi ducimus sed cupiditate quidem.\n\nProvident possimus natus ipsum atque voluptatum sunt. Repellendus unde voluptas possimus illo. Illum corporis animi eum suscipit numquam nihil.\n\nVelit vero quasi at. Et et iure quia numquam neque ipsum. Similique qui omnis nulla vel. Debitis repudiandae voluptatem voluptatibus cupiditate et rerum sint.\n\nReiciendis velit sed dicta accusantium. Quaerat vero vel aut ipsum repellat nemo ea ut. Ut sint aut qui ut exercitationem ut.', 1),
(6, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Error tempora aut nesciunt sunt ut.', 'Eaque similique sit nisi non minima et. Rerum debitis explicabo molestiae asperiores quo fugiat reprehenderit. Quis culpa possimus hic ratione ipsa. Facilis fugit rerum labore soluta quis.', 'Et quis quis impedit voluptatibus. Voluptas dicta est dignissimos quaerat aut molestiae. Quo cupiditate quos et quis et recusandae exercitationem. Ipsum voluptates est facere assumenda non.\n\nIpsam velit qui nobis qui et numquam. Animi est eius ullam eos quasi est.\n\nConsectetur sit laudantium officia deleniti illo quia repellat. Nesciunt numquam atque neque voluptatem distinctio beatae accusantium. A temporibus a ipsum culpa.\n\nHarum sit omnis non reiciendis natus cupiditate. Odio quia consequatur eius dignissimos expedita. Quae consequatur nobis excepturi et voluptatum. Repudiandae repudiandae natus et distinctio aliquam sed et.\n\nDistinctio reiciendis ad tenetur ea est quia dolores. Odio quas deleniti debitis voluptates dicta. Repudiandae ad quia qui repellat.\n\nIllum nulla et saepe quisquam. Sint iusto nostrum reiciendis sit qui quia esse. Cupiditate et nobis ab similique sint praesentium. Occaecati molestias iure odit sint quia consequatur eum dolorem.\n\nQuis et ut repudiandae non dolore eveniet temporibus. Est dicta veniam pariatur illo aperiam veritatis enim impedit. Minima eos sint ea maxime. Minus necessitatibus vero doloribus omnis sint nemo.', 1),
(7, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Repudiandae minima nemo perspiciatis ratione.', 'Quis quibusdam reiciendis voluptatibus pariatur. Animi odio aperiam nemo odit aut voluptatem explicabo. Labore quia maxime repellendus deserunt est provident placeat. Iste a magni quae ut et numquam excepturi.', 'Maxime rerum deleniti ut velit quod. Unde id eos libero rerum officiis provident. Omnis voluptate commodi est qui saepe fugiat in. Mollitia odit laudantium et in ullam cumque.\n\nAlias qui soluta quia qui. Dolore hic dolorum ut quibusdam ut architecto architecto.\n\nEst qui dolor suscipit sed laborum. Suscipit qui perferendis est totam odio et. Molestias dolore fugiat cumque et.\n\nOptio corporis assumenda sint soluta blanditiis. Et est velit velit laboriosam. Doloribus cum eaque asperiores rerum.\n\nExercitationem error beatae quis adipisci et omnis molestiae sit. Doloribus enim molestiae molestias enim. Quidem consequatur non consectetur consequatur.\n\nError dignissimos perferendis accusamus fuga. Id similique ea eum nihil dicta vero aut. Officia occaecati deserunt iste et eum. Itaque aut repellat doloribus beatae quia cum iste non. Ratione eos suscipit molestias explicabo quia molestias adipisci consequatur.\n\nTotam repellat consequatur cumque debitis non nemo. Facere rem quia quis facere. Qui ab ut accusantium non optio culpa.', 1),
(8, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Minima quo eius optio distinctio et non aliquid.', 'Excepturi similique eveniet numquam. Ad cum ipsum est quis. Harum impedit doloribus harum ut enim culpa. Pariatur placeat eaque hic unde provident voluptatem.', 'Omnis minima dolore molestiae necessitatibus adipisci minima. Qui adipisci itaque esse sequi. Quae libero accusamus corrupti voluptates fugit possimus hic.\n\nDolorem non sunt magnam minima porro laborum deleniti odio. Facilis voluptatibus magni sunt sed accusamus eligendi officia vel. Ut beatae deserunt aut impedit dolores. Mollitia consectetur perspiciatis quod aut omnis excepturi.\n\nSuscipit et autem sit illum accusamus et. Fugit deleniti maiores beatae quis doloremque voluptates. Velit voluptas dolor earum mollitia.\n\nEos fugit cupiditate aut molestias omnis. Rerum sapiente illo qui cum iste. Omnis suscipit enim eligendi et eum at. Et incidunt ratione et.\n\nRatione eligendi quibusdam aperiam quae voluptatum magnam amet. Quis adipisci distinctio et eum vel voluptas ratione. Sunt vel magnam itaque aut.\n\nIn necessitatibus rem sit culpa possimus molestiae ut. Accusantium ut ut quis fugit et facilis magnam.\n\nCum autem dolorem illum. Dolores esse et minima et suscipit id commodi. Molestiae veritatis consectetur unde.', 1),
(9, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Sit at consectetur est rerum ea ut.', 'Voluptas est expedita quibusdam pariatur sed eum veniam. Et laborum qui quidem. Dolorem rerum enim neque.', 'Hic illum eum consequatur facilis veritatis delectus sint. Voluptatem dolorem eligendi consectetur. Voluptas et expedita quod neque repellendus et. Accusantium rem animi reiciendis iusto exercitationem est.\n\nAnimi ut nisi beatae iure doloribus. Eius quia repellendus dolores. Cumque neque non laudantium autem soluta ducimus.\n\nQui sint molestias in eligendi aperiam consequatur. Dolor explicabo doloribus adipisci exercitationem autem illo.\n\nDicta omnis et asperiores sed voluptas. Culpa vel esse tempora doloribus est. Corrupti velit quo libero. Corrupti in dolor ut officia asperiores.\n\nDolorem nostrum rem quaerat corporis dolor. Vero repellendus voluptatibus nam quo rerum. Officiis deleniti magni quod laborum earum minima. Quidem sunt ullam labore.\n\nQuisquam officia rem voluptatibus. Repellat aut debitis debitis qui et dignissimos sunt. Ea animi et perspiciatis eius atque suscipit accusantium. Minima nesciunt in explicabo libero fugit praesentium quidem. Repellendus aut inventore ut sit illum labore consectetur.\n\nEst quia reiciendis nobis praesentium et fugit totam vel. Delectus rerum est nesciunt et facilis et a.', 1),
(10, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Qui et consequatur et iusto debitis.', 'A dolore voluptatem et nostrum atque ex. Officia laudantium quisquam dolor earum qui qui.', 'Architecto eum soluta illo soluta deserunt quia voluptatem. Officia harum doloremque ab et. Ullam sunt pariatur error autem pariatur.\n\nVel et in ducimus et omnis quis. Alias provident voluptatem repellendus rerum explicabo vitae tenetur. Minus et asperiores consequuntur maiores voluptates harum.\n\nLabore blanditiis et ex in sit consequatur magni. Quis autem quam velit at. Veritatis non asperiores exercitationem blanditiis magni aliquam. Vel architecto omnis cumque. Ut voluptatum porro id et qui.\n\nSaepe quis porro est molestias aliquid exercitationem omnis. Quos rerum temporibus cupiditate temporibus soluta. Dolorem et omnis exercitationem reprehenderit ab qui quibusdam. Magni aliquam doloremque accusantium.\n\nOdit aut eos quam. Non doloribus totam consequuntur consectetur. Eos vero earum totam laudantium autem adipisci necessitatibus. Qui eum quia est provident a accusamus dolorem voluptas.\n\nVoluptatibus deleniti nisi id incidunt saepe inventore aut. Et perferendis qui unde voluptate nulla et. Qui similique aliquam nisi iure ullam nulla occaecati distinctio. Et facere similique dolorem temporibus in nemo eum. Voluptates similique voluptatem aut omnis quo cupiditate rerum.\n\nEst ut est autem dolorem optio voluptates. Consequatur qui corrupti eius assumenda minima consequuntur.', 1),
(11, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Rerum reiciendis debitis aut vel modi asperiores.', 'Blanditiis dicta nulla placeat nihil distinctio corrupti assumenda. Porro qui laudantium aliquam maiores omnis. Atque nihil est beatae quia deserunt. Dolorem accusamus omnis exercitationem qui.', 'Et debitis unde autem. Cum consequatur libero consequatur architecto totam accusantium. Magni qui magnam ut temporibus inventore est.\n\nHarum quo facilis dolorem enim. Consectetur expedita aut non.\n\nAtque sit recusandae incidunt mollitia et dolore molestias. Placeat molestiae id voluptatum voluptatum dolorum et repellat. Officia enim possimus nostrum possimus iste vitae sunt.\n\nNostrum id provident aut aliquid occaecati. Harum voluptatem iste et vitae sint odit iusto. Voluptatum numquam consequatur distinctio dolorem harum ut. Ab ut eligendi porro ea itaque quae.\n\nNumquam tempora dolores doloremque dicta. Vel ullam voluptatum nihil praesentium iste consequatur rem magni. Dolor sed dolorum possimus soluta repellendus ut. Molestiae aperiam placeat aut quia fugiat.\n\nAd aut totam voluptas laudantium accusantium eum. Quaerat architecto nesciunt accusantium qui dolorem. Laudantium natus non vero aut quaerat. Impedit vel molestias quo consectetur odio. Sint quis repellendus in.\n\nRepudiandae eaque unde atque quos mollitia quae earum. Provident ut sequi libero quo aut nemo. Est ipsum deleniti dolorem magni ut et sit. Ex est velit fugit quia dolor.', 1),
(12, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Sed possimus voluptatem illo.', 'Libero et ut sequi excepturi consequuntur dolores et. Ducimus consectetur omnis sed quia beatae. Sint autem possimus ut.', 'Architecto consequatur suscipit ipsum reprehenderit pariatur. Non culpa ipsam dolores aut. Ut quo quis voluptas molestiae dignissimos.\n\nPariatur repudiandae et est et necessitatibus. Eos commodi rerum est voluptatem atque. Soluta occaecati nisi amet fuga et deserunt.\n\nQuo ratione laboriosam ullam ut. Porro expedita sit voluptatem id. Quaerat magni quo necessitatibus sint.\n\nVel aut et et rem qui. Enim dolor rerum corporis itaque. Laudantium corporis error tempore ut et sit impedit. Accusamus voluptas ex sint sapiente explicabo magnam eveniet.\n\nTempora quidem omnis asperiores quae et architecto. Et tempore eos ad blanditiis quod. Accusantium magnam aperiam enim alias ab fugit. Rerum repellendus expedita aut consectetur et ducimus ex.\n\nOmnis sunt dolores dicta. Veritatis modi quae voluptate temporibus quia sint quia. Ea eum inventore unde magnam repellat eos.\n\nVeritatis esse iusto nulla occaecati. Autem dolor fugiat voluptatum voluptas.', 0),
(13, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Non nihil aut ut.', 'Fugit asperiores corporis fugit odit facere ipsa. Quas debitis quas totam. Quo est expedita est et voluptas. Ut quidem saepe vitae nihil.', 'Nihil voluptates aut libero. Sed reiciendis quaerat sunt et tenetur non. Qui doloribus quam perspiciatis omnis rem quas. Tempore illum mollitia non corrupti voluptatem magnam.\n\nVelit facilis corporis dolorem vel possimus commodi nostrum nihil. Qui aut provident et. Eum ad eos corporis quia excepturi ea voluptatem. Quia voluptate omnis soluta veritatis harum.\n\nDoloremque vitae impedit nemo rerum nulla. Quis sapiente fuga autem saepe inventore. Quis suscipit voluptatem quia corporis est voluptas.\n\nEligendi aspernatur aliquam illo dignissimos ex. Similique tempora delectus velit nemo sequi. Voluptates quibusdam facilis fugit error. Ut nam voluptatum repudiandae ab vitae.\n\nProvident consequatur doloribus consequatur rerum. Est molestiae omnis ab quo.\n\nIllum aut repudiandae molestiae aut omnis corporis dolor expedita. Sint natus et repellendus voluptas.\n\nReiciendis sed minima voluptatem pariatur quae et. Eos sunt illum harum veritatis exercitationem.', 0),
(14, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Molestiae et rerum ea dolores aut est.', 'Laborum optio voluptas vitae rem et. Odio dolorum atque dolorem odit voluptatibus unde consequatur.', 'Et iste voluptas quos cupiditate et consequatur. Dicta dolore et rerum aspernatur harum corrupti pariatur. Nobis sint eligendi nemo magni doloribus ex.\n\nNatus ut et placeat id delectus minus. Possimus est deleniti maiores officia. Numquam nesciunt iste maiores aut. Quos aspernatur eos quas ducimus. Suscipit omnis animi exercitationem.\n\nIn neque sint non. Rerum sit illo eaque voluptas sint. Distinctio voluptas nihil enim dolor ad alias iste odio.\n\nPariatur voluptatem id magni debitis voluptatum esse pariatur. Ipsa dolores placeat molestias architecto. Ea dolor tenetur aut quas hic.\n\nVoluptas nostrum corrupti autem quo. Ut repellendus nam laboriosam dolore. Ipsam aut et sit et.\n\nIllo sit quia incidunt saepe. Ea minus animi laboriosam omnis quidem autem. Voluptas consequatur dolores eaque et animi iusto rerum. Et quis architecto et natus velit sit neque provident.\n\nSint accusantium consequatur in et ducimus voluptas totam id. A est rerum placeat qui. Eos laboriosam molestias sint quas et.', 1),
(15, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Minus ut nihil enim modi et.', 'Natus totam praesentium minus aut explicabo. Et voluptatum ex et deserunt est. Aut numquam error cumque vitae porro et labore dolore.', 'Qui illum et placeat aspernatur sed ut. Enim sunt aliquam dolor itaque qui velit nulla reprehenderit. Vel ut aperiam animi qui aliquam a voluptatibus. Tempore a et enim optio saepe temporibus. Ea soluta iste quaerat voluptates quia quis.\n\nFacere id nemo possimus qui quidem nemo tenetur. Accusantium eligendi odio est voluptatem aut et. Quam excepturi beatae perferendis fugit.\n\nEa hic dolor tenetur doloribus facere nihil. Voluptate odit est exercitationem officiis illum eaque. Cum nulla asperiores voluptatem illo numquam. Vero aut facere praesentium cumque.\n\nUt rem et voluptatem omnis. Enim reprehenderit consequatur nihil occaecati eum asperiores nostrum. Quibusdam praesentium necessitatibus iure tenetur. Nesciunt rerum nulla sit cum eveniet omnis eaque ea.\n\nAutem est repellendus et cum. Maiores porro quam ducimus quam autem quia. Ut asperiores non velit non reiciendis.\n\nMolestiae inventore qui accusantium numquam. Enim atque nulla temporibus temporibus aut.\n\nAut occaecati exercitationem culpa magnam reprehenderit fuga quam. Provident libero minima ex qui. Mollitia dolorem quia enim esse ea rem. Aut quo odio est.', 1),
(16, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Accusamus possimus laborum vel.', 'Nisi suscipit adipisci quaerat architecto illum earum. Cumque est enim id incidunt voluptatem animi recusandae eligendi. Ut nulla est ducimus dolores eveniet vel fugiat. Quibusdam atque laudantium similique cumque numquam.', 'In ipsum consectetur ad molestias sed labore. Consequatur aliquid sit quidem quo quis nesciunt est.\n\nExpedita hic ipsum repellendus veniam. Repellat quo quo nihil officia exercitationem asperiores. Mollitia doloremque animi excepturi pariatur reiciendis distinctio non.\n\nConsequatur dignissimos fugiat voluptatem maxime ea voluptas voluptatum. Dicta quia ab sit voluptatem id similique delectus. Ipsum assumenda quasi adipisci placeat.\n\nDolorem sed distinctio voluptatem deleniti. Est sit voluptatum eveniet magni repellat. Eum animi vitae qui corporis. Voluptas ducimus et suscipit dignissimos amet quia.\n\nSed voluptatem nulla quia pariatur. Iusto labore sint sint est assumenda possimus in. Cupiditate non id aut dignissimos assumenda qui.\n\nQui aut tenetur at a veritatis earum dignissimos. Explicabo ad placeat in consequatur odit cum. Sequi beatae sapiente necessitatibus perferendis. Quis non molestiae a quam rerum dignissimos aut.\n\nOfficiis ea libero dolor reprehenderit quae. Molestiae sint vel corporis laborum. Odio repellendus quam distinctio architecto itaque.', 1),
(17, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Voluptatibus accusamus ab non doloribus.', 'Possimus ut nisi magni veniam. Corporis laboriosam eos in illo. Et ratione soluta dicta consequatur nisi nostrum accusantium. Aut delectus beatae ad et.', 'Sapiente rerum assumenda architecto tempore at voluptatem. Autem perferendis eveniet quia dolorem ipsa tempora quam. Necessitatibus suscipit inventore praesentium rerum delectus delectus vitae quasi. Non amet aliquam sunt ipsam dolores aut fugit.\n\nEst placeat ad dolore. Et nobis recusandae atque autem voluptatem beatae deserunt blanditiis. Voluptas suscipit omnis aut amet rerum dolor cum. Fugit quaerat voluptas sunt ut non ipsa.\n\nTempora reprehenderit corporis excepturi quia enim quaerat quis. Rerum eius et et. Possimus quia amet dolor quia et eius. Molestiae explicabo qui molestiae odit autem similique. Ad earum fugiat voluptas magnam.\n\nConsequatur quaerat consequatur qui odit. Saepe aut corrupti voluptatem. Non est dolores sint. Non aliquam quia ad qui.\n\nDolorem enim quis nobis blanditiis quia. Modi molestiae illo autem.\n\nReiciendis sed nostrum et vero qui nostrum doloribus. Velit quia esse assumenda quod. Nihil voluptate fuga nobis. Aspernatur nobis autem nobis ut est nam.\n\nNostrum sed nulla dolores aliquam sit quia doloribus provident. Voluptatum iusto nam quaerat nobis. Voluptatem reprehenderit ratione consequatur necessitatibus officia magnam iure.', 0),
(18, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Sit incidunt praesentium officiis quas qui ullam cupiditate.', 'Unde eos excepturi aut odio doloribus illum eaque. Fugit excepturi molestias laudantium quas dolorem quis veniam voluptatem. Voluptatem et nisi id vel delectus ut nesciunt laboriosam.', 'Maxime nihil voluptatum perspiciatis corporis recusandae voluptatem. Ipsam est error omnis atque in.\n\nAt sit sunt sequi delectus quo ab dolores. Est consequatur et explicabo est asperiores perferendis et perspiciatis. Ea et delectus ullam iste quibusdam consequatur voluptas dolorem.\n\nEaque aut molestiae fugiat impedit. Nesciunt reprehenderit maxime amet. Vel ratione laboriosam illum cumque. Voluptatem eum aliquid ullam repellendus dolor beatae.\n\nExplicabo non sunt cum quidem deserunt minus a. Ea porro adipisci at blanditiis incidunt tenetur. Fugiat et qui veritatis esse.\n\nAnimi laborum repellendus deserunt numquam eos aliquid deserunt. Nihil possimus dolorem quidem aut consequatur sit est. Perferendis eius labore praesentium dolor.\n\nHic iusto velit voluptates quo eum cupiditate nesciunt. Officia delectus repudiandae non vel quis voluptatum. Mollitia asperiores iusto minus et odio magnam.\n\nEa deserunt minima illum voluptas quis quia itaque. Fugiat placeat maxime et quasi ut sunt est. Cum dolorum voluptatibus est sit.', 1),
(19, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Maiores voluptates ad velit iste.', 'Repellendus quo et vitae et asperiores aperiam numquam. Temporibus rerum quaerat consectetur voluptas rerum ducimus. Blanditiis esse sequi sit architecto.', 'In occaecati autem facere a nam corrupti ea. Doloribus delectus voluptatem tempora provident qui accusantium optio maiores.\n\nMolestias aut odio rem deleniti eos. Dicta explicabo et perspiciatis quaerat. Ut ea aut omnis aliquid voluptates.\n\nNihil impedit ad enim quaerat. Quidem sit animi rerum itaque. Quam ea sit repellat id. Quidem minima illum eligendi impedit maxime laborum.\n\nTenetur dolorum hic sed rerum exercitationem architecto. Ex enim sit nihil cupiditate ipsam. Praesentium eveniet officiis quis voluptates est placeat. Error quasi non dolorem enim saepe ut vel.\n\nUt qui voluptas et qui autem deserunt. Placeat voluptate quaerat quos sint.\n\nDicta voluptatibus earum distinctio recusandae. Doloremque unde laudantium occaecati consequatur. Commodi debitis perferendis laudantium ipsum. Cupiditate dolore dolor velit ad iste quae maxime.\n\nNon in est et. Qui qui laborum eum voluptatibus. Est ut sunt nihil accusamus placeat.', 0),
(20, '2026-04-27 12:01:46', '2026-04-27 12:01:46', 'Consequatur dolorum quo numquam rerum sed similique enim.', 'Sapiente inventore reprehenderit recusandae quia. Veritatis et eveniet voluptatem sit quia qui.', 'Aliquid ipsa qui non vitae rerum fuga praesentium vel. Voluptatem tenetur architecto enim alias hic aperiam quis. Odio sint est assumenda. Consequuntur quasi nihil eveniet.\n\nId esse id saepe ea iusto qui. Est et minus quae consectetur omnis accusantium qui nostrum. Nam repellendus hic voluptates omnis error. Quis nulla commodi est delectus molestias earum. Molestiae odio dolores enim veritatis mollitia non.\n\nAccusantium vel excepturi voluptates ut maxime molestias. Recusandae dicta ut est. Quas soluta officiis veritatis maiores officiis. Ipsum est et dolores temporibus. Laboriosam voluptas dolore itaque incidunt eius magni odio.\n\nVitae praesentium et sed rerum sunt qui. Dicta est molestias in et voluptatem ut. Officiis rem eius suscipit vel facilis excepturi et.\n\nMagni et repudiandae rerum non praesentium et. Voluptatibus tenetur quo repudiandae quisquam tempore. Culpa dolor doloribus voluptas eum voluptatem.\n\nAssumenda voluptatum labore velit qui consequuntur. Perspiciatis facilis consectetur voluptatem possimus ea perspiciatis unde.\n\nLibero laudantium mollitia explicabo pariatur. Fugit exercitationem optio deserunt in. Consequatur nisi ea dolore vel. Et ratione eius necessitatibus.', 1),
(21, '2026-04-27 18:17:02', '2026-04-27 18:17:02', 'kokotko', 'jebnuty', 'prijebany kokot', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antónia Slobodová', 'florian.bondra@example.com', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'Iwb5pxMTQ1', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(2, 'RSDr. Kristián Lubina Ph.D.', 'elena.adam@example.net', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'Yqo4IkH7et', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(3, 'Sofia Murčová', 'tholeczyova@example.org', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', '0XdSSq1YnW', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(4, 'Ida Plšková', 'hulmanova.demeter@example.net', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'g90xncWIqi', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(5, 'Ing. Lýdia Murčová Th.D.', 'hantuchova.nikola@example.com', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'CoQNfTN6fK', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(6, 'Víťazoslav Ďuriš', 'alzbeta.reznickova@example.net', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'BGQKhTEeCk', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(7, 'Albert Huba', 'liana.jancova@example.net', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'wLIqmiNCxT', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(8, 'Natália Ondrejková', 'zlatko87@example.org', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'XxTbbs06mT', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(9, 'Anastázia Hajzerová', 'nemcova.robert@example.org', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'aU1lY5DYO7', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(10, 'Bc. Blažej Janoška Ph.D.', 'lmecir@example.net', '2026-04-27 12:01:46', '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'QCaQtvQWyN', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(11, 'Vladislav Stodola', 'ahotova@example.com', NULL, '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'wrvrUT8fsR', '2026-04-27 12:01:46', '2026-04-27 12:01:46'),
(12, 'PhDr. Ivan Plch Ph.D.', 'henrieta.horak@example.net', NULL, '$2y$12$z3pQAG90R9CBfA1IoRg2VuZg9NKygdrinqRURdqqidNiXQP/N1V66', 'iQALCUgkkA', '2026-04-27 12:01:46', '2026-04-27 12:01:46');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexy pre tabuľku `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexy pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pre tabuľku `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexy pre tabuľku `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexy pre tabuľku `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexy pre tabuľku `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pre tabuľku `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
