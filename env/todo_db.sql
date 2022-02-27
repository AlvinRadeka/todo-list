DROP DATABASE IF EXISTS `todo_db`;
CREATE DATABASE IF NOT EXISTS `todo_db`;

USE `todo_db`;

DROP TABLE IF EXISTS `todo`;
CREATE TABLE IF NOT EXISTS `todo`(
    `id` INT AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `created_by` VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP(6) NOT NULL DEFAULT NOW(6),
    `updated_by` VARCHAR(100) NULL,
    `updated_at` TIMESTAMP(6) NULL,
    `is_deleted` BOOLEAN NOT NULL DEFAULT FALSE,
    `deleted_by` VARCHAR(100) NULL,
    `deleted_at` TIMESTAMP(6) NULL,
  PRIMARY KEY (id)
) ENGINE=INNODB;

DROP TABLE IF EXISTS `todo_history`;
CREATE TABLE IF NOT EXISTS `todo_history`(
    `id` INT AUTO_INCREMENT,
    `todo_id` INT,
    `title` VARCHAR(200) NOT NULL,
    `description` VARCHAR(500) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `created_by` VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP(6) NOT NULL DEFAULT NOW(6),
    `updated_by` VARCHAR(100) NULL,
    `updated_at` TIMESTAMP(6) NULL,
    `is_deleted` BOOLEAN NOT NULL DEFAULT FALSE,
    `deleted_by` VARCHAR(100) NULL,
    `deleted_at` TIMESTAMP(6) NULL,
  PRIMARY KEY (id)
) ENGINE=INNODB;

-- data seed for todo
INSERT INTO `todo` (`id`, `title`, `description`, `status`, `created_by`, `created_at`) VALUES (1, "buy apples", "go buy apples at indomaret", "new", "alvin", "2022-02-25 13:12:23");

UPDATE `todo` SET 
  `title` = "buy mangoes",
  `description` = "go buy mangoes at ranch market",
  `status` = "updated",
  `updated_by` = "alvin",
  `updated_at` = "2022-02-25 14:12:23"
WHERE id = 1;

INSERT INTO `todo_history` (`todo_id`, `title`, `description`, `status`, `created_by`, `created_at`) VALUES (1, "buy mangoes", "go buy mangoes at ranch market", "updated", "alvin", "2022-02-25 14:12:23");
