with cte  as (
  select 1 Nr, cast('*' as varchar(max)) sciezka
  union all
  select Nr+1, sciezka+'-'
    from cte
   where Nr <=100
)
select * from cte