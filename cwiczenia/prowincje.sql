-- Celem przetestowania w Management Studio, trzeba usunąć komentarz w linii deklarującej zmienną (następna linia)
--declare @KodKraju nvarchar(3) = 'AU'

;with Prowincje (KodKraju, KodProwincji, NazwaProwincji) 
as (
    select 'AU','NSW','New South Wales'
    union all
    select 'AU','QLD','Queensland'
    union all
    select 'AU','SA','South Australia'
    union all
    select 'AU','TAS','Tasmania'
    union all
    select 'AU','VIC','Victoria'
    union all
    select 'CA','AB','Alberta'
    union all
    select 'CA','BC','British Columbia'
    union all
    select 'CA','MB','Manitoba'
    union all
    select 'CA','NB','Brunswick'
    union all
    select 'CA','ON','Ontario'
    union all
    select 'CA','QC','Quebec'
    union all
    select 'DE','BB','Brandenburg'
    union all
    select 'DE','BY','Bayern'
    union all
    select 'DE','HE','Hessen'
    union all
    select 'DE','HH','Hamburg'
    union all
    select 'DE','NW','Nordrhein-Westfalen'
    union all
    select 'DE','SL','Saarland'
    union all
    select 'FR','17','Charente-Maritime'
    union all
    select 'FR','31','Garonne (Haute)'
    union all
    select 'FR','32','Gers'
    union all
    select 'FR','41','Loir et Cher'
    union all
    select 'FR','45','Loiret'
    union all
    select 'FR','57','Moselle'
    union all
    select 'FR','59','Nord'
    union all
    select 'FR','62','Pas de Calais'
    union all
    select 'FR','75','Seine (Paris)'
    union all
    select 'FR','77','Seine et Marne'
    union all
    select 'FR','78','Yveline'
    union all
    select 'FR','80','Somme'
    union all
    select 'FR','91','Essonne'
    union all
    select 'FR','92','Hauts de Seine'
    union all
    select 'FR','93','Seine Saint Denis'
    union all
    select 'FR','94','Val de Marne'
    union all
    select 'FR','95','Val d''Oise'
    union all
    select 'GB','ENG','England'
    union all
    select 'US','AL','Alabama'
    union all
    select 'US','AZ','Arizona'
    union all
    select 'US','CA','California'
    union all
    select 'US','CO','Colorado'
    union all
    select 'US','CT','Connecticut'
    union all
    select 'US','FL','Florida'
    union all
    select 'US','GA','Georgia'
    union all
    select 'US','ID','Idaho'
    union all
    select 'US','IL','Illinois'
    union all
    select 'US','IN','Indiana'
    union all
    select 'US','KY','Kentucky'
    union all
    select 'US','MA','Massachusetts'
    union all
    select 'US','MD','Maryland'
    union all
    select 'US','ME','Maine'
    union all
    select 'US','MI','Michigan'
    union all
    select 'US','MN','Minnesota'
    union all
    select 'US','MO','Missouri'
    union all
    select 'US','MS','Mississippi'
    union all
    select 'US','MT','Montana'
    union all
    select 'US','NC','North Carolina'
    union all
    select 'US','NH','New Hampshire'
    union all
    select 'US','NM','New Mexico'
    union all
    select 'US','NV','Nevada'
    union all
    select 'US','NY','New York'
    union all
    select 'US','OH','Ohio'
    union all
    select 'US','OR','Oregon'
    union all
    select 'US','RI','Rhode Island'
    union all
    select 'US','SC','South Carolina'
    union all
    select 'US','SD','South Dakota'
    union all
    select 'US','TN','Tennessee'
    union all
    select 'US','TX','Texas'
    union all
    select 'US','UT','Utah'
    union all
    select 'US','VA','Virginia'
    union all
    select 'US','WA','Washington'
    union all
    select 'US','WI','Wisconsin'
    union all
    select 'US','WY','Wyoming'
)
select * 
  from Prowincje
 where KodKraju  = @KodKraju