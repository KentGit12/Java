DROP TABLE IF EXISTS `app_user`;

CREATE SEQUENCE IF NOT EXISTS app_user_seq START WITH 20;

create table `app_user`
(
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `enabled` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `client`;

CREATE SEQUENCE IF NOT EXISTS client_seq START WITH 20;

create table `client`
(
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO app_user (id, name, password, role, enabled) VALUES (1, 'pyra', '$2a$10$dn6lNXblW6sTchxRZMxzaOviTb9EikgBWk7vD4Sa5ByzMGeM.U9uq', 'ROLE_ADMIN', true);
INSERT INTO app_user (id, name, password, role, enabled) VALUES (2, 'user', '$2a$10$dn6lNXblW6sTchxRZMxzaOviTb9EikgBWk7vD4Sa5ByzMGeM.U9uq', 'ROLE_USER', true);
INSERT INTO app_user (id, name, password, role, enabled) VALUES (3, 'oper', '$2a$10$dn6lNXblW6sTchxRZMxzaOviTb9EikgBWk7vD4Sa5ByzMGeM.U9uq', 'ROLE_OPERATOR', true);