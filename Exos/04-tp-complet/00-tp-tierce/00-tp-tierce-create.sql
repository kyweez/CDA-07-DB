DROP DATABASE IF EXISTS horse_races;
CREATE DATABASE horse_races;
USE horse_races;

CREATE TABLE IF NOT EXISTS `Races`
(
	`race_name` VARCHAR(50) NOT NULL,
    `race_date` DATETIME NOT NULL,
    
    CONSTRAINT PK_races PRIMARY KEY (`race_name`, `race_date`)
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Horses`
(
	`horse_name` VARCHAR(50) NOT NULL,
    
    CONSTRAINT PK_horses PRIMARY KEY (`horse_name`)
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Bet_types`
(
	`bet_type_name` VARCHAR(20) NOT NULL,
    `bet_type_value` TINYINT(3) NOT NULL,
    
    CONSTRAINT PK_bet_types PRIMARY KEY (`bet_type_name`)
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Bets`
(
	`bet_id` INT(10) NOT NULL AUTO_INCREMENT,
    `bet_amount` INT(10) NOT NULL,
    
    CONSTRAINT PK_bets PRIMARY KEY (`bet_id`)
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Participate`
(
	`race_horse_number` TINYINT(2) NOT NULL,
    `race_horse_rank` TINYINT(2)
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Use`
(
	`bet_horse_number` TINYINT(2) NOT NULL
)
ENGINE = InnoDB
CHARACTER SET utf8
COLLATE utf8_general_ci;