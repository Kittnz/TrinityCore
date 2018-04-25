ALTER TABLE `game_event`
	ADD COLUMN `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `announce`,
	ADD COLUMN `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '21' AFTER `patch_min`;

ALTER TABLE `creature`
	ADD COLUMN `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	ADD COLUMN `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '21' AFTER `patch_min`;
	
ALTER TABLE `creature_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `patch`);

ALTER TABLE `creature_addon`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `auras`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`guid`, `patch`);

ALTER TABLE `creature_equip_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`CreatureID`, `ID`, `patch`);
	
ALTER TABLE `gameobject`
	ADD COLUMN `patch_min` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	ADD COLUMN `patch_max` TINYINT(3) UNSIGNED NOT NULL DEFAULT '21' AFTER `patch_min`;
	
ALTER TABLE `gameobject_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `patch`);

ALTER TABLE `item_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`entry`, `patch`);

ALTER TABLE `quest_template`
	ADD COLUMN `patch` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`ID`, `patch`);

CREATE TABLE IF NOT EXISTS `forbidden_items` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `patch` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AfterOrBefore` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
