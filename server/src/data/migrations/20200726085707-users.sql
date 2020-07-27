
-- +migrate Up
create table if not exists `users` (
    `userId` int unsigned not null auto_increment primary key,
    `name` varchar(255) not null
);

-- +migrate Down
drop table if exists `users`;