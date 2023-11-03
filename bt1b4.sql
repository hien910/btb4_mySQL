-- 1.Lấy danh sách các quốc gia duy nhất.
select distinct(country) FROM Person;

-- 2.Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
select * from Person
order by fullname ASC;

-- 3.Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
select * from Person
order by job DESC;
 
-- 4.Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
select count(*) ,job from Person
group by job
having count(*) =1;

-- 5. tổng số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
select count(*) as total_person, country from Person
group by country
order by total_person DESC;

-- 6.Tính tổng lương (salary) của tất cả người trong bảng.
select  sum(salary) from Person;

-- 7. Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
select job,avg(salary) from Person
group by job;

-- 8.Lấy ra người có lương (salary) lớn hơn 50000 và ngày sinh (birthday) nằm trong khoảng ‘1990-01-01’ đến ‘1995-12-31’.
select * from Person
where salary >50000 and (birthday between '1990-01-01' and '1995-12-31');

-- 9.Lấy ra người có lương (salary) lớn hơn 60000 và nghề nghiệp (job) là ‘Developer’ hoặc ‘Engineer’.
select * from Person
where salary > 60000 and (job ='Developer' or job = 'Engineer');

-- 10. Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm.
select count(*) , job from Person
group by job
having count(*) >=3;

-- 11. Lấy ra người nam (gender = ‘Male’) có lương (salary) cao nhất.
select max(salary), gender from Person
group by gender
having gender = 'M';

-- 12. Lấy ra người nữ (gender = ‘Female’) có lương (salary) thấp nhất.
select min(salary), gender from Person
group by gender
having gender = 'F';

-- 13. Lấy danh sách người (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
select distinct(fullname) from Person
order by fullname ASC; 

-- 14. Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự số lượng tăng dần.
select count(*)as quantity_person  ,(month(birthday)) as birth_month from Person
group by month(birthday)
order by quantity_person ASC;
