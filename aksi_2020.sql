-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2020 at 02:24 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksi_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksi_commentmeta`
--

CREATE TABLE `aksi_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aksi_comments`
--

CREATE TABLE `aksi_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_comments`
--

INSERT INTO `aksi_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-17 11:54:45', '2020-04-17 11:54:45', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_links`
--

CREATE TABLE `aksi_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aksi_options`
--

CREATE TABLE `aksi_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_options`
--

INSERT INTO `aksi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Anti Korupsi Indonesia', 'yes'),
(4, 'blogdescription', 'Mengawal Pemberantasan Korupsi', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'joko.riyadi97@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=18&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:"title";s:17:"Tentang Situs Ini";s:4:"text";s:108:"Ini bisa jadi ruang yang tepat untuk memperkenalkan diri dan situs Anda, atau menuliskan daftar penghargaan.";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:12:"Temukan Kami";s:4:"text";s:175:"<strong>Alamat</strong>\nJl. Jend. Sudirman 8\nJakarta Pusat, Jakarta 10110\n\n<strong>Jam Buka</strong>\nSenin&mdash;Jumat: 09:00&ndash;17:00\nSabtu &amp; Minggu: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '21', 'yes'),
(84, 'page_on_front', '18', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602676478', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'aksi_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'id_ID', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1587282886;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1587297286;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1587297313;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1587297328;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1587297339;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1587815686;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:2;s:8:"expanded";i:4;s:6:"social";i:5;}}', 'yes'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/id_ID/wordpress-5.4.zip";s:6:"locale";s:5:"id_ID";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/id_ID/wordpress-5.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.4";s:7:"version";s:3:"5.4";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1587268567;s:15:"version_checked";s:3:"5.4";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1587268575;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.1.4";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1587278702;s:7:"checked";a:4:{s:14:"twentynineteen";s:3:"1.5";s:15:"twentyseventeen";s:3:"2.3";s:13:"twentysixteen";s:3:"2.1";s:12:"twentytwenty";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, '_site_transient_timeout_browser_587a1d7ca0f933c55645655856e59f3a', '1587729333', 'no'),
(125, '_site_transient_browser_587a1d7ca0f933c55645655856e59f3a', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"54.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:32:"https://www.mozilla.org/firefox/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:1;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_17eada30aceef87ac030e9bc0261495a', '1587729339', 'no'),
(127, '_site_transient_php_check_17eada30aceef87ac030e9bc0261495a', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(146, '_transient_health-check-site-status-result', '{"good":"10","recommended":"6","critical":"1"}', 'yes'),
(147, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1587311808', 'no'),
(148, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:"sandboxed";b:0;s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(149, '_site_transient_timeout_available_translations', '1587279418', 'no');
INSERT INTO `aksi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(150, '_site_transient_available_translations', 'a:121:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 13:46:18";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 01:35:47";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:6:"4.9.13";s:7:"updated";s:19:"2019-10-29 07:54:22";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.9.13/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-01-22 10:57:09";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:6:"4.8.12";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:20:"Bengali (Bangladesh)";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 12:33:33";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-01-18 19:20:00";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-12 05:54:08";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-01-27 14:39:02";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-02 08:17:25";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-18 10:12:50";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-13 20:26:58";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:68:"http://downloads.wordpress.org/translation/core/5.4/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-09 09:47:26";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/5.4/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-09 09:46:58";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_AT";a:8:{s:8:"language";s:5:"de_AT";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-07 21:08:21";s:12:"english_name";s:16:"German (Austria)";s:11:"native_name";s:21:"Deutsch (Österreich)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/de_AT.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-15 20:04:12";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-11 18:49:34";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 22:29:33";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"5.2.5";s:7:"updated";s:19:"2019-06-20 10:05:05";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.2.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-30 14:26:50";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-30 09:33:04";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-07 15:53:44";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-09 09:50:08";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-15 12:49:11";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 21:27:23";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-17 07:21:46";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_UY";a:8:{s:8:"language";s:5:"es_UY";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2019-11-12 04:43:11";s:12:"english_name";s:17:"Spanish (Uruguay)";s:11:"native_name";s:19:"Español de Uruguay";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 12:31:31";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-02-10 15:47:49";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"5.2.5";s:7:"updated";s:19:"2019-12-07 04:01:34";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.2.5/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-03-02 06:35:01";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.1/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-04 01:49:30";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-26 14:31:24";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:9:"5.0-beta3";s:7:"updated";s:19:"2018-11-28 16:04:33";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/5.0-beta3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-29 06:22:39";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 16:16:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 04:35:33";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-17 14:26:22";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-16 22:05:34";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-28 18:04:12";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-18 15:51:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-04 10:17:08";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:3:"hsb";a:8:{s:8:"language";s:3:"hsb";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-24 17:30:39";s:12:"english_name";s:13:"Upper Sorbian";s:11:"native_name";s:17:"Hornjoserbšćina";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/5.4/hsb.zip";s:3:"iso";a:2:{i:2;s:3:"hsb";i:3;s:3:"hsb";}s:7:"strings";a:1:{s:8:"continue";s:4:"Dale";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-19 14:36:40";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-28 23:32:14";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-14 10:03:06";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-15 06:16:12";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nutugne";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-27 08:22:12";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-12 14:40:47";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/5.4/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 07:34:10";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/5.0.3/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:2:"kn";a:8:{s:8:"language";s:2:"kn";s:7:"version";s:6:"4.9.13";s:7:"updated";s:19:"2019-12-04 12:22:34";s:12:"english_name";s:7:"Kannada";s:11:"native_name";s:15:"ಕನ್ನಡ";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.9.13/kn.zip";s:3:"iso";a:2:{i:1;s:2:"kn";i:2;s:3:"kan";}s:7:"strings";a:1:{s:8:"continue";s:30:"ಮುಂದುವರೆಸಿ";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"5.2.5";s:7:"updated";s:19:"2019-11-05 01:54:57";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-18 14:32:44";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.9.9/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:9:"ຕໍ່";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"5.2.5";s:7:"updated";s:19:"2019-10-19 19:23:46";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:6:"4.7.15";s:7:"updated";s:19:"2019-05-10 10:24:08";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.15/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"5.2.3";s:7:"updated";s:19:"2019-09-08 12:57:25";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:6:"4.8.12";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.12/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 23:44:30";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:31:"जारीराख्नु ";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 08:16:51";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2019-12-15 20:22:22";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 15:32:20";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-01-01 08:53:00";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-14 17:01:13";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-18 00:41:44";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-30 09:19:21";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:66:"http://downloads.wordpress.org/translation/core/5.4/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-31 21:55:46";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_AO";a:8:{s:8:"language";s:5:"pt_AO";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2019-12-14 08:20:00";s:12:"english_name";s:19:"Portuguese (Angola)";s:11:"native_name";s:20:"Português de Angola";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-18 07:09:57";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-24 17:05:08";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:3:"snd";a:8:{s:8:"language";s:3:"snd";s:7:"version";s:3:"5.3";s:7:"updated";s:19:"2019-11-12 04:37:38";s:12:"english_name";s:6:"Sindhi";s:11:"native_name";s:8:"سنڌي";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/5.3/snd.zip";s:3:"iso";a:3:{i:1;s:2:"sd";i:2;s:2:"sd";i:3;s:3:"snd";}s:7:"strings";a:1:{s:8:"continue";s:15:"اڳتي هلو";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-16 06:27:02";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-15 03:12:06";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/5.4/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-08 13:12:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-01 01:42:23";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-24 17:02:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"sw";a:8:{s:8:"language";s:2:"sw";s:7:"version";s:5:"5.2.5";s:7:"updated";s:19:"2019-10-22 00:19:41";s:12:"english_name";s:7:"Swahili";s:11:"native_name";s:9:"Kiswahili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/5.2.5/sw.zip";s:3:"iso";a:2:{i:1;s:2:"sw";i:2;s:3:"swa";}s:7:"strings";a:1:{s:8:"continue";s:7:"Endelea";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"5.2.4";s:7:"updated";s:19:"2019-10-19 08:19:37";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/5.2.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-13 20:18:20";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-04-13 09:37:25";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/5.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"5.1.4";s:7:"updated";s:19:"2020-04-09 10:48:08";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/5.1.4/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"5.0.8";s:7:"updated";s:19:"2019-01-23 12:32:40";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.0.8/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2019-12-07 15:52:24";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/5.3.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-26 15:11:53";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"5.4";s:7:"updated";s:19:"2020-03-30 20:54:59";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"5.3.2";s:7:"updated";s:19:"2020-03-08 12:12:22";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(151, '_transient_timeout_dash_v2_be061a787773cc7f8c0b12037a967a37', '1587311848', 'no'),
(152, '_transient_dash_v2_be061a787773cc7f8c0b12037a967a37', '<div class="rss-widget"><p><strong>Masalah RSS:</strong> WP HTTP Error: fsocket timed out</p></div><div class="rss-widget"><p><strong>Masalah RSS:</strong> WP HTTP Error: fsocket timed out</p></div>', 'no'),
(153, 'new_admin_email', 'joko.riyadi97@gmail.com', 'yes'),
(155, '_site_transient_timeout_theme_roots', '1587280501', 'no'),
(156, '_site_transient_theme_roots', 'a:4:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";}', 'no'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `aksi_postmeta`
--

CREATE TABLE `aksi_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_postmeta`
--

INSERT INTO `aksi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 6, '_menu_item_type', 'custom'),
(5, 5, '_menu_item_menu_item_parent', '0'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 5, '_menu_item_object_id', '5'),
(8, 6, '_menu_item_object_id', '6'),
(9, 5, '_menu_item_object', 'custom'),
(10, 6, '_menu_item_object', 'custom'),
(11, 5, '_menu_item_target', ''),
(12, 6, '_menu_item_target', ''),
(13, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(15, 5, '_menu_item_xfn', ''),
(16, 6, '_menu_item_xfn', ''),
(17, 5, '_menu_item_url', '#'),
(18, 6, '_menu_item_url', '#'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', '#'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', '#'),
(48, 10, '_menu_item_type', 'custom'),
(49, 10, '_menu_item_menu_item_parent', '8'),
(50, 10, '_menu_item_object_id', '10'),
(51, 10, '_menu_item_object', 'custom'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', '#'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '8'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#'),
(66, 12, '_menu_item_type', 'custom'),
(67, 12, '_menu_item_menu_item_parent', '8'),
(68, 12, '_menu_item_object_id', '12'),
(69, 12, '_menu_item_object', 'custom'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', '#'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '7'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', '#'),
(84, 14, '_menu_item_type', 'custom'),
(85, 14, '_menu_item_menu_item_parent', '7'),
(86, 14, '_menu_item_object_id', '14'),
(87, 14, '_menu_item_object', 'custom'),
(88, 14, '_menu_item_target', ''),
(89, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 14, '_menu_item_xfn', ''),
(91, 14, '_menu_item_url', '#'),
(93, 15, '_menu_item_type', 'custom'),
(94, 15, '_menu_item_menu_item_parent', '7'),
(95, 15, '_menu_item_object_id', '15'),
(96, 15, '_menu_item_object', 'custom'),
(97, 15, '_menu_item_target', ''),
(98, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 15, '_menu_item_xfn', ''),
(100, 15, '_menu_item_url', '#'),
(102, 16, '_menu_item_type', 'custom'),
(103, 16, '_menu_item_menu_item_parent', '7'),
(104, 16, '_menu_item_object_id', '16'),
(105, 16, '_menu_item_object', 'custom'),
(106, 16, '_menu_item_target', ''),
(107, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 16, '_menu_item_xfn', ''),
(109, 16, '_menu_item_url', '#'),
(111, 17, '_wp_attached_file', '2020/04/2020-landscape-1.png'),
(112, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:28:"2020/04/2020-landscape-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:28:"2020-landscape-1-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"2020-landscape-1-1024x656.png";s:5:"width";i:1024;s:6:"height";i:656;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"2020-landscape-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"2020-landscape-1-768x492.png";s:5:"width";i:768;s:6:"height";i:492;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(113, 17, '_starter_content_theme', 'twentytwenty'),
(115, 18, '_thumbnail_id', '17'),
(117, 18, '_customize_changeset_uuid', '5de95e3f-ccd2-4622-9376-800662a9f067'),
(119, 19, '_customize_changeset_uuid', '5de95e3f-ccd2-4622-9376-800662a9f067'),
(121, 20, '_customize_changeset_uuid', '5de95e3f-ccd2-4622-9376-800662a9f067'),
(123, 21, '_customize_changeset_uuid', '5de95e3f-ccd2-4622-9376-800662a9f067'),
(124, 27, '_menu_item_type', 'custom'),
(125, 27, '_menu_item_menu_item_parent', '0'),
(126, 27, '_menu_item_object_id', '27'),
(127, 27, '_menu_item_object', 'custom'),
(128, 27, '_menu_item_target', ''),
(129, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 27, '_menu_item_xfn', ''),
(131, 27, '_menu_item_url', 'http://localhost/wordpress/'),
(132, 28, '_menu_item_type', 'post_type'),
(133, 28, '_menu_item_menu_item_parent', '0'),
(134, 28, '_menu_item_object_id', '19'),
(135, 28, '_menu_item_object', 'page'),
(136, 28, '_menu_item_target', ''),
(137, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 28, '_menu_item_xfn', ''),
(139, 28, '_menu_item_url', ''),
(140, 29, '_menu_item_type', 'post_type'),
(141, 29, '_menu_item_menu_item_parent', '0'),
(142, 29, '_menu_item_object_id', '21'),
(143, 29, '_menu_item_object', 'page'),
(144, 29, '_menu_item_target', ''),
(145, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 29, '_menu_item_xfn', ''),
(147, 29, '_menu_item_url', ''),
(148, 30, '_menu_item_type', 'post_type'),
(149, 30, '_menu_item_menu_item_parent', '0'),
(150, 30, '_menu_item_object_id', '20'),
(151, 30, '_menu_item_object', 'page'),
(152, 30, '_menu_item_target', ''),
(153, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 30, '_menu_item_xfn', ''),
(155, 30, '_menu_item_url', ''),
(156, 31, '_menu_item_type', 'custom'),
(157, 31, '_menu_item_menu_item_parent', '0'),
(158, 31, '_menu_item_object_id', '31'),
(159, 31, '_menu_item_object', 'custom'),
(160, 31, '_menu_item_target', ''),
(161, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 31, '_menu_item_xfn', ''),
(163, 31, '_menu_item_url', 'http://localhost/wordpress/'),
(164, 32, '_menu_item_type', 'post_type'),
(165, 32, '_menu_item_menu_item_parent', '0'),
(166, 32, '_menu_item_object_id', '19'),
(167, 32, '_menu_item_object', 'page'),
(168, 32, '_menu_item_target', ''),
(169, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 32, '_menu_item_xfn', ''),
(171, 32, '_menu_item_url', ''),
(172, 33, '_menu_item_type', 'post_type'),
(173, 33, '_menu_item_menu_item_parent', '0'),
(174, 33, '_menu_item_object_id', '21'),
(175, 33, '_menu_item_object', 'page'),
(176, 33, '_menu_item_target', ''),
(177, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 33, '_menu_item_xfn', ''),
(179, 33, '_menu_item_url', ''),
(180, 34, '_menu_item_type', 'post_type'),
(181, 34, '_menu_item_menu_item_parent', '0'),
(182, 34, '_menu_item_object_id', '20'),
(183, 34, '_menu_item_object', 'page'),
(184, 34, '_menu_item_target', ''),
(185, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 34, '_menu_item_xfn', ''),
(187, 34, '_menu_item_url', ''),
(188, 35, '_menu_item_type', 'custom'),
(189, 35, '_menu_item_menu_item_parent', '0'),
(190, 35, '_menu_item_object_id', '35'),
(191, 35, '_menu_item_object', 'custom'),
(192, 35, '_menu_item_target', ''),
(193, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 35, '_menu_item_xfn', ''),
(195, 35, '_menu_item_url', 'https://www.yelp.com'),
(196, 36, '_menu_item_type', 'custom'),
(197, 36, '_menu_item_menu_item_parent', '0'),
(198, 36, '_menu_item_object_id', '36'),
(199, 36, '_menu_item_object', 'custom'),
(200, 36, '_menu_item_target', ''),
(201, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 36, '_menu_item_xfn', ''),
(203, 36, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(204, 37, '_menu_item_type', 'custom'),
(205, 37, '_menu_item_menu_item_parent', '0'),
(206, 37, '_menu_item_object_id', '37'),
(207, 37, '_menu_item_object', 'custom'),
(208, 37, '_menu_item_target', ''),
(209, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 37, '_menu_item_xfn', ''),
(211, 37, '_menu_item_url', 'https://twitter.com/wordpress'),
(212, 38, '_menu_item_type', 'custom'),
(213, 38, '_menu_item_menu_item_parent', '0'),
(214, 38, '_menu_item_object_id', '38'),
(215, 38, '_menu_item_object', 'custom'),
(216, 38, '_menu_item_target', ''),
(217, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 38, '_menu_item_xfn', ''),
(219, 38, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(220, 39, '_menu_item_type', 'custom'),
(221, 39, '_menu_item_menu_item_parent', '0'),
(222, 39, '_menu_item_object_id', '39'),
(223, 39, '_menu_item_object', 'custom'),
(224, 39, '_menu_item_target', ''),
(225, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(226, 39, '_menu_item_xfn', ''),
(227, 39, '_menu_item_url', 'mailto:wordpress@example.com'),
(228, 22, '_wp_trash_meta_status', 'publish'),
(229, 22, '_wp_trash_meta_time', '1587279110');

-- --------------------------------------------------------

--
-- Table structure for table `aksi_posts`
--

CREATE TABLE `aksi_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_posts`
--

INSERT INTO `aksi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-17 11:54:45', '2020-04-17 11:54:45', '<!-- wp:paragraph -->\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2020-04-17 11:54:45', '2020-04-17 11:54:45', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-17 11:54:45', '2020-04-17 11:54:45', '<!-- wp:paragraph -->\n<p>Ini adalah halaman contoh. Halaman ini berbeda dari artikel blog karena akan tetap di satu tempat dan akan muncul di navigasi situs Anda (di sebagian besar tema). Kebanyakan orang memulai dengan halaman "Tentang" yang bertujuan untuk mengenalkan mereka kepada pengunjung potensial situs. Biasanya berisi seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hai yang disana! Saya seorang kurir bersepeda di siang hari, di malam hari bermimpi menjadi seorang aktor, dan ini adalah situs web saya. Saya tinggal di Los Angeles, punya anjing besar bernama Jack, dan saya suka pi&#241;a minuman Colada. (Dan terjebak dalam hujan.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...atau seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Perusahaan Doohickey XYZ didirikan pada tahun 1971, dan telah menyediakan doohickey berkualitas untuk masyarakat umum sejak saat itu. Terletak di Kota Gotham, XYZ mempekerjakan lebih dari 2.000 orang dan melakukan segala macam hal luar biasa untuk komunitas Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Sebagai pengguna baru WordPress, Anda harus membuka <a href="http://localhost/wordpress/wp-admin/">dasbor Anda</a> untuk menghapus laman ini dan membuat laman-laman baru untuk konten Anda. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'publish', 'closed', 'open', '', 'laman-contoh', '', '', '2020-04-17 11:54:45', '2020-04-17 11:54:45', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-17 11:54:45', '2020-04-17 11:54:45', '<!-- wp:heading --><h2>Siapa kami</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Alamat situs web kami adalah: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Data pribadi apa yang kami kumpulkan dan mengapa kami mengumpulkannya</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Komentar</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulir Kontak</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda mengunjungi halaman login kami, kami akan memasang cookie sementara untuk memastikan apakah browser Anda menerima cookie. Cookie ini tidak mengandung data pribadi dan dibuang ketika Anda menutup browser Anda.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Konten yang disematkan dari situs web lain</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analitik</h3><!-- /wp:heading --><!-- wp:heading --><h2>Dengan siapa kami membagi data Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Berapa lama kami menyimpan data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hak apa yang Anda miliki atas data ANda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ke mana kami kirim data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informasi kontak Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informasi tambahan</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Bagaimana kami melindungi data Anda</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Apa prosedur kebocoran data yang kami miliki</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Pihak ketiga mana saja data yang kami terima berasal</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Apa pengambilan keputusan otomatis dan/atau profil yang kami lakukan dengan data pengguna</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Persyaratan pengungkapan regulasi industri</h3><!-- /wp:heading -->', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2020-04-17 11:54:45', '2020-04-17 11:54:45', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-17 11:55:39', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-17 11:55:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 0, 'http://localhost/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 'Berita Terbaru', '', 'publish', 'closed', 'closed', '', 'berita-terbaru', '', '', '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 0, 'http://localhost/wordpress/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 'Publikasi', '', 'publish', 'closed', 'closed', '', 'publikasi', '', '', '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 0, 'http://localhost/wordpress/?p=7', 3, 'nav_menu_item', '', 0),
(8, 1, '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 'Tentang Kami', '', 'publish', 'closed', 'closed', '', 'tentang-kami', '', '', '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 0, 'http://localhost/wordpress/?p=8', 8, 'nav_menu_item', '', 0),
(9, 1, '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 'Hubungi Kami', '', 'publish', 'closed', 'closed', '', 'hubungi-kami', '', '', '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 0, 'http://localhost/wordpress/?p=9', 12, 'nav_menu_item', '', 0),
(10, 1, '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 'Visi-Misi', '', 'publish', 'closed', 'closed', '', 'visi-misi', '', '', '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 0, 'http://localhost/wordpress/?p=10', 9, 'nav_menu_item', '', 0),
(11, 1, '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 'Anggota', '', 'publish', 'closed', 'closed', '', 'anggota', '', '', '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 0, 'http://localhost/wordpress/?p=11', 11, 'nav_menu_item', '', 0),
(12, 1, '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 'Struktur Organisasi', '', 'publish', 'closed', 'closed', '', 'struktur-organisasi', '', '', '2020-04-19 13:50:34', '2020-04-19 06:50:34', '', 0, 'http://localhost/wordpress/?p=12', 10, 'nav_menu_item', '', 0),
(13, 1, '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 'Laporan', '', 'publish', 'closed', 'closed', '', 'laporan', '', '', '2020-04-19 13:50:32', '2020-04-19 06:50:32', '', 0, 'http://localhost/wordpress/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 'Makalah', '', 'publish', 'closed', 'closed', '', 'makalah', '', '', '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 0, 'http://localhost/wordpress/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 'Bahan Lain', '', 'publish', 'closed', 'closed', '', 'bahan-lain', '', '', '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 0, 'http://localhost/wordpress/?p=15', 6, 'nav_menu_item', '', 0),
(16, 1, '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2020-04-19 13:50:33', '2020-04-19 06:50:33', '', 0, 'http://localhost/wordpress/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 'New UmoMA Membuka Pintu untuk Anda', '', 'inherit', 'open', 'closed', '', 'new-umoma-membuka-pintu-untuk-anda', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/04/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Agustus -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Oktober -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Kehidupan yang Pantas Saya Terima</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Agustus -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Dari Signac sampai Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Oktober -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">Dengan arsitektur tujuh lantai yang megah, UMoMA melaksanakan pameran seni kontemporer internasional, terkadang bersamaan dengan retrospektif sejarah seni. Isu-isu faktual, politik dan filosofis adalah muatan dasar dari acara kami. Sebagai pengunjung, Anda diajak untuk menyimak diskusi dengan seniman, ceramah, pemutaran film dan kegiatan lainnya tanpa biaya masuk. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pameran diadakan oleh UMoMA bekerjasama dengan seniman dan museum di seluruh dunia dan mereka selalu menarik perhatian internasional. UMoMA menerima penghargaan Special Commendation from the European Museum of the Year di antara kandidat-kandidat papan atas untuk Swedish Museum of the Year Award serta Council of Europe Museum Prize. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Jadilah Anggota dan Dapatkan Penawaran Khusus!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Anggona dapat mengakses pameran dan penjualan eksklusif. Biaya keanggotaan $99.99 dan ditagih setahun sekali. </p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Bergabung dengan Kami</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'publish', 'closed', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:paragraph -->\n<p>Mungkin Anda seorang seniman yang ingin memperkenalkan diri dan karya Anda di sini, atau barangkali Anda punya bisnis dengan sebuah misi yang ingin disampaikan.</p>\n<!-- /wp:paragraph -->', 'Tentang', '', 'publish', 'closed', 'closed', '', 'tentang', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:paragraph -->\n<p>Ini laman dengan informasi kontak dasar, seperti alamat dan nomor telepon. Anda juga bisa menggunakan plugin untuk menambahkan formulir kontak.</p>\n<!-- /wp:paragraph -->', 'Kontak', '', 'publish', 'closed', 'closed', '', 'kontak', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE3OiJUZW50YW5nIFNpdHVzIEluaSI7czo0OiJ0ZXh0IjtzOjEwODoiSW5pIGJpc2EgamFkaSBydWFuZyB5YW5nIHRlcGF0IHVudHVrIG1lbXBlcmtlbmFsa2FuIGRpcmkgZGFuIHNpdHVzIEFuZGEsIGF0YXUgbWVudWxpc2thbiBkYWZ0YXIgcGVuZ2hhcmdhYW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==",\n            "title": "Tentang Situs Ini",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "03558920a1473c9792d794ee7a3d6b23"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEyOiJUZW11a2FuIEthbWkiO3M6NDoidGV4dCI7czoxNzU6IjxzdHJvbmc+QWxhbWF0PC9zdHJvbmc+CkpsLiBKZW5kLiBTdWRpcm1hbiA4Ckpha2FydGEgUHVzYXQsIEpha2FydGEgMTAxMTAKCjxzdHJvbmc+SmFtIEJ1a2E8L3N0cm9uZz4KU2VuaW4mbWRhc2g7SnVtYXQ6IDA5OjAwJm5kYXNoOzE3OjAwClNhYnR1ICZhbXA7IE1pbmdndTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9",\n            "title": "Temukan Kami",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "7b228709b117ed0636d8710e4cb4d47e"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            17,\n            18,\n            19,\n            20,\n            21\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "nav_menu[-1]": {\n        "value": {\n            "name": "Utama",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-1]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Beranda",\n            "url": "http://localhost/wordpress/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-2]": {\n        "value": {\n            "object_id": 19,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Tentang",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Tentang",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-3]": {\n        "value": {\n            "object_id": 21,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-4]": {\n        "value": {\n            "object_id": 20,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Kontak",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Kontak",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "twentytwenty::nav_menu_locations[primary]": {\n        "value": 2,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu[-5]": {\n        "value": {\n            "name": "Utama",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-5]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Beranda",\n            "url": "http://localhost/wordpress/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-6]": {\n        "value": {\n            "object_id": 19,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Tentang",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Tentang",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-7]": {\n        "value": {\n            "object_id": 21,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-8]": {\n        "value": {\n            "object_id": 20,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Kontak",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Kontak",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "twentytwenty::nav_menu_locations[expanded]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "nav_menu[-9]": {\n        "value": {\n            "name": "Menu Tautan Sosial",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-9]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -9,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-10]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -9,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-11]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -9,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-12]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -9,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "nav_menu_item[-13]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -9,\n            "_invalid": false,\n            "type_label": "Tautan Tersuai"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:51:41"\n    },\n    "twentytwenty::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -9,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 18,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 21,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-04-19 06:50:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5de95e3f-ccd2-4622-9376-800662a9f067', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 0, 'http://localhost/wordpress/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Agustus -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Oktober -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Kehidupan yang Pantas Saya Terima</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Agustus -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Dari Signac sampai Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Oktober -- 1 Desember</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Baca Selengkapnya</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">Dengan arsitektur tujuh lantai yang megah, UMoMA melaksanakan pameran seni kontemporer internasional, terkadang bersamaan dengan retrospektif sejarah seni. Isu-isu faktual, politik dan filosofis adalah muatan dasar dari acara kami. Sebagai pengunjung, Anda diajak untuk menyimak diskusi dengan seniman, ceramah, pemutaran film dan kegiatan lainnya tanpa biaya masuk. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pameran diadakan oleh UMoMA bekerjasama dengan seniman dan museum di seluruh dunia dan mereka selalu menarik perhatian internasional. UMoMA menerima penghargaan Special Commendation from the European Museum of the Year di antara kandidat-kandidat papan atas untuk Swedish Museum of the Year Award serta Council of Europe Museum Prize. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Jadilah Anggota dan Dapatkan Penawaran Khusus!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Anggona dapat mengakses pameran dan penjualan eksklusif. Biaya keanggotaan $99.99 dan ditagih setahun sekali. </p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Bergabung dengan Kami</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 18, 'http://localhost/wordpress/18-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:paragraph -->\n<p>Mungkin Anda seorang seniman yang ingin memperkenalkan diri dan karya Anda di sini, atau barangkali Anda punya bisnis dengan sebuah misi yang ingin disampaikan.</p>\n<!-- /wp:paragraph -->', 'Tentang', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 19, 'http://localhost/wordpress/19-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-04-19 13:51:41', '2020-04-19 06:51:41', '<!-- wp:paragraph -->\n<p>Ini laman dengan informasi kontak dasar, seperti alamat dan nomor telepon. Anda juga bisa menggunakan plugin untuk menambahkan formulir kontak.</p>\n<!-- /wp:paragraph -->', 'Kontak', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-04-19 13:51:41', '2020-04-19 06:51:41', '', 20, 'http://localhost/wordpress/20-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 21, 'http://localhost/wordpress/21-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2020-04-19 13:51:42', '2020-04-19 06:51:42', '', 0, 'http://localhost/wordpress/beranda/', 0, 'nav_menu_item', '', 0),
(28, 1, '2020-04-19 13:51:43', '2020-04-19 06:51:43', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-04-19 13:51:43', '2020-04-19 06:51:43', '', 0, 'http://localhost/wordpress/28/', 1, 'nav_menu_item', '', 0),
(29, 1, '2020-04-19 13:51:43', '2020-04-19 06:51:43', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-04-19 13:51:43', '2020-04-19 06:51:43', '', 0, 'http://localhost/wordpress/29/', 2, 'nav_menu_item', '', 0),
(30, 1, '2020-04-19 13:51:44', '2020-04-19 06:51:44', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-04-19 13:51:44', '2020-04-19 06:51:44', '', 0, 'http://localhost/wordpress/30/', 3, 'nav_menu_item', '', 0),
(31, 1, '2020-04-19 13:51:44', '2020-04-19 06:51:44', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda-2', '', '', '2020-04-19 13:51:44', '2020-04-19 06:51:44', '', 0, 'http://localhost/wordpress/beranda-2/', 0, 'nav_menu_item', '', 0),
(32, 1, '2020-04-19 13:51:45', '2020-04-19 06:51:45', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-04-19 13:51:45', '2020-04-19 06:51:45', '', 0, 'http://localhost/wordpress/32/', 1, 'nav_menu_item', '', 0),
(33, 1, '2020-04-19 13:51:46', '2020-04-19 06:51:46', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-04-19 13:51:46', '2020-04-19 06:51:46', '', 0, 'http://localhost/wordpress/33/', 2, 'nav_menu_item', '', 0),
(34, 1, '2020-04-19 13:51:46', '2020-04-19 06:51:46', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-04-19 13:51:46', '2020-04-19 06:51:46', '', 0, 'http://localhost/wordpress/34/', 3, 'nav_menu_item', '', 0),
(35, 1, '2020-04-19 13:51:47', '2020-04-19 06:51:47', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-04-19 13:51:47', '2020-04-19 06:51:47', '', 0, 'http://localhost/wordpress/yelp/', 0, 'nav_menu_item', '', 0),
(36, 1, '2020-04-19 13:51:47', '2020-04-19 06:51:47', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-04-19 13:51:47', '2020-04-19 06:51:47', '', 0, 'http://localhost/wordpress/facebook/', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-04-19 13:51:48', '2020-04-19 06:51:48', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-04-19 13:51:48', '2020-04-19 06:51:48', '', 0, 'http://localhost/wordpress/twitter/', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-04-19 13:51:48', '2020-04-19 06:51:48', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-04-19 13:51:48', '2020-04-19 06:51:48', '', 0, 'http://localhost/wordpress/instagram/', 3, 'nav_menu_item', '', 0),
(39, 1, '2020-04-19 13:51:49', '2020-04-19 06:51:49', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2020-04-19 13:51:49', '2020-04-19 06:51:49', '', 0, 'http://localhost/wordpress/email/', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_termmeta`
--

CREATE TABLE `aksi_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aksi_terms`
--

CREATE TABLE `aksi_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_terms`
--

INSERT INTO `aksi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'Primary_menu', 'primary_menu', 0),
(3, 'Utama', 'utama', 0),
(4, 'Utama (2)', 'utama-2', 0),
(5, 'Menu Tautan Sosial', 'menu-tautan-sosial', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_term_relationships`
--

CREATE TABLE `aksi_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_term_relationships`
--

INSERT INTO `aksi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 5, 0),
(36, 5, 0),
(37, 5, 0),
(38, 5, 0),
(39, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_term_taxonomy`
--

CREATE TABLE `aksi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_term_taxonomy`
--

INSERT INTO `aksi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_usermeta`
--

CREATE TABLE `aksi_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_usermeta`
--

INSERT INTO `aksi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'aksi_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'aksi_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"1317c099329d9cb28c60ad018c8be04ac314bd0aa362a117120abb155ce56122";a:4:{s:10:"expiration";i:1587297327;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1587124527;}s:64:"6624a3259a498a001dd317bcc9ce64b9f9a30dd0c308fbdf6d1364d0fdd68154";a:4:{s:10:"expiration";i:1587441404;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1587268604;}s:64:"7ab1b99bca75c8eb75c602dd4a974f66d0abd4a28e485f240855ff9914e1ee57";a:4:{s:10:"expiration";i:1587451490;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1587278690;}}'),
(17, 1, 'aksi_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `aksi_users`
--

CREATE TABLE `aksi_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `aksi_users`
--

INSERT INTO `aksi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdBYLw.yR0l6q8KF9qckmvU7IbTrZN1', 'admin', 'joko.riyadi97@gmail.com', 'http://localhost/wordpress', '2020-04-17 11:54:44', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksi_commentmeta`
--
ALTER TABLE `aksi_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aksi_comments`
--
ALTER TABLE `aksi_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `aksi_links`
--
ALTER TABLE `aksi_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `aksi_options`
--
ALTER TABLE `aksi_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `aksi_postmeta`
--
ALTER TABLE `aksi_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aksi_posts`
--
ALTER TABLE `aksi_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `aksi_termmeta`
--
ALTER TABLE `aksi_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aksi_terms`
--
ALTER TABLE `aksi_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `aksi_term_relationships`
--
ALTER TABLE `aksi_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `aksi_term_taxonomy`
--
ALTER TABLE `aksi_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `aksi_usermeta`
--
ALTER TABLE `aksi_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aksi_users`
--
ALTER TABLE `aksi_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksi_commentmeta`
--
ALTER TABLE `aksi_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aksi_comments`
--
ALTER TABLE `aksi_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `aksi_links`
--
ALTER TABLE `aksi_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aksi_options`
--
ALTER TABLE `aksi_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `aksi_postmeta`
--
ALTER TABLE `aksi_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `aksi_posts`
--
ALTER TABLE `aksi_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `aksi_termmeta`
--
ALTER TABLE `aksi_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aksi_terms`
--
ALTER TABLE `aksi_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `aksi_term_taxonomy`
--
ALTER TABLE `aksi_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `aksi_usermeta`
--
ALTER TABLE `aksi_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `aksi_users`
--
ALTER TABLE `aksi_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
