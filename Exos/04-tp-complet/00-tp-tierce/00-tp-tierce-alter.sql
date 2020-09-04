USE horse_races;

ALTER TABLE `Bets`
ADD `race_name` VARCHAR(50) NOT NULL,
ADD `race_date` DATETIME NOT NULL,
ADD `bet_type_name` VARCHAR(20),
ADD CONSTRAINT FK_races_in_bets FOREIGN KEY (`race_name`, `race_date`) REFERENCES `Races`(`race_name`, `race_date`),
ADD CONSTRAINT FK_bet_types_in_bet FOREIGN KEY (`bet_type_name`) REFERENCES `Bet_types`(`bet_type_name`);

ALTER TABLE `Participate`
ADD `race_name` VARCHAR(50) NOT NULL,
ADD `race_date` DATETIME NOT NULL,
ADD `horse_name` VARCHAR(50) NOT NULL,
ADD CONSTRAINT FK_races_in_participate FOREIGN KEY (`race_name`, `race_date`) REFERENCES `Races`(`race_name`, `race_date`),
ADD CONSTRAINT FK_horse_in_participate FOREIGN KEY (`horse_name`) REFERENCES `Horses`(`horse_name`),
ADD CONSTRAINT PK_participate PRIMARY KEY (`race_name`, `race_date`, `horse_name`);

ALTER TABLE `Use`
ADD `bet_id` INT(10) NOT NULL,
ADD `horse_name` VARCHAR(50) NOT NULL,
ADD CONSTRAINT FK_bets_in_use FOREIGN KEY (`bet_id`) REFERENCES `Bets`(`bet_id`),
ADD CONSTRAINT FK_horse_in_use FOREIGN KEY (`horse_name`) REFERENCES `Horses`(`horse_name`),
ADD CONSTRAINT PK_use PRIMARY KEY (`bet_id`, `horse_name`);