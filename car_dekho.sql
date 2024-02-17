create schema cars;
use  cars;
--- READ DATA---
select * from cars.car dekho;
SELECT * FROM cars.`car dekho`;
select * from cars.car_dekho;

--- total cars: to get total count of cars---
select count(*) from car_dekho;
--- the manager asked the employee howmany cars will be there in 2023? ---
select count(*) from car_dekho where year = 2023;
--- the manager asked employee howmany cars will be availabe in 2020 , 2021 , 2022?---
select count(*) from car_dekho where year in (2020 , 2021, 2022) group by year ;
--- client asked to show all total of car data by year---
select year, count(*) from car_dekho group by year;
--- client asked to car dealer howmany diesel cars will be there in 2020?---
select count(*) from car_dekho where year = 2020 and fuel ="Diesel";
--- client  asked to car dealer howmany petrol cars will be there in 2020?---
select count(*) from car_dekho where year = 2020 and fuel ="petrol";
--- the manager told to employee to give print of all fuel cars (petrol, diesel, CNG) come by all years---
select year, count(*) from car_dekho where fuel = 'petrol' group by year;
select year, count(*) from car_dekho where fuel = 'diesel' group by year;
select year, count(*) from car_dekho where fuel = 'CNG' group by year;
--- manager said there were more than 100 cars in given year , which year had more than 100 cars?---
 select year , count(*) from car_dekho group by year having count(*)> 100; 
 select year , count(*) from car_dekho group by year having count(*)< 50;
 --- the manager said to employee all cars count details between 2015 to 2023?---
 select count(*) from car_dekho group by year between 2015 and 2023;
 --- exit---
 
 



