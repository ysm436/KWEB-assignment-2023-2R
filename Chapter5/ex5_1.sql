SELECT `id`, `c3`, `c5` FROM `crud` WHERE `c1` = 11 AND `c2` = 2;
SELECT * FROM `crud` WHERE `c1` > 18 OR `c2` < 2;
INSERT INTO `crud` (`c1`, `c2`, `c3`, `c5`) VALUES (7,4,"col101",0);
INSERT INTO `crud` (`id`, `c1`, `c2`, `c3`, `c5`) VALUES (103, 3, 3,"col103",0);
SELECT * FROM `crud` WHERE `id` > 100;
UPDATE `crud` SET `c3` = "col0", `c5` = 0 WHERE `c1` > 4 AND `c1` < 9 AND `c2` = 1;
SELECT * FROM `crud` WHERE `c1` > 4 AND `c1` < 9 AND `c2` = 1;
DELETE FROM `crud` WHERE `c5` = 0;
SELECT * FROM `crud` WHERE `c5` = 0;