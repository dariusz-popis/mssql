declare @TA table (
  Id int identity(101,1)
, Wartosc int
)
insert @TA (Wartosc) values (1),(2),(3)

declare @TB table (
  Id int identity(201,1)
, Wartosc int
)
insert @TB (Wartosc) values (2),(3),(4)

declare @TC table (
  Id int identity(301,1)
, Wartosc int
)
insert @TC (Wartosc) values (1),(null),(4)

--select 'TA' Zrodlo, * from @TA
-- union all
--select 'TB', * from @TB
-- union all
--select 'TC', * from @TC

select *
  from @TA ta 
  join @TB tb
    on ta.Wartosc = tb.Wartosc
  join @TC tc 
    on tc.Wartosc = tb.Wartosc
