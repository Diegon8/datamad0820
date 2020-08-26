with au_tit as (
select a.au_id as author_id,
	   b.au_lname as last_name,
       b.au_fname as first_name,
       a.title_id as title_id,
       a.royaltyper as royalty_per
from  titleauthor a
left join authors b on a.au_id = b.au_id),

autit_profs as (
select a.author_id,
       a.last_name,
       a.first_name,
       a.royalty_per,
       b.price,
       b.advance,
       b.royalty,
       b.ytd_sales
from au_tit a
left join titles b on a.title_id = b.title_id),

autit_profits as (
select author_id,
       last_name,
       first_name,
       advance * (royalty_per/100) as advance,
       (price*ytd_sales)*(royalty/100)*(royalty_per/100) as rylt_profit
from autit_profs),

solution as (
select author_id,
       last_name,
       first_name,
       (advance + rylt_profit) as profit
from autit_profits)
select author_id,
       last_name,
       first_name,
       sum(profit) as total
from solution
group by author_id, last_name, first_name
order by total desc

       
