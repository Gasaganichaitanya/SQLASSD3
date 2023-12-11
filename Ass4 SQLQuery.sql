create database ExerciseDb1
use ExerciseDb1
create table Products 
(
PId int primary key ,
PQ int not null,
PPrice float not null,
DiscountPercent float not null,
ManufacturingDate date
)
insert into Products values(1,3,40000,0.3,'09/22/2020')
insert into Products values(2,4,65500,0.18,'10/15/2018')
insert into Products values(3,2,80000,0.10,'12/03/2019')
insert into Products values(4,6,30000,0.3,'12/12/2021')
insert into Products values(5,9,55000,0.20,'02/07/2019')
select * from Products

alter function Discountedvalue()
returns table
As
return (select PId,PQ,PPrice,PPrice*PQ*DiscountPercent as 'Discounted Price',(PPrice*PQ)-(PPrice*PQ*DiscountPercent) as 'After Discount Product Price' from Products)

select * from Discountedvalue()