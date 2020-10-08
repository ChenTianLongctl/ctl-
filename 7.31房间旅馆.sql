create database RoomDB
use Roomdb

create table RoomType(
ID int IDENTITY(1,1) primary key ,    --编号
TypeName nvarchar(50) not null        --类型名称
)

create table Room(
ID int IDENTITY(1,1) primary key ,                      --编号
TypeID int foreign key(ID) references RoomType(ID),     --类型编号
Name nvarchar(50) not null,                             --名称
Pic nvarchar(200) not null,                             --图片
Phone nvarchar(20) not null,                            --电话
Price nvarchar(50) not null,                            --单价
Devices nvarchar(100),                                  --设施
Status int not null                                     --状态
)

select * from RoomType


insert RoomType values ('三人间')
insert RoomType values ('双人间')
insert RoomType values ('单人间')

select distinct  * from Room,RoomType
insert Room values (1,'201','1.jpg','2011','188.00','电话，热水器，电视',1)
insert Room values (2,'202','2.jpg','2012','188.00','电话，热水器，电视',0)
insert Room values (3,'203','3.jpg','2013','288.00','电话，热水器，电视，空调',0)
