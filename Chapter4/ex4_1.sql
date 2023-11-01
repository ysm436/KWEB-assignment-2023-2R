CREATE TABLE `students` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL,

`admission_year` INT NOT NULL,
`major` VARCHAR(20) NOT NULL,
`individual_id` INT NOT NULL,

`phone_number` VARCHAR(11) NOT NULL,
`address` VARCHAR(100) NOT NULL,
`total_grade` INT NOT NULL DEFAULT 0,
`avg_grade` DOUBLE NOT NULL DEFAULT 0.0,
`is_attending` TINYINT(1) NOT NULL DEFAULT 1,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

