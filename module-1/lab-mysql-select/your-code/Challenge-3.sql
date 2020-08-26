#Solution challenge3
with au_sales as (
select a.au_id as AUTHOR_ID,
       b.au_lname as LAST_NAME,
       b.au_fname as FIRST_NAME,
       sum(c.qty) as N_SALES
from titleauthor a
left join authors b on a.au_id = b.au_id
left join sales c on a.title_id = c.title_id
group by author_id, last_name, first_name
order by n_sales desc)

select * from au_sales
limit 3
       