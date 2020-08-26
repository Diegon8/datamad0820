#Solution chalenge4
with tit_sal as(
select tit.title_id,
       tit.title,
       sal.qty
from titles tit
left join sales sal on tit.title_id = sal.title_id
order by qty desc),

au_titsal as (
select a.au_id as author_id,
       b.au_lname as last_name,
       b.au_fname as first_name,
       sum(c.qty) as n_sales
from titleauthor a
left join authors b on a.au_id = b.au_id
left join tit_sal c on a.title_id = c.title_id
group by author_id, last_name, first_name
order by n_sales desc)

select * from au_titsal