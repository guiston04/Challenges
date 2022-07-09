
--Kata 1--

SELECT date(events.created_at) as "day",events.description, count(*) FROM events 
where events.name = 'trained'
group by events.description, "day"
order by "day"

--Kata 2--

SELECT capital FROM countries
where continent in ('Africa','Afrika') and substring(country,1,1)='E'
order by capital
LIMIT 3

--Kata 3--

SELECT 
  DATE(s.transaction_date) as "day",
  d.name as department,
  COUNT(s.id) as sale_count
  FROM department d
    JOIN sale s on d.id = s.department_id
  group by "day", department
  order by "day" asc