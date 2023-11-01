CREATE TABLE `users` (
`id` INT NOT NULL AUTO_INCREMENT,
`user_id` VARCHAR(32) NOT NULL,
`password` VARCHAR(100) NOT NULL,
`user_nickname` VARCHAR(32) NOT NULL,
`profile_image` VARCHAR(100) NOT NULL,
`profile_message` VARCHAR(100) NOT NULL,
`is_withdrawn` TINYINT(1) NOT NULL DEFAULT 0,
`join_date` DATETIME NOT NULL,

PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `channels` (
`id` INT NOT NULL AUTO_INCREMENT,
`channel_name` VARCHAR(100) NOT NULL,
`creator` INT NOT NULL,
`channel_link` VARCHAR(100) NOT NULL,
`capacity` INT NOT NULL,
`is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
`create_date` DATETIME NOT NULL,

PRIMARY KEY (`id`),

FOREIGN KEY (`creator`)
REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chats` (
`id` INT NOT NULL AUTO_INCREMENT,
`message` TEXT NOT NULL,
`creator` INT NOT NULL,
`channel` INT NOT NULL,
`create_date` DATETIME NOT NULL,

PRIMARY KEY (`id`),

FOREIGN KEY (`creator`)
REFERENCES`users`(`id`) ON DELETE CASCADE,

FOREIGN KEY (`channel`)
REFERENCES `channels`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `follows` (
`id` INT NOT NULL AUTO_INCREMENT,
`follower` INT NOT NULL,
`followee` INT NOT NULL,
`create_date` DATETIME NOT NULL,

PRIMARY KEY (`id`),

FOREIGN KEY (`follower`) 
REFERENCES `users`(`id`) ON DELETE CASCADE,

FOREIGN KEY (`followee`)
REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blocks` (
`id` INT NOT NULL AUTO_INCREMENT,
`blocked_by` INT NOT NULL,
`blocked_user` INT NOT NULL,
`create_date` DATETIME NOT NULL,

PRIMARY KEY (`id`),

FOREIGN KEY (`blocked_by`)
REFERENCES `users`(`id`) ON DELETE CASCADE,

FOREIGN KEY (`blocked_user`)
REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;