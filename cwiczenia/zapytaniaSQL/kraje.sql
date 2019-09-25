with Kraje (Kod,Nazwa,LiczbaProwincji)
as (
    select 'AU','Australia',5
    union all
    select 'CA','Canada',6
    union all
    select 'FR','France',17
    union all
    select 'DE','Germany',6
    union all
    select 'GB','United Kingdom',1
    union all
    select 'US','United States',36
)
select * from Kraje