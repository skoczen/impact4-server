CREATE TABLE  `surveys` (
 `survey_id` INT NOT NULL auto_increment,
 `admin_id` VARCHAR( 255 ) NOT NULL ,
 `password` VARCHAR( 255 ) NOT NULL ,
PRIMARY KEY (  `survey_id` )
) ENGINE = MYISAM COMMENT =  'Table of All surveys';

CREATE TABLE  `users` (
 `user_id` INT NOT NULL auto_increment ,
 `name` VARCHAR( 255 ) NOT NULL ,
 `password` VARCHAR( 255 ) NOT NULL ,
 `institution` BLOB NOT NULL ,
 `email` VARCHAR( 255 ) NOT NULL ,
 `phone` VARCHAR( 40 ) NOT NULL ,
 `username` VARCHAR( 255 ) NOT NULL ,
PRIMARY KEY (  `user_id` ) ,
UNIQUE (
`username`
)
) ENGINE = MYISAM COMMENT =  'Table of users and their contact info';


CREATE TABLE  `auth_levels` (
 `auth_id` INT NOT NULL auto_increment,
 `user_id` INT NOT NULL ,
 `survey_id` INT NOT NULL ,
 `authLevel` SMALLINT NOT NULL ,
PRIMARY KEY (  `auth_id` )
) ENGINE = MYISAM COMMENT =  'Set of authorization values for each survey';