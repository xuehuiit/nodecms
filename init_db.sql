/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50505
 Source Host           : localhost
 Source Database       : xuehuiitcms

 Target Server Type    : MySQL
 Target Server Version : 50505
 File Encoding         : utf-8

 Date: 06/03/2018 22:50:11 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admaterials`
-- ----------------------------
DROP TABLE IF EXISTS `admaterials`;
CREATE TABLE `admaterials` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `adperiod_id` varchar(50) NOT NULL,
  `cover_id` varchar(50) NOT NULL,
  `weight` bigint(20) NOT NULL,
  `start_at` varchar(10) NOT NULL,
  `end_at` varchar(10) NOT NULL,
  `geo` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `adperiods`
-- ----------------------------
DROP TABLE IF EXISTS `adperiods`;
CREATE TABLE `adperiods` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `adslot_id` varchar(50) NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `start_at` varchar(10) NOT NULL,
  `end_at` varchar(10) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `adslots`
-- ----------------------------
DROP TABLE IF EXISTS `adslots`;
CREATE TABLE `adslots` (
  `id` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` bigint(20) NOT NULL,
  `width` bigint(20) NOT NULL,
  `height` bigint(20) NOT NULL,
  `num_slots` bigint(20) NOT NULL,
  `num_auto_fill` bigint(20) NOT NULL,
  `auto_fill` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_adslot_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `cover_id` varchar(50) NOT NULL,
  `content_id` varchar(50) NOT NULL,
  `views` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `publish_at` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `attachments`
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `resource_id` varchar(50) NOT NULL,
  `size` bigint(20) NOT NULL,
  `width` bigint(20) NOT NULL,
  `height` bigint(20) NOT NULL,
  `mime` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `meta` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `authusers`
-- ----------------------------
DROP TABLE IF EXISTS `authusers`;
CREATE TABLE `authusers` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `auth_provider` varchar(50) NOT NULL,
  `auth_id` varchar(100) NOT NULL,
  `auth_token` varchar(500) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_auth_id` (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `boards`
-- ----------------------------
DROP TABLE IF EXISTS `boards`;
CREATE TABLE `boards` (
  `id` varchar(50) NOT NULL,
  `topics` bigint(20) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `localusers`
-- ----------------------------
DROP TABLE IF EXISTS `localusers`;
CREATE TABLE `localusers` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `navigations`
-- ----------------------------
DROP TABLE IF EXISTS `navigations`;
CREATE TABLE `navigations` (
  `id` varchar(50) NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` varchar(50) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `content_id` varchar(50) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `randoms`
-- ----------------------------
DROP TABLE IF EXISTS `randoms`;
CREATE TABLE `randoms` (
  `id` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL,
  `expires_time` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_rnd_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `replies`
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies` (
  `id` varchar(50) NOT NULL,
  `topic_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `upvotes` bigint(20) NOT NULL,
  `downvotes` bigint(20) NOT NULL,
  `score` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` varchar(50) NOT NULL,
  `ref_id` varchar(50) NOT NULL,
  `value` mediumblob NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` varchar(50) NOT NULL,
  `group` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `texts`
-- ----------------------------
DROP TABLE IF EXISTS `texts`;
CREATE TABLE `texts` (
  `id` varchar(50) NOT NULL,
  `ref_id` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` varchar(50) NOT NULL,
  `board_id` varchar(50) NOT NULL,
  `ref_type` varchar(50) NOT NULL,
  `ref_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `replies` bigint(20) NOT NULL,
  `upvotes` bigint(20) NOT NULL,
  `downvotes` bigint(20) NOT NULL,
  `score` bigint(20) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `role` bigint(20) NOT NULL,
  `locked_until` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wikipages`
-- ----------------------------
DROP TABLE IF EXISTS `wikipages`;
CREATE TABLE `wikipages` (
  `id` varchar(50) NOT NULL,
  `wiki_id` varchar(50) NOT NULL,
  `parent_id` varchar(50) NOT NULL,
  `content_id` varchar(50) NOT NULL,
  `views` bigint(20) NOT NULL,
  `display_order` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wikis`
-- ----------------------------
DROP TABLE IF EXISTS `wikis`;
CREATE TABLE `wikis` (
  `id` varchar(50) NOT NULL,
  `cover_id` varchar(50) NOT NULL,
  `content_id` varchar(50) NOT NULL,
  `views` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
