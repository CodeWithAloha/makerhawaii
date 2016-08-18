-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2016 at 03:11 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `makerhawaii`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-11-01 22:38:08', '2015-11-01 22:38:08', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.makerhawaii.com', 'yes'),
(2, 'home', 'http://local.makerhawaii.com', 'yes'),
(3, 'blogname', 'Maker Hawaii', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'russellbvea@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:17:"timber/timber.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'makerhawaii', 'yes'),
(42, 'stylesheet', 'makerhawaii', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1451705183;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451719740;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451731089;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451774846;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, 'rewrite_rules', 'a:59:{s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.4-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.4-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1451687954;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":2:{s:12:"last_checked";i:1451687956;s:7:"checked";a:0:{}}', 'yes'),
(108, '_transient_random_seed', '216c99534ec50bdcbe9702ac6a54e9c9', 'yes'),
(109, '_site_transient_timeout_browser_b10ea858e287322be96ef3a56d4aafea', '1447022846', 'yes'),
(110, '_site_transient_browser_b10ea858e287322be96ef3a56d4aafea', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.80";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(112, 'can_compress_scripts', '1', 'yes'),
(123, 'recently_activated', 'a:0:{}', 'yes'),
(130, 'acf_version', '5.3.2.2', 'yes'),
(131, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(132, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(133, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(138, '_transient_twentyfifteen_categories', '1', 'yes'),
(139, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1446418062;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(140, 'current_theme', 'HawaiiMaker', 'yes'),
(141, 'theme_mods_makerhawaii', 'a:1:{i:0;b:0;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(147, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TmpjNE5UWjhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRVdE1URXRNRElnTURNNk16TTZNVFE9IjtzOjM6InVybCI7czoyODoiaHR0cDovL2xvY2FsLm1ha2VyaGF3YWlpLmNvbSI7fQ==', 'yes'),
(179, '_site_transient_timeout_browser_7448e821eae745ed8b5d0407416d52e8', '1447314388', 'yes'),
(180, '_site_transient_browser_7448e821eae745ed8b5d0407416d52e8', 'a:9:{s:8:"platform";s:6:"iPhone";s:4:"name";s:6:"iPhone";s:7:"version";s:3:"7.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(250, '_site_transient_timeout_browser_6cc177c48101636a194a81603fdb2927', '1449277302', 'yes'),
(251, '_site_transient_browser_6cc177c48101636a194a81603fdb2927', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.86";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(268, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451687955;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:17:"timber/timber.php";O:8:"stdClass":6:{s:2:"id";s:4:"7500";s:4:"slug";s:6:"timber";s:6:"plugin";s:17:"timber/timber.php";s:11:"new_version";s:8:"0.8 beta";s:3:"url";s:37:"https://wordpress.org/plugins/timber/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/timber.0.8.zip";}}}', 'yes'),
(290, '_site_transient_timeout_browser_ede57006e09c5046dfd62ebcccb21f00', '1449722293', 'yes'),
(291, '_site_transient_browser_ede57006e09c5046dfd62ebcccb21f00', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"47.0.2526.73";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(382, '_transient_timeout_plugin_slugs', '1451593091', 'no'),
(383, '_transient_plugin_slugs', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:9:"hello.php";i:2;s:17:"timber/timber.php";}', 'no'),
(384, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1451549891', 'no'),
(385, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Couldn''t resolve host ''planet.wordpress.org''</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(394, '_transient_timeout_acf_pro_get_remote_info', '1451730055', 'no'),
(395, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields Pro";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:36:"http://www.advancedcustomfields.com/";s:7:"version";s:7:"5.3.2.2";s:6:"author";s:13:"elliot condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:3:"4.3";s:4:"tags";a:32:{i:0;s:5:"5.3.1";i:1;s:5:"5.3.0";i:2;s:5:"5.2.9";i:3;s:5:"5.2.8";i:4;s:5:"5.2.7";i:5;s:5:"5.2.6";i:6;s:5:"5.2.5";i:7;s:5:"5.2.4";i:8;s:5:"5.2.3";i:9;s:5:"5.2.2";i:10;s:5:"5.2.1";i:11;s:5:"5.2.0";i:12;s:5:"5.1.9";i:13;s:5:"5.1.8";i:14;s:5:"5.1.7";i:15;s:5:"5.1.6";i:16;s:5:"5.1.5";i:17;s:5:"5.1.4";i:18;s:5:"5.1.3";i:19;s:5:"5.1.2";i:20;s:5:"5.1.1";i:21;s:5:"5.1.0";i:22;s:5:"5.0.9";i:23;s:5:"5.0.8";i:24;s:5:"5.0.7";i:25;s:5:"5.0.6";i:26;s:5:"5.0.5";i:27;s:5:"5.0.4";i:28;s:5:"5.0.3";i:29;s:5:"5.0.2";i:30;s:5:"5.0.1";i:31;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4328:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="http://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="http://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="http://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="http://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="http://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="http://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="http://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="http://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:6789:"<h4> 5.3.2.2 </h4>\n<ul><li>Core: Fixed PHP error when registering a local field missing one of more settings</li><li>Core: Fixed incorrect json load_path setting when WPML is active</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li></ul>\n<h4> 5.3.2.1 </h4>\n<ul><li>Core: Fixed bug causing issues when loading values from an options page, widget or taxonomy term</li></ul>\n<h4> 5.3.2 </h4>\n<ul><li>Repeater field: Added new setting and icon to collapse row</li><li>Google Maps: Improved google API loading for better theme compatibility</li><li>Taxonomy field: Fixed bug where <code>Add new term</code> popup only showed 20 parent terms</li><li>Core: Added new setting <code>export_translate</code> to customise which field settings should be wrapped in __()</li><li>Core: Improved efficiency of AJAX call when finding new field groups when editing a post</li><li>API: Added new functions add_row(), update_row() and delete_row()</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Augusto Simão</li></ul>\n<h4> 5.3.1 </h4>\n<ul><li>Flexible Content field: added toggle icons to show layout open/close state</li><li>Gallery field: Fixed bug where images could not save a blank title value</li><li>Taxonomy field: Added pagination when rendered as a Select2 element</li><li>Relationship field: Changed validation to better edit values when a minimum is set</li><li>Google map field: Fixed minor autocomplete bugs and added search icon</li><li>Message field: Added new_lines setting</li><li>Core: Added <code>*</code> to required fields when editing a field group</li><li>Core: Prevented updates to .json file when syncing</li><li>Core: Fields now render as div (instead of table) when labels are left aligned</li><li>Core: Minor fixes and improvements</li><li>Language: Updated .po headers - thanks to Ralf Koller</li></ul>\n<h4> 5.3.0 </h4>\n<ul><li>WYSIWYG field: Fixed <code>Visual/Text</code> toggle bug with WP 4.3</li><li>Select field: Fixed Select2 bug hiding selected choices</li></ul>\n<h4> 5.2.9 </h4>\n<ul><li>Field group: Added new <code>status</code> setting to enable/disable</li><li>Field group: Added new <code>description</code> setting shown to developers when viewing the field group list</li><li>Field group: Moved <code>Show field keys</code> Screen Option within existing <code>Show on Screen</code> checkboxes</li><li>Tab field: Fixed missing min-height to left aligned tab wrapper</li><li>Relationship field: Added timeout to reduce AJAX requests whilst typing in search</li><li>Flexible Content field: Fixed minor JS bug where removing a layout would not update the order numbers</li><li>Core: Fixed bug validating uppercase file extensions</li><li>Core: Renamed menu items</li><li>Core: Replace sprite icons with font</li><li>Core: Added new setting <code>export_textdomain</code> to add __() to generated export code</li><li>Core: Fixed conflict with Post Type Order plugin causing issues when querying posts</li><li>Core: Fixed conflict with WPML causing issues when querying posts</li><li>Core: Added compatibility for WP 4.3</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li></ul>\n<h4> 5.2.8 </h4>\n<ul><li>Image field: Added selection restrictions in media popup (width, height, size, type)</li><li>File field: Same as above</li><li>Gallery field: Same as above</li><li>Tab field: Added new <code>endpoint</code> setting - allows multiple tab groups</li><li>Tab field: Improved CSS/JS to allow individual tab groups to use different alignments (left/top)</li><li>Repeater field: Added logic to delete nested sub field values (grand children)</li><li>Options page: Added new <code>autoload</code> setting</li><li>Core: Added new filter <code>acf/prepare_field</code></li><li>Core: Added upload validation logic to ignore filetype case sensitivity</li><li>Core: Fixed upload issue when filesize restriction contained a decimal place</li><li>Core: Improved validation/save JS compatibility with 3rd party plugins</li><li>Core: Updated Select2 library to v3.5.2</li><li>Core: Fixed bug hiding Select2 choices when multiple found with the same label</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè & Francesco Mazzola</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updating Finnish translation - thanks to Sauli Rajala</li></ul>\n<h4> 5.2.7 </h4>\n<ul><li>Taxonomy field: Split setting <code>load_save_terms</code> into <code>load_terms</code> and <code>save_terms</code></li><li>Select field: Fixed bug causing values containing <code>,</code> to fail</li><li>Checkbox field: Fixed bug causing values containing <code>,</code> to fail</li><li>Checkbox field: Added new <code>toggle all</code> setting</li><li>User field: Added new filters <code>acf/fields/user/result</code> and <code>acf/fields/user/search_columns</code></li><li>Gallery field: Added logic to increase sidebar width when space is available</li><li>Options page: Added new <code>post_id</code> setting to customise where values are loaded and saved</li><li>API: Improved `get_field()` to better handle no value</li><li>API: Optimised asset loading when using the `acf_form()` function</li><li>API: Added new function `delete_sub_field()`</li><li>Core: Added new `acf/init` action when ACF has loaded all functionality</li><li>Core: Added compatibility with Select2 language translations</li><li>Core: Changed compatibility filter default to false</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Thomas Meyer</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Persian translation - thanks to Kamel</li></ul>\n<h4> 5.2.6 </h4>\n<ul><li>Core: Improved validation logic to display HTML5 validation messages</li><li>Core: Improved conditional logic performance for large field groups</li><li>Core: Removed updates menu item when not activated as a plugin (included within theme)</li><li>Core: Fixed various JS performance issues</li><li>Core: Minor fixes and improvements</li><li>Core: Added compatibility for saving widget in <code>accessibility mode</code></li><li>Language: Added Finnish translation - thanks to Sauli Rajala</li></ul>\n<h4> 5.2.5 </h4>\n<ul><li>Core: Fixed JS error preventing changes to large field groups</li><li>Language: Added Romanian translation - thanks to Eduard Ungureanu</li></ul>\n";s:14:"upgrade_notice";s:550:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="http://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(396, '_site_transient_timeout_theme_roots', '1451688655', 'yes'),
(397, '_site_transient_theme_roots', 'a:1:{s:11:"makerhawaii";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_edit_lock', '1451507464:1'),
(4, 18, '_edit_last', '1'),
(5, 18, '_edit_lock', '1451507584:1'),
(6, 19, 'tools_0_name', 'Makerbot'),
(7, 19, '_tools_0_name', 'field_5636dae6e5da8'),
(8, 19, 'tools_0_count', '3'),
(9, 19, '_tools_0_count', 'field_5636daf3e5da9'),
(10, 19, 'tools_1_name', 'Lazer Cutter'),
(11, 19, '_tools_1_name', 'field_5636dae6e5da8'),
(12, 19, 'tools_1_count', '1'),
(13, 19, '_tools_1_count', 'field_5636daf3e5da9'),
(14, 19, 'tools', '2'),
(15, 19, '_tools', 'field_5636dadbe5da7'),
(16, 19, 'hours', 'M - F: 12pm - 5pm'),
(17, 19, '_hours', 'field_5636db960206e'),
(18, 19, 'membership_info', ''),
(19, 19, '_membership_info', 'field_5636dba80206f'),
(20, 19, 'classes', ''),
(21, 19, '_classes', 'field_5636db3677ab6'),
(22, 19, 'address', 'a:3:{s:7:"address";s:51:"665 Halekauwila Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3006152";s:3:"lng";s:19:"-157.85873909999998";}'),
(23, 19, '_address', 'field_5636db4a77ab7'),
(24, 19, 'videos', '0'),
(25, 19, '_videos', 'field_5636db6977ab8'),
(26, 19, 'contact_info', ''),
(27, 19, '_contact_info', 'field_5636dbc402070'),
(28, 19, 'website', ''),
(29, 19, '_website', 'field_5636dbd402071'),
(30, 18, 'tools_0_name', 'Makerbot'),
(31, 18, '_tools_0_name', 'field_5636dae6e5da8'),
(32, 18, 'tools_0_count', '3'),
(33, 18, '_tools_0_count', 'field_5636daf3e5da9'),
(34, 18, 'tools_1_name', 'Lazer Cutter'),
(35, 18, '_tools_1_name', 'field_5636dae6e5da8'),
(36, 18, 'tools_1_count', '1'),
(37, 18, '_tools_1_count', 'field_5636daf3e5da9'),
(38, 18, 'tools', '2'),
(39, 18, '_tools', 'field_5636dadbe5da7'),
(40, 18, 'hours', 'M - F: 12pm - 5pm'),
(41, 18, '_hours', 'field_5636db960206e'),
(42, 18, 'membership_info', 'Open to residents only'),
(43, 18, '_membership_info', 'field_5636dba80206f'),
(44, 18, 'classes', ''),
(45, 18, '_classes', 'field_5636db3677ab6'),
(46, 18, 'address', 'a:3:{s:7:"address";s:51:"665 Halekauwila Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3006152";s:3:"lng";s:19:"-157.85873909999998";}'),
(47, 18, '_address', 'field_5636db4a77ab7'),
(48, 18, 'videos', '0'),
(49, 18, '_videos', 'field_5636db6977ab8'),
(50, 18, 'contact_info', ''),
(51, 18, '_contact_info', 'field_5636dbc402070'),
(52, 18, 'website', ''),
(53, 18, '_website', 'field_5636dbd402071'),
(54, 20, '_edit_last', '1'),
(55, 20, '_edit_lock', '1449117635:1'),
(56, 22, 'tools_0_name', 'Makerbot'),
(57, 22, '_tools_0_name', 'field_5636dae6e5da8'),
(58, 22, 'tools_0_count', '3'),
(59, 22, '_tools_0_count', 'field_5636daf3e5da9'),
(60, 22, 'tools_1_name', 'Lazer Cutter'),
(61, 22, '_tools_1_name', 'field_5636dae6e5da8'),
(62, 22, 'tools_1_count', '1'),
(63, 22, '_tools_1_count', 'field_5636daf3e5da9'),
(64, 22, 'tools', '2'),
(65, 22, '_tools', 'field_5636dadbe5da7'),
(66, 22, 'hours', 'M - F: 12pm - 5pm'),
(67, 22, '_hours', 'field_5636db960206e'),
(68, 22, 'membership_info', 'Open to residents only'),
(69, 22, '_membership_info', 'field_5636dba80206f'),
(70, 22, 'classes', ''),
(71, 22, '_classes', 'field_5636db3677ab6'),
(72, 22, 'address', 'a:3:{s:7:"address";s:51:"665 Halekauwila Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3006152";s:3:"lng";s:19:"-157.85873909999998";}'),
(73, 22, '_address', 'field_5636db4a77ab7'),
(74, 22, 'videos', '0'),
(75, 22, '_videos', 'field_5636db6977ab8'),
(76, 22, 'contact_info', ''),
(77, 22, '_contact_info', 'field_5636dbc402070'),
(78, 22, 'website', ''),
(79, 22, '_website', 'field_5636dbd402071'),
(80, 23, '_edit_last', '1'),
(81, 24, 'tools', '0'),
(82, 24, '_tools', 'field_5636dadbe5da7'),
(83, 24, 'hours', ''),
(84, 24, '_hours', 'field_5636db960206e'),
(85, 24, 'membership_info', ''),
(86, 24, '_membership_info', 'field_5636dba80206f'),
(87, 24, 'classes', ''),
(88, 24, '_classes', 'field_5636db3677ab6'),
(89, 24, 'address', 'a:3:{s:7:"address";s:45:"4180 Rice Street, Līhuʻe, HI, United States";s:3:"lat";s:10:"21.9710448";s:3:"lng";s:19:"-159.36251600000003";}'),
(90, 24, '_address', 'field_5636db4a77ab7'),
(91, 24, 'videos', '0'),
(92, 24, '_videos', 'field_5636db6977ab8'),
(93, 24, 'contact_info', 'info@kauaimakerspace.org'),
(94, 24, '_contact_info', 'field_5636dbc402070'),
(95, 24, 'website', 'http://kauaimakerspace.org/'),
(96, 24, '_website', 'field_5636dbd402071'),
(97, 23, 'tools', '0'),
(98, 23, '_tools', 'field_5636dadbe5da7'),
(99, 23, 'hours', ''),
(100, 23, '_hours', 'field_5636db960206e'),
(101, 23, 'membership_info', ''),
(102, 23, '_membership_info', 'field_5636dba80206f'),
(103, 23, 'classes', '1st Wednesday of every month @630pm at the Kauai Beer Company on Rice Street in Lihue.\r\n3rd Tuesday of every month @630pm at the Ha coffee bar on Rice Street in Lihue.'),
(104, 23, '_classes', 'field_5636db3677ab6'),
(105, 23, 'address', 'a:3:{s:7:"address";s:45:"4180 Rice Street, Līhuʻe, HI, United States";s:3:"lat";s:10:"21.9710448";s:3:"lng";s:19:"-159.36251600000003";}'),
(106, 23, '_address', 'field_5636db4a77ab7'),
(107, 23, 'videos', '0'),
(108, 23, '_videos', 'field_5636db6977ab8'),
(109, 23, 'contact_info', 'info@kauaimakerspace.org'),
(110, 23, '_contact_info', 'field_5636dbc402070'),
(111, 23, 'website', 'http://kauaimakerspace.org/'),
(112, 23, '_website', 'field_5636dbd402071'),
(113, 23, '_edit_lock', '1451507394:1'),
(114, 25, 'tools', '0'),
(115, 25, '_tools', 'field_5636dadbe5da7'),
(116, 25, 'hours', ''),
(117, 25, '_hours', 'field_5636db960206e'),
(118, 25, 'membership_info', ''),
(119, 25, '_membership_info', 'field_5636dba80206f'),
(120, 25, 'classes', '1st Wednesday of every month @630pm at the Kauai Beer Company on Rice Street in Lihue.\r\n3rd Tuesday of every month @630pm at the Ha coffee bar on Rice Street in Lihue.'),
(121, 25, '_classes', 'field_5636db3677ab6'),
(122, 25, 'address', 'a:3:{s:7:"address";s:45:"4180 Rice Street, Līhuʻe, HI, United States";s:3:"lat";s:10:"21.9710448";s:3:"lng";s:19:"-159.36251600000003";}'),
(123, 25, '_address', 'field_5636db4a77ab7'),
(124, 25, 'videos', '0'),
(125, 25, '_videos', 'field_5636db6977ab8'),
(126, 25, 'contact_info', 'info@kauaimakerspace.org'),
(127, 25, '_contact_info', 'field_5636dbc402070'),
(128, 25, 'website', 'http://kauaimakerspace.org/'),
(129, 25, '_website', 'field_5636dbd402071'),
(130, 26, '_edit_last', '1'),
(131, 27, 'tools', '0'),
(132, 27, '_tools', 'field_5636dadbe5da7'),
(133, 27, 'hours', ''),
(134, 27, '_hours', 'field_5636db960206e'),
(135, 27, 'membership_info', 'Open to students only'),
(136, 27, '_membership_info', 'field_5636dba80206f'),
(137, 27, 'classes', ''),
(138, 27, '_classes', 'field_5636db3677ab6'),
(139, 27, 'address', 'a:3:{s:7:"address";s:48:"1601 Punahou Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3028859";s:3:"lng";s:19:"-157.83221509999998";}'),
(140, 27, '_address', 'field_5636db4a77ab7'),
(141, 27, 'videos', '0'),
(142, 27, '_videos', 'field_5636db6977ab8'),
(143, 27, 'contact_info', ''),
(144, 27, '_contact_info', 'field_5636dbc402070'),
(145, 27, 'website', 'http://www.punahou.edu/news/item/index.aspx?LinkId=3379&ModuleId=40'),
(146, 27, '_website', 'field_5636dbd402071'),
(147, 26, 'tools', '0'),
(148, 26, '_tools', 'field_5636dadbe5da7'),
(149, 26, 'hours', ''),
(150, 26, '_hours', 'field_5636db960206e'),
(151, 26, 'membership_info', 'Open to students only'),
(152, 26, '_membership_info', 'field_5636dba80206f'),
(153, 26, 'classes', ''),
(154, 26, '_classes', 'field_5636db3677ab6'),
(155, 26, 'address', 'a:3:{s:7:"address";s:48:"1601 Punahou Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3028859";s:3:"lng";s:19:"-157.83221509999998";}'),
(156, 26, '_address', 'field_5636db4a77ab7'),
(157, 26, 'videos', '0'),
(158, 26, '_videos', 'field_5636db6977ab8'),
(159, 26, 'contact_info', ''),
(160, 26, '_contact_info', 'field_5636dbc402070'),
(161, 26, 'website', 'http://www.punahou.edu/news/item/index.aspx?LinkId=3379&ModuleId=40'),
(162, 26, '_website', 'field_5636dbd402071'),
(163, 26, '_edit_lock', '1451507520:1'),
(164, 28, '_edit_last', '1'),
(165, 28, '_edit_lock', '1451507499:1'),
(166, 29, 'tools', '0'),
(167, 29, '_tools', 'field_5636dadbe5da7'),
(168, 29, 'hours', ''),
(169, 29, '_hours', 'field_5636db960206e'),
(170, 29, 'membership_info', 'Open'),
(171, 29, '_membership_info', 'field_5636dba80206f'),
(172, 29, 'classes', 'Public meetings on the first Thursday evening of every month from 6-9pm.'),
(173, 29, '_classes', 'field_5636db3677ab6'),
(174, 29, 'address', 'a:3:{s:7:"address";s:49:"200 Waiehu Beach Road, Wailuku, HI, United States";s:3:"lat";s:10:"20.9021599";s:3:"lng";s:12:"-156.4821028";}'),
(175, 29, '_address', 'field_5636db4a77ab7'),
(176, 29, 'videos', '0'),
(177, 29, '_videos', 'field_5636db6977ab8'),
(178, 29, 'contact_info', 'info@mauimakers.com for general queries.\r\nmembership@mauimakers.com for questions about membership\r\nboard@mauimakers.com is for sending messages to the board. Generally not for public rants please.\r\nclasses@mauimakers.com is for contacting our education team about workshops/classes/etc.\r\narduino@mauimakers.com is for contacting the arduino class managers\r\npresident@mauimakers.com to contact the current president of our organization\r\nsecretary@mauimakers.com to contact the current secretary of the corporation\r\ntreasurer@mauimakers.com  to contact the current treasurer of the corporation'),
(179, 29, '_contact_info', 'field_5636dbc402070'),
(180, 29, 'website', 'http://www.mauimakers.com/'),
(181, 29, '_website', 'field_5636dbd402071'),
(182, 28, 'tools', '0'),
(183, 28, '_tools', 'field_5636dadbe5da7'),
(184, 28, 'hours', ''),
(185, 28, '_hours', 'field_5636db960206e'),
(186, 28, 'membership_info', 'Open'),
(187, 28, '_membership_info', 'field_5636dba80206f'),
(188, 28, 'classes', 'Public meetings on the first Thursday evening of every month from 6-9pm.'),
(189, 28, '_classes', 'field_5636db3677ab6'),
(190, 28, 'address', 'a:3:{s:7:"address";s:49:"200 Waiehu Beach Road, Wailuku, HI, United States";s:3:"lat";s:10:"20.9021599";s:3:"lng";s:12:"-156.4821028";}'),
(191, 28, '_address', 'field_5636db4a77ab7'),
(192, 28, 'videos', '0'),
(193, 28, '_videos', 'field_5636db6977ab8'),
(194, 28, 'contact_info', 'info@mauimakers.com for general queries.\r\nmembership@mauimakers.com for questions about membership\r\nboard@mauimakers.com is for sending messages to the board. Generally not for public rants please.\r\nclasses@mauimakers.com is for contacting our education team about workshops/classes/etc.\r\narduino@mauimakers.com is for contacting the arduino class managers\r\npresident@mauimakers.com to contact the current president of our organization\r\nsecretary@mauimakers.com to contact the current secretary of the corporation\r\ntreasurer@mauimakers.com  to contact the current treasurer of the corporation'),
(195, 28, '_contact_info', 'field_5636dbc402070'),
(196, 28, 'website', 'http://www.mauimakers.com/'),
(197, 28, '_website', 'field_5636dbd402071'),
(198, 33, 'tools', '0'),
(199, 33, '_tools', 'field_5636dadbe5da7'),
(200, 33, 'hours', ''),
(201, 33, '_hours', 'field_5636db960206e'),
(202, 33, 'membership_info', 'Open'),
(203, 33, '_membership_info', 'field_5636dba80206f'),
(204, 33, 'classes', 'Public meetings on the first Thursday evening of every month from 6-9pm.'),
(205, 33, '_classes', 'field_5636db3677ab6'),
(206, 33, 'address', 'a:3:{s:7:"address";s:49:"200 Waiehu Beach Road, Wailuku, HI, United States";s:3:"lat";s:10:"20.9021599";s:3:"lng";s:12:"-156.4821028";}'),
(207, 33, '_address', 'field_5636db4a77ab7'),
(208, 33, 'videos', '0'),
(209, 33, '_videos', 'field_5636db6977ab8'),
(210, 33, 'contact_info', 'info@mauimakers.com for general queries.\r\nmembership@mauimakers.com for questions about membership\r\nboard@mauimakers.com is for sending messages to the board. Generally not for public rants please.\r\nclasses@mauimakers.com is for contacting our education team about workshops/classes/etc.\r\narduino@mauimakers.com is for contacting the arduino class managers\r\npresident@mauimakers.com to contact the current president of our organization\r\nsecretary@mauimakers.com to contact the current secretary of the corporation\r\ntreasurer@mauimakers.com  to contact the current treasurer of the corporation'),
(211, 33, '_contact_info', 'field_5636dbc402070'),
(212, 33, 'website', 'http://www.mauimakers.com/'),
(213, 33, '_website', 'field_5636dbd402071'),
(214, 33, 'type', 'a:2:{i:0;s:1:"2";i:1;s:1:"3";}'),
(215, 33, '_type', 'field_56843f6a5c258'),
(216, 28, 'type', 'a:2:{i:0;s:1:"2";i:1;s:1:"3";}'),
(217, 28, '_type', 'field_56843f6a5c258'),
(218, 34, 'tools', '0'),
(219, 34, '_tools', 'field_5636dadbe5da7'),
(220, 34, 'hours', ''),
(221, 34, '_hours', 'field_5636db960206e'),
(222, 34, 'membership_info', 'Open to students only'),
(223, 34, '_membership_info', 'field_5636dba80206f'),
(224, 34, 'classes', ''),
(225, 34, '_classes', 'field_5636db3677ab6'),
(226, 34, 'address', 'a:3:{s:7:"address";s:48:"1601 Punahou Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3028859";s:3:"lng";s:19:"-157.83221509999998";}'),
(227, 34, '_address', 'field_5636db4a77ab7'),
(228, 34, 'videos', '0'),
(229, 34, '_videos', 'field_5636db6977ab8'),
(230, 34, 'contact_info', ''),
(231, 34, '_contact_info', 'field_5636dbc402070'),
(232, 34, 'website', 'http://www.punahou.edu/news/item/index.aspx?LinkId=3379&ModuleId=40'),
(233, 34, '_website', 'field_5636dbd402071'),
(234, 34, 'type', 'a:1:{i:0;s:1:"3";}'),
(235, 34, '_type', 'field_56843f6a5c258'),
(236, 26, 'type', 'a:1:{i:0;s:1:"3";}'),
(237, 26, '_type', 'field_56843f6a5c258'),
(238, 35, 'tools_0_name', 'Makerbot'),
(239, 35, '_tools_0_name', 'field_5636dae6e5da8'),
(240, 35, 'tools_0_count', '3'),
(241, 35, '_tools_0_count', 'field_5636daf3e5da9'),
(242, 35, 'tools_1_name', 'Lazer Cutter'),
(243, 35, '_tools_1_name', 'field_5636dae6e5da8'),
(244, 35, 'tools_1_count', '1'),
(245, 35, '_tools_1_count', 'field_5636daf3e5da9'),
(246, 35, 'tools', '2'),
(247, 35, '_tools', 'field_5636dadbe5da7'),
(248, 35, 'hours', 'M - F: 12pm - 5pm'),
(249, 35, '_hours', 'field_5636db960206e'),
(250, 35, 'membership_info', 'Open to residents only'),
(251, 35, '_membership_info', 'field_5636dba80206f'),
(252, 35, 'classes', ''),
(253, 35, '_classes', 'field_5636db3677ab6'),
(254, 35, 'address', 'a:3:{s:7:"address";s:51:"665 Halekauwila Street, Honolulu, HI, United States";s:3:"lat";s:10:"21.3006152";s:3:"lng";s:19:"-157.85873909999998";}'),
(255, 35, '_address', 'field_5636db4a77ab7'),
(256, 35, 'videos', '0'),
(257, 35, '_videos', 'field_5636db6977ab8'),
(258, 35, 'contact_info', ''),
(259, 35, '_contact_info', 'field_5636dbc402070'),
(260, 35, 'website', ''),
(261, 35, '_website', 'field_5636dbd402071'),
(262, 35, 'type', 'a:1:{i:0;s:1:"4";}'),
(263, 35, '_type', 'field_56843f6a5c258'),
(264, 18, 'type', 'a:1:{i:0;s:1:"4";}'),
(265, 18, '_type', 'field_56843f6a5c258');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-11-01 22:38:08', '2015-11-01 22:38:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-11-01 22:38:08', '2015-11-01 22:38:08', '', 0, 'http://local.makerhawaii.com/?p=1', 0, 'post', '', 1),
(2, 1, '2015-11-01 22:38:08', '2015-11-01 22:38:08', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://local.makerhawaii.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2015-11-01 22:38:08', '2015-11-01 22:38:08', '', 0, 'http://local.makerhawaii.com/?page_id=2', 0, 'page', '', 0),
(5, 1, '2015-11-02 03:39:57', '2015-11-02 03:39:57', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"makerspace";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Makerspace', 'makerspace', 'publish', 'closed', 'closed', '', 'group_5636dad4bcbaf', '', '', '2015-12-30 20:33:23', '2015-12-30 20:33:23', '', 0, 'http://local.makerhawaii.com/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2015-11-02 03:39:57', '2015-11-02 03:39:57', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Tools', 'tools', 'publish', 'closed', 'closed', '', 'field_5636dadbe5da7', '', '', '2015-11-02 03:39:57', '2015-11-02 03:39:57', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=6', 0, 'acf-field', '', 0),
(7, 1, '2015-11-02 03:39:57', '2015-11-02 03:39:57', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Tool Name', 'name', 'publish', 'closed', 'closed', '', 'field_5636dae6e5da8', '', '', '2015-11-02 03:39:57', '2015-11-02 03:39:57', '', 6, 'http://local.makerhawaii.com/?post_type=acf-field&p=7', 0, 'acf-field', '', 0),
(8, 1, '2015-11-02 03:39:57', '2015-11-02 03:39:57', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:16:"Optional number ";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Tool Count', 'count', 'publish', 'closed', 'closed', '', 'field_5636daf3e5da9', '', '', '2015-11-02 03:39:57', '2015-11-02 03:39:57', '', 6, 'http://local.makerhawaii.com/?post_type=acf-field&p=8', 1, 'acf-field', '', 0),
(9, 1, '2015-11-02 03:42:05', '2015-11-02 03:42:05', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Classes', 'classes', 'publish', 'closed', 'closed', '', 'field_5636db3677ab6', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&#038;p=9', 3, 'acf-field', '', 0),
(10, 1, '2015-11-02 03:42:05', '2015-11-02 03:42:05', 'a:9:{s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5636db4a77ab7', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&#038;p=10', 4, 'acf-field', '', 0),
(11, 1, '2015-11-02 03:42:05', '2015-11-02 03:42:05', 'a:9:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Videos', 'videos', 'publish', 'closed', 'closed', '', 'field_5636db6977ab8', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&#038;p=11', 5, 'acf-field', '', 0),
(12, 1, '2015-11-02 03:42:05', '2015-11-02 03:42:05', 'a:7:{s:4:"type";s:6:"oembed";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:5:"width";s:0:"";s:6:"height";s:0:"";}', 'Video', 'video', 'publish', 'closed', 'closed', '', 'field_5636db7577ab9', '', '', '2015-11-02 03:42:05', '2015-11-02 03:42:05', '', 11, 'http://local.makerhawaii.com/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2015-11-02 03:43:25', '2015-11-02 03:43:25', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Hours', 'hours', 'publish', 'closed', 'closed', '', 'field_5636db960206e', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2015-11-02 03:43:25', '2015-11-02 03:43:25', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Membership Info', 'membership_info', 'publish', 'closed', 'closed', '', 'field_5636dba80206f', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=14', 2, 'acf-field', '', 0),
(15, 1, '2015-11-02 03:43:25', '2015-11-02 03:43:25', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Contact info', 'contact_info', 'publish', 'closed', 'closed', '', 'field_5636dbc402070', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=15', 6, 'acf-field', '', 0),
(16, 1, '2015-11-02 03:43:25', '2015-11-02 03:43:25', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Website', 'website', 'publish', 'closed', 'closed', '', 'field_5636dbd402071', '', '', '2015-11-02 03:43:25', '2015-11-02 03:43:25', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=16', 7, 'acf-field', '', 0),
(18, 1, '2015-11-02 05:40:15', '2015-11-02 05:40:15', '', 'Kreation Korner', '', 'publish', 'open', 'open', '', 'kreation-korner', '', '', '2015-12-30 20:35:22', '2015-12-30 20:35:22', '', 0, 'http://local.makerhawaii.com/?post_type=makerspace&#038;p=18', 0, 'makerspace', '', 0),
(19, 1, '2015-11-02 05:40:15', '2015-11-02 05:40:15', '', 'Kreation Korner', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-11-02 05:40:15', '2015-11-02 05:40:15', '', 18, 'http://local.makerhawaii.com/2015/11/02/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-11-05 07:47:52', '0000-00-00 00:00:00', '', 'Hi Capacity', '', 'draft', 'open', 'open', '', '', '', '', '2015-11-05 07:47:52', '2015-11-05 07:47:52', '', 0, 'http://local.makerhawaii.com/?post_type=makerspace&#038;p=20', 0, 'makerspace', '', 0),
(22, 1, '2015-11-28 01:04:15', '2015-11-28 01:04:15', '', 'Kreation Korner', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-11-28 01:04:15', '2015-11-28 01:04:15', '', 18, 'http://local.makerhawaii.com/2015/11/28/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-11-28 01:05:41', '2015-11-28 01:05:41', 'Our goal at the Kauai Makerspace is to create a community powered workspace that fosters creative technological exploration, education, and invention.\r\n\r\nWith a facility of conducive of productivity and education, we can encourage and support the sharing of knowledge within our community by making advanced tools and equipment accessible to all.', 'Kauai Makerspace', '', 'publish', 'open', 'open', '', 'kauai-makerspace', '', '', '2015-11-28 01:06:25', '2015-11-28 01:06:25', '', 0, 'http://local.makerhawaii.com/?post_type=makerspace&#038;p=23', 0, 'makerspace', '', 0),
(24, 1, '2015-11-28 01:05:41', '2015-11-28 01:05:41', '', 'Kauai Makerspace', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2015-11-28 01:05:41', '2015-11-28 01:05:41', '', 23, 'http://local.makerhawaii.com/2015/11/28/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-11-28 01:06:25', '2015-11-28 01:06:25', 'Our goal at the Kauai Makerspace is to create a community powered workspace that fosters creative technological exploration, education, and invention.\r\n\r\nWith a facility of conducive of productivity and education, we can encourage and support the sharing of knowledge within our community by making advanced tools and equipment accessible to all.', 'Kauai Makerspace', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2015-11-28 01:06:25', '2015-11-28 01:06:25', '', 23, 'http://local.makerhawaii.com/2015/11/28/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-11-28 01:08:35', '2015-11-28 01:08:35', '', 'Academy makerspace', '', 'publish', 'open', 'open', '', 'academy-makerspace', '', '', '2015-12-30 20:34:22', '2015-12-30 20:34:22', '', 0, 'http://local.makerhawaii.com/?post_type=makerspace&#038;p=26', 0, 'makerspace', '', 0),
(27, 1, '2015-11-28 01:08:35', '2015-11-28 01:08:35', '', 'Academy makerspace', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-11-28 01:08:35', '2015-11-28 01:08:35', '', 26, 'http://local.makerhawaii.com/2015/11/28/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-11-28 01:11:35', '2015-11-28 01:11:35', '', 'Maui Makers', '', 'publish', 'open', 'open', '', 'maui-makers', '', '', '2015-12-30 20:33:57', '2015-12-30 20:33:57', '', 0, 'http://local.makerhawaii.com/?post_type=makerspace&#038;p=28', 0, 'makerspace', '', 0),
(29, 1, '2015-11-28 01:11:35', '2015-11-28 01:11:35', '', 'Maui Makers', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-11-28 01:11:35', '2015-11-28 01:11:35', '', 28, 'http://local.makerhawaii.com/2015/11/28/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-12-30 20:18:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-12-30 20:18:09', '0000-00-00 00:00:00', '', 0, 'http://local.makerhawaii.com/?p=31', 0, 'post', '', 0),
(32, 1, '2015-12-30 20:33:23', '2015-12-30 20:33:23', 'a:13:{s:4:"type";s:8:"taxonomy";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:15:"Makerspace Type";s:10:"field_type";s:12:"multi_select";s:10:"allow_null";i:1;s:8:"add_term";i:1;s:10:"save_terms";i:0;s:10:"load_terms";i:0;s:13:"return_format";s:2:"id";s:8:"multiple";i:0;}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_56843f6a5c258', '', '', '2015-12-30 20:33:23', '2015-12-30 20:33:23', '', 5, 'http://local.makerhawaii.com/?post_type=acf-field&p=32', 8, 'acf-field', '', 0),
(33, 1, '2015-12-30 20:33:57', '2015-12-30 20:33:57', '', 'Maui Makers', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-12-30 20:33:57', '2015-12-30 20:33:57', '', 28, 'http://local.makerhawaii.com/2015/12/30/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-12-30 20:34:22', '2015-12-30 20:34:22', '', 'Academy makerspace', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-12-30 20:34:22', '2015-12-30 20:34:22', '', 26, 'http://local.makerhawaii.com/2015/12/30/26-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-12-30 20:35:22', '2015-12-30 20:35:22', '', 'Kreation Korner', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-12-30 20:35:22', '2015-12-30 20:35:22', '', 18, 'http://local.makerhawaii.com/2015/12/30/18-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Fab Lab', 'fab-lab', 0),
(3, 'Maker Space', 'makerspace', 0),
(4, 'Hackerspace', 'hackerspace', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'Makerspace Type', '', 0, 0),
(3, 3, 'Makerspace Type', '', 0, 0),
(4, 4, 'Makerspace Type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'russell.vea'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"fe291d9ca7c7cfd8fc5b63fb3441b1a5f720f40d8aef962e9e0f401acc22826e";a:4:{s:10:"expiration";i:1451679488;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451506688;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'russell.vea', '$P$B18w8oAjO0m4x7PT6ZpjHsdtZdOE/80', 'russell-vea', 'russellbvea@gmail.com', '', '2015-11-01 22:38:08', '', 0, 'russell.vea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
