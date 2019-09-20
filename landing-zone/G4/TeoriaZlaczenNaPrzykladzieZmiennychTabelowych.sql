
declare @TA table (
   Nr      int identity(101,1)
 , Wartosc int 
)
insert @TA(Wartosc) values(1),(2),(3)

declare @TB table (
   Nr      int identity(201,1)
 , Wartosc int 
)
insert @TB(Wartosc) values(2),(3),(4)

declare @TC table (
   Nr      int identity(301,1)
 , Wartosc int 
)
insert @TC(Wartosc) values(1),(4)

--select 'TA' Zrodlo,*
--  from @TA ta
--union all
--select 'TB',*
--  from @TB tb
--union all
--select 'TC',*
--  from @TC tc

--select *
--  from @TA ta
-- cross join @TB tbs
  
select *
  from @TA ta
  full join @TB tb
    on ta.Wartosc = tb.Wartosc
  join @TC tc
    on tc.Wartosc = ta.Wartosc
