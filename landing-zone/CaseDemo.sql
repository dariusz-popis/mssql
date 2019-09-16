--set ansi_nulls on
declare @i int --= 10
select 
  case  @i
    when 1 then 'jeden'
    when 10 then 'dziesieć'
	when null then 'Z pustego i Salomon...'
	--else 'nie mam tego w słowniku'
   end [Case: prostsza składnia]
   ,
   case
    when datepart(SS, getdate())%2=0 then 'Nudy' 
    when @i = 1 then 'jeden'
    when @i = 10 then 'dziesieć'
	else 'nie mam tego w słowniku'
   end [Case: trudniejsza składnia],
   datepart(SS, getdate())

   select 10%3