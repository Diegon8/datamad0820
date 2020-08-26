#Query solution challenge1
with tit_pub as (
select tit.title,
       tit.title_id,
       tit.pub_id,
       pub.pub_name as PUBLISHER
from titles tit
left join publishers pub on tit.pub_id = pub.pub_id),

au_titpub as (
select a.au_id as AUTHOR_ID,
       b.au_lname as LAST_NAME,
       b.au_fname as FIRST_NAME,
       c.title as TITLE,
       c.PUBLISHER 
from titleauthor a
left join authors b on a.au_id = b.au_id
left join tit_pub c on a.title_id = c.title_id)

select * from au_titpub
order by AUTHOR_ID

       