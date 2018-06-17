create table books(
  id int not null auto_increment primary key,
  isbn varchar(20) not null,
  openid varchar(50) not null,
  title varchar(100) not null,
  image varchar(100),
  alt varchar(100) not null,
  publisher varchar(100) not null,
  summary varchar(1000) not null,
  price varchar(100),
  rate float,
  tags varchar(100),
  author varchar(100)
);


DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`isbn` varchar(20) NOT NULL,
`openid` varchar(100) NOT NULL,
`title` varchar(100) NOT NULL,
`image` varchar(100) NOT NULL,
`alt` varchar(100) NOT NULL,
`publisher` varchar(100) NOT NULL,
`summary` varchar(1000) NOT NULL,
`price` varchar(100) DEFAULT NULL,
`rate` float DEFAULT NULL,
`tags` varchar(100) DEFAULT NULL,
`author` varchar(100) DEFAULT NULL,
`count` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`openid` varchar(100) NOT NULL,
`bookid` varchar(100) NOT NULL,
`comment` varchar(200) NOT NULL,
`phone` varchar(20) DEFAULT NULL,
`location` varchar(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

create table comments(
  id int(11) NOT NULL AUTO_INCREMENT primary key,
  openid varchar(100) not null,
  bookid varchar(10) not null,
  comment varchar(200) not null,
  phone varchar(50) ,
  location varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

