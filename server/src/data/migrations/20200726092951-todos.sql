
-- +migrate Up
create table if not exists `todos` (
    `todoId` int unsigned not null auto_increment primary key,
    `userId` int unsigned not null,
    `name` varchar(255) not null,
    foreign key(userId) references users(userId) on delete cascade
);

-- +migrate Down
drop table if exists `todos`;