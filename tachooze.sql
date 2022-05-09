DROP DATABASE `tachooze`;
CREATE DATABASE `tachooze`;

USE `tachooze`;

DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `aboutMe` VARCHAR(550) NOT NULL,
  `image` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `styles`;
CREATE TABLE `styles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tattoos`;
CREATE TABLE `tattoos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `style_id` INT NOT NULL,
  `size_id` INT NOT NULL,
  `position_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  `image` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`style_id`) REFERENCES styles(`id`),
  FOREIGN KEY (`size_id`) REFERENCES sizes(`id`),
  FOREIGN KEY (`position_id`) REFERENCES positions(`id`),
  FOREIGN KEY (`artist_id`) REFERENCES artists(`id`)
);

DROP TABLE IF EXISTS `artistStyles`;
CREATE TABLE `artistStyles` (
  `artist_id` INT NOT NULL,
  `style_id` INT NOT NULL,
  FOREIGN KEY (`artist_id`) REFERENCES artists(`id`),
  FOREIGN KEY (`style_id`) REFERENCES styles(`id`)
);

DROP TABLE IF EXISTS `artistTattoos`;
CREATE TABLE `artistTattoos` (
  `artist_id` INT NOT NULL,
  `tattoo_id` INT NOT NULL,
  FOREIGN KEY (`artist_id`) REFERENCES artists(`id`),
  FOREIGN KEY (`tattoo_id`) REFERENCES tattoos(`id`)
);

INSERT INTO `styles`(`name`) VALUES
('Biomechanical'),
('Celtic'),
('Geometric'),
('New School');

INSERT INTO `sizes`(`name`) VALUES
('Full Sleeve'),
('Half Sleeve'),
('Large'), 
('Medium'),
('Small');

INSERT INTO `positions`(`name`) VALUES
('Ankle'),
('Arm'),
('Back'),
('Calf'),
('Chest'),
('Elbow'),
('Foot'),
('Hand'),
('Shoulder'),
('Stomach'),
('Thigh'),
('Wrist');

INSERT INTO `artists`(`name`, `aboutMe`, `image`) VALUES
('Alexander', "Hello, I'm Alex. I've been tattooing for about 2 years and I love it. No request is too dull!", 'alexander.jpg'),
('Jason', "Tattoos at the beginning a hobby, but it became my fulltime job.", 'jason.jpg'),
('Jenna', "Tattoos are about your the expresion of your idenity and personality.", 'jenna.jpg'),
('Meg', "I've been a tattoo artist for 6 years and since 4 years I have my own studio. I do different styles, but my specialty is biomechanical.", 'meg.jpg'),
('Russo', "Being a tattoo artist is a hobby of mine. I plan on doing it fulltime by fall.", 'russo.jpg'),
('Wayne', "Tattoos were used by the ancient people to express manhood, conquest, the hunt and other accomplishments.", 'wayne.jpg');

INSERT INTO `tattoos`(`style_id`, `size_id`, `position_id`,`artist_id`, `image`) VALUES
(1, 1, 9, 3, 'biomechanical-full-sleeve-shoulder.png'),
(1, 2, 9, 6, 'biomechanical-half-sleeve-shoulder.png'),
(1, 2, 9, 6, 'biomechanical-half-sleeve-shoulder-02.png'),
(1, 3, 4, 3, 'biomechanical-large-calf.png'),
(1, 4, 2, 6, 'biomechanical-medium-arm.jpg'),
(1, 5, 1, 4, 'biomechanical-small-ankle.png'),
(2, 1, 9, 2, 'celtic-full-sleeve-shoulder.png'),
(2, 2, 9, 2, 'celtic-half-sleeve-shoulder.png'),
(2, 3, 9, 2, 'celtic-large-shoulder.jpg'),
(2, 4, 5, 4, 'celtic-medium-chest.jpg'),
(2, 4, 9, 4, 'celtic-medium-shoulder.png'),
(2, 5, 1, 2, 'celtic-small-ankle.png'),
(3, 3, 3, 1, 'geometric-large-back.jpg'),
(3, 3, 7, 3, 'geometric-large-foot.png'),
(3, 4, 6, 5, 'geometric-medium-elbow.jpg'),
(3, 4, 11, 5, 'geometric-medium-thigh.png'),
(3, 5, 8, 1, 'geometric-small-hand.jpg'),
(3, 5, 8, 3, 'geometric-small-hand-02.jpg'),
(3, 5, 10, 5, 'geometric-small-stomach.jpg'),
(3, 5, 12, 5, 'geometric-small-wrist.png'),
(4, 3, 5, 2, 'new-school-large-chest.png'),
(4, 3, 10, 1, 'new-school-large-stomach.jpg'),
(4, 4, 9, 4, 'new-school-medium-shoulder.jpg'),
(4, 4, 3, 4, 'new-school-medium-back.jpg'),
(4, 4, 12, 6, 'new-school-medium-wrist.png'),
(4, 5, 1, 1, 'new-school-small-ankle.png');

INSERT INTO `artistStyles`(`artist_id`, `style_id`) VALUES
(1,3),
(1,4),
(2,2),
(2,4),
(3,1),
(3,3),
(4,1),
(4,2),
(4,4),
(5,3),
(6,1),
(6,4);

INSERT INTO `artistTattoos`(`artist_id`, `tattoo_id`) VALUES
(1,13),
(1,17),
(1,22),
(1,26),
(2,7),
(2,8),
(2,9),
(2,12),
(2,21),
(3,1),
(3,4),
(3,14),
(3,18),
(4,6),
(4,10),
(4,11),
(4,23),
(4,24),
(5,15),
(5,16),
(5,19),
(5,20),
(6,2),
(6,3),
(6,5),
(6,25);