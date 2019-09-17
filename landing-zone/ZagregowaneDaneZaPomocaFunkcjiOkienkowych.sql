select
        p.Name Nazwa
      , p.Color Kolor
      , p.ListPrice Cena
      , max(p.ListPrice) over ()
                    CenaMax
      , min(p.ListPrice) over ()
                    CenaMin
      , max(p.ListPrice) over (partition by p.Color)
                    CenaMaxWKolorze
      , min(p.ListPrice) over (partition by p.Color)
                    CenaMinWKolorze
      , dense_rank() over (partition by p.Color order by p.ListPrice desc)
                    MiejsceWRankingu

   from Production.Product p