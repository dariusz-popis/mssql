select 
       count(p.Color)             IloscKolorow
      ,count(isnull(p.Color,''))  IloscKolorowZFnIsNull
      ,min(isnull(p.Color,' nieokreślony'))
                                  MinColor
      ,max(p.Color)               MaxColor
      ,count(1)                   IloscRekorodow
      ,count(distinct p.Color)    IloscRoznychKolorow
      
  from Production.Product p