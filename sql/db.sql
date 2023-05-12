-- auto-generated definition
create table user
(
    id           bigint auto_increment comment '用户id
'
        primary key,
    username     varchar(256)                        null comment '用户名称',
    userAccount  varchar(256)                        null comment '用户账号',
    avatarUrl    varchar(1024)                       null comment '用户头像
',
    gender       tinyint                             null comment '性别 ',
    userPassword varchar(512)                        null comment '用户密码',
    phone        varchar(128)                        null comment '用户电话',
    email        varchar(512)                        null comment '用户邮箱
',
    userStatus   int       default 0                 not null comment '用户状态 ',
    createTime   datetime  default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间
',
    isDelete     tinyint   default 0                 not null comment '是否删除 0 1（逻辑删除）',
    userRole     int       default 0                 not null comment '普通用户-0 管理员 - 1 ',
    planetCode   varchar(512)                        null comment '星球编号'
)
    comment '用户';

