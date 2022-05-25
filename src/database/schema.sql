DROP TABLE IF EXISTS `folders`;
CREATE TABLE `folders` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `folder_id` bigint(20) unsigned  NULL,
    `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
    `size` decimal(10,2) COLLATE utf8_unicode_ci NOT NULL,
    `location` text COLLATE utf8_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NOW(),
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `folders_folder_id_foreign` (`folder_id`),
    CONSTRAINT `folder_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`)
);

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
     `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
     `folder_id` bigint(20) unsigned  NULL,
     `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
     `extension` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
     `size` decimal(10,2) COLLATE utf8_unicode_ci NOT NULL,
     `location` text COLLATE utf8_unicode_ci NOT NULL,
     `created_at` timestamp NULL DEFAULT NOW(),
     `deleted_at` timestamp NULL DEFAULT NULL,
     PRIMARY KEY (`id`),
     KEY `files_folder_id_foreign` (`folder_id`),
     CONSTRAINT `files_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`)
);