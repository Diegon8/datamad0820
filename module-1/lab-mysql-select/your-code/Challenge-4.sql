with a as(
select a.au_id as author_id,
       b.au_lname as last_name,
       b.au_fname as first_name,
       sum(c.ytd_sales) as n_sales
from titleauthor a
left join authors b on a.au_id = b.au_id
left join titles c on a.title_id = c.title_id
group by author_id, last_name, first_name
order by n_sales desc),

solution as (
select a.au_id as author_id,
       a.au_lname as last_name,
       a.au_fname as first_name,
       ifnull(b.n_sales, 0)  as n_sales
from authors a 
left join a b on a.au_id = b.author_id)

select * from solution
order by n_sales desc
