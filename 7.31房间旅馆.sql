create database RoomDB
use Roomdb

create table RoomType(
ID int IDENTITY(1,1) primary key ,    --���
TypeName nvarchar(50) not null        --��������
)

create table Room(
ID int IDENTITY(1,1) primary key ,                      --���
TypeID int foreign key(ID) references RoomType(ID),     --���ͱ��
Name nvarchar(50) not null,                             --����
Pic nvarchar(200) not null,                             --ͼƬ
Phone nvarchar(20) not null,                            --�绰
Price nvarchar(50) not null,                            --����
Devices nvarchar(100),                                  --��ʩ
Status int not null                                     --״̬
)

select * from RoomType


insert RoomType values ('���˼�')
insert RoomType values ('˫�˼�')
insert RoomType values ('���˼�')

select distinct  * from Room,RoomType
insert Room values (1,'201','1.jpg','2011','188.00','�绰����ˮ��������',1)
insert Room values (2,'202','2.jpg','2012','188.00','�绰����ˮ��������',0)
insert Room values (3,'203','3.jpg','2013','288.00','�绰����ˮ�������ӣ��յ�',0)
