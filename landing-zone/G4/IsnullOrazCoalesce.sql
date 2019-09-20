select    isnull(p.Color,'nieokreślony')
         ,coalesce(p.Class,p.Size,p.Color,'nieokreślony')
  from Production.Product p
