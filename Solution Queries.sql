--select * from hotel
--where city = 'London'
--order by hotelname desc;
-----
--select * from hotel
--where hotelname like '__t%';
---------
--select * from booking
--where dateto is null;
-----
--select guestname, guestaddress from guest
--where guestaddress like '%Glasgow%'
--And (guestname like 'Tony%' OR guestname like '% Farrel');
------
--select roomno, hotelno from booking
--where year(dateto) between 2005 AND 2010
--or year(datefrom) between 2005 AND 2010;
-----------
--select roomno, type, price from room
--where roomno = 1001 and type= 'single' and price between 20 AND 40;
-----------------
--select hotelno, roomno from room
--where price = (select max(price) from room);
-----------
--select 'The Hotel whose id is ' + hotelno + ' is in ' + city + ' and its name is ' + hotelname + '.' as hotel_info
--from hotel;
--select concat('The Hotel whose id is ' , hotelno , ' is in ' , city , ' and its name is ' , hotelname , '.') as hotel_info
--from hotel;
-------------------
--select h.hotelname, h.hotelno from hotel as h
--inner join room r1 on h.hotelno = r1.hotelno
--inner join room r2 on h.hotelno = r2.hotelno
--where r1.type = 'double' and r2.type = 'family';
--------------
--select h.hotelname, h.hotelno from hotel as h
--inner join room r1 on h.hotelno = r1.hotelno and r1.type = 'single'
--inner join room r2 on h.hotelno = r2.hotelno and r2.type = 'double'
--left join room r3 on h.hotelno = r3.hotelno and r3.type = 'family'
--where r3.type is null;
--------------
select r.roomno, r.hotelno, b.guestno from room as r
inner join booking as b on r.roomno = b.roomno
where (b.guestno = 1003 or b.guestno = 10007) and b.guestno != 10001; 
