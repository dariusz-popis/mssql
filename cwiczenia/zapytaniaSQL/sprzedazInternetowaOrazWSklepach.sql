with cte(Kategoria,Podkategoria,Produkt,Rozmiar,Kolor,WartoscInternet,WartoscSklepy) 
as(
select 'Accessories','Bike Racks','Hitch Rack - 4-Bike',null,'NA','18420480.00','64857459.168'
union all
select 'Accessories','Bike Stands','All-Purpose Bike Stand',null,'NA','39591.00',null
union all
select 'Accessories','Bottles and Cages','Mountain Bottle Cage',null,'NA','20229.75',null
union all
select 'Accessories','Bottles and Cages','Road Bottle Cage',null,'NA','15390.88',null
union all
select 'Accessories','Bottles and Cages','Water Bottle - 30 oz.',null,'NA','9402836.64','31730705.6784'
union all
select 'Accessories','Cleaners','Bike Wash - Dissolver',null,'NA','3024593.40','10159042.23'
union all
select 'Accessories','Fenders','Fender Set - Mountain',null,'NA','46619.58',null
union all
select 'Accessories','Helmets','Sport-100 Helmet, Black',null,'Black','27795531.15','91680674.4257'
union all
select 'Accessories','Helmets','Sport-100 Helmet, Blue',null,'Blue','28105717.50','93389925.7201'
union all
select 'Accessories','Helmets','Sport-100 Helmet, Red',null,'Red','26217307.20','87742210.2147'
union all
select 'Accessories','Hydration Packs','Hydration Pack - 70 oz.','70','Silver','13744915.47','48025242.6505'
union all
select 'Accessories','Lights','Headlights - Dual-Beam',null,'NA',null,null
union all
select 'Accessories','Lights','Headlights - Weatherproof',null,'NA',null,null
union all
select 'Accessories','Lights','Taillights - Battery-Powered',null,'NA',null,null
union all
select 'Accessories','Locks','Cable Lock',null,'NA',null,'16225.22'
union all
select 'Accessories','Panniers','Touring-Panniers, Large',null,'Grey',null,null
union all
select 'Accessories','Pumps','Minipump',null,'NA',null,'13514.6873'
union all
select 'Accessories','Pumps','Mountain Pump',null,'NA',null,null
union all
select 'Accessories','Tires and Tubes','HL Mountain Tire',null,'NA','48860.00',null
union all
select 'Accessories','Tires and Tubes','HL Road Tire',null,'NA','27970.80',null
union all
select 'Accessories','Tires and Tubes','LL Mountain Tire',null,'NA','21541.38',null
union all
select 'Accessories','Tires and Tubes','LL Road Tire',null,'NA','22435.56',null
union all
select 'Accessories','Tires and Tubes','ML Mountain Tire',null,'NA','34818.39',null
union all
select 'Accessories','Tires and Tubes','ML Road Tire',null,'NA','23140.74',null
union all
select 'Accessories','Tires and Tubes','Mountain Tire Tube',null,'NA','15444.05',null
union all
select 'Accessories','Tires and Tubes','Patch Kit/8 Patches',null,'NA','1191104.57','2952337.4516'
union all
select 'Accessories','Tires and Tubes','Road Tire Tube',null,'NA','9480.24',null
union all
select 'Accessories','Tires and Tubes','Touring Tire',null,'NA','27105.65',null
union all
select 'Accessories','Tires and Tubes','Touring Tire Tube',null,'NA','7425.12',null
union all
select 'Bikes','Mountain Bikes','Mountain-100 Black, 38','38','Black','30594284.35','57556514.4952'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Black, 42','42','Black','27793042.65','49628168.217'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Black, 44','44','Black','36854890.80','69801178.698'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Black, 48','48','Black','35781643.98','59388391.2513'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Silver, 38','38','Silver','36087493.86','63490818.298'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Silver, 42','42','Silver','25561124.82','43835201.361'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Silver, 44','44','Silver','30654309.84','51479931.6745'
union all
select 'Bikes','Mountain Bikes','Mountain-100 Silver, 48','48','Silver','20563139.52','32301265.0032'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Black, 38','38','Black','428863632.9916','924212609.7772'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Black, 42','42','Black','361345273.0446','803393864.7935'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Black, 46','46','Black','298453039.435','606289118.1498'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Silver, 38','38','Silver','314967971.7216','702756013.6052'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Silver, 42','42','Silver','283256857.0944','591560477.2112'
union all
select 'Bikes','Mountain Bikes','Mountain-200 Silver, 46','46','Silver','286538979.9384','598492103.6352'
union all
select 'Bikes','Mountain Bikes','Mountain-300 Black, 38','38','Black',null,'442477.087'
union all
select 'Bikes','Mountain Bikes','Mountain-300 Black, 40','40','Black',null,'501648.8751'
union all
select 'Bikes','Mountain Bikes','Mountain-300 Black, 44','44','Black',null,'484051.518'
union all
select 'Bikes','Mountain Bikes','Mountain-300 Black, 48','48','Black',null,'479071.9001'
union all
select 'Bikes','Mountain Bikes','Mountain-400-W Silver, 38','38','Silver','11957874.60','18927607.224'
union all
select 'Bikes','Mountain Bikes','Mountain-400-W Silver, 40','40','Silver','17039586.56','28826764.8896'
union all
select 'Bikes','Mountain Bikes','Mountain-400-W Silver, 42','42','Silver','10124949.42','15246982.656'
union all
select 'Bikes','Mountain Bikes','Mountain-400-W Silver, 46','46','Silver','10725151.62','16719810.5274'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Black, 40','40','Black','2643791.04','3639100.608'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Black, 42','42','Black','3863088.46','5381864.334'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Black, 44','44','Black','4228121.70','5487162.384'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Black, 48','48','Black','5322141.44','7130459.952'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Black, 52','52','Black','2324656.95','3068547.174'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Silver, 40','40','Silver','4474720.80','5384919.69'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Silver, 42','42','Silver','4474720.80','5217117.66'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Silver, 44','44','Silver','3437399.16','3918635.0424'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Silver, 48','48','Silver','5028411.00','5732388.54'
union all
select 'Bikes','Mountain Bikes','Mountain-500 Silver, 52','52','Silver','5098469.76','6440343.6096'
union all
select 'Bikes','Road Bikes','Road-150 Red, 44','44','Red','77423027.99','94114226.232'
union all
select 'Bikes','Road Bikes','Road-150 Red, 48','48','Red','86823143.28','112870086.264'
union all
select 'Bikes','Road Bikes','Road-150 Red, 52','52','Red','82128453.04','101147673.744'
union all
select 'Bikes','Road Bikes','Road-150 Red, 56','56','Red','190006137.00','233707548.51'
union all
select 'Bikes','Road Bikes','Road-150 Red, 62','62','Red','161108028.48','190444117.248'
union all
select 'Bikes','Road Bikes','Road-250 Black, 44','44','Black','136357865.9625','255487141.7496'
union all
select 'Bikes','Road Bikes','Road-250 Black, 48','48','Black','142851679.425','246587442.4409'
union all
select 'Bikes','Road Bikes','Road-250 Black, 52','52','Black','127866090.30','204430905.90'
union all
select 'Bikes','Road Bikes','Road-250 Black, 58','58','Black','67170483.90','119512067.22'
union all
select 'Bikes','Road Bikes','Road-250 Red, 44','44','Red','77405328.00','157864331.376'
union all
select 'Bikes','Road Bikes','Road-250 Red, 48','48','Red','84706057.80','153520784.163'
union all
select 'Bikes','Road Bikes','Road-250 Red, 52','52','Red','58818764.55','98659540.98'
union all
select 'Bikes','Road Bikes','Road-250 Red, 58','58','Red','77385781.20','135566342.73'
union all
select 'Bikes','Road Bikes','Road-350-W Yellow, 40','40','Yellow','136831037.58','304733642.055'
union all
select 'Bikes','Road Bikes','Road-350-W Yellow, 42','42','Yellow','87941183.00','169278422.8605'
union all
select 'Bikes','Road Bikes','Road-350-W Yellow, 44','44','Yellow','42620005.44','70543457.28'
union all
select 'Bikes','Road Bikes','Road-350-W Yellow, 48','48','Yellow','131806313.12','320218899.5104'
union all
select 'Bikes','Road Bikes','Road-450 Red, 44','44','Red',null,'302678.724'
union all
select 'Bikes','Road Bikes','Road-450 Red, 48','48','Red',null,'136467.864'
union all
select 'Bikes','Road Bikes','Road-450 Red, 52','52','Red',null,'621103.74'
union all
select 'Bikes','Road Bikes','Road-450 Red, 58','58','Red',null,'507978.2959'
union all
select 'Bikes','Road Bikes','Road-450 Red, 60','60','Red',null,'306177.90'
union all
select 'Bikes','Road Bikes','Road-550-W Yellow, 38','38','Yellow','67683678.66','126487885.725'
union all
select 'Bikes','Road Bikes','Road-550-W Yellow, 40','40','Yellow','59720876.4575','102784664.5313'
union all
select 'Bikes','Road Bikes','Road-550-W Yellow, 42','42','Yellow','56035104.6375','90468466.6455'
union all
select 'Bikes','Road Bikes','Road-550-W Yellow, 44','44','Yellow','31691659.0375','57689548.14'
union all
select 'Bikes','Road Bikes','Road-550-W Yellow, 48','48','Yellow','68074089.39','125221675.1391'
union all
select 'Bikes','Road Bikes','Road-650 Black, 44','44','Black','9554435.4276','16624579.419'
union all
select 'Bikes','Road Bikes','Road-650 Black, 48','48','Black','5763421.5836','9424604.46'
union all
select 'Bikes','Road Bikes','Road-650 Black, 52','52','Black','21326382.3978','47739362.9801'
union all
select 'Bikes','Road Bikes','Road-650 Black, 58','58','Black','17926108.568','37482799.1698'
union all
select 'Bikes','Road Bikes','Road-650 Black, 60','60','Black','11532659.6456','19631371.8244'
union all
select 'Bikes','Road Bikes','Road-650 Black, 62','62','Black','6048765.5056','9776178.133'
union all
select 'Bikes','Road Bikes','Road-650 Red, 44','44','Red','17660619.006','35878549.884'
union all
select 'Bikes','Road Bikes','Road-650 Red, 48','48','Red','20425356.6972','41799275.9994'
union all
select 'Bikes','Road Bikes','Road-650 Red, 52','52','Red','9303822.702','16742988.182'
union all
select 'Bikes','Road Bikes','Road-650 Red, 58','58','Red','6723786.785','11250811.1887'
union all
select 'Bikes','Road Bikes','Road-650 Red, 60','60','Red','13240612.511','29323130.2862'
union all
select 'Bikes','Road Bikes','Road-650 Red, 62','62','Red','17900158.05','37820576.0144'
union all
select 'Bikes','Road Bikes','Road-750 Black, 44','44','Black','20606018.40','34524800.64'
union all
select 'Bikes','Road Bikes','Road-750 Black, 48','48','Black','63117271.14','138723333.309'
union all
select 'Bikes','Road Bikes','Road-750 Black, 52','52','Black','64615203.40','118591075.869'
union all
select 'Bikes','Road Bikes','Road-750 Black, 58','58','Black','36612401.98','60383409.768'
union all
select 'Bikes','Touring Bikes','Touring-1000 Blue, 46','46','Blue','111824803.35','206200253.4087'
union all
select 'Bikes','Touring Bikes','Touring-1000 Blue, 50','50','Blue','66515553.00','107068583.70'
union all
select 'Bikes','Touring Bikes','Touring-1000 Blue, 54','54','Blue','44629790.40','57904292.16'
union all
select 'Bikes','Touring Bikes','Touring-1000 Blue, 60','60','Blue','102333820.68','201505280.9868'
union all
select 'Bikes','Touring Bikes','Touring-1000 Yellow, 46','46','Yellow','109896090.72','174805806.6568'
union all
select 'Bikes','Touring Bikes','Touring-1000 Yellow, 50','50','Yellow','68758962.87','93800185.1592'
union all
select 'Bikes','Touring Bikes','Touring-1000 Yellow, 54','54','Yellow','42565185.78','45895064.0304'
union all
select 'Bikes','Touring Bikes','Touring-1000 Yellow, 60','60','Yellow','97794551.40','165810862.182'
union all
select 'Bikes','Touring Bikes','Touring-2000 Blue, 46','46','Blue','21918323.70','31139621.7257'
union all
select 'Bikes','Touring Bikes','Touring-2000 Blue, 50','50','Blue','11847217.20','16689123.36'
union all
select 'Bikes','Touring Bikes','Touring-2000 Blue, 54','54','Blue','31216785.60','58554778.6824'
union all
select 'Bikes','Touring Bikes','Touring-2000 Blue, 60','60','Blue','26076755.25','43522990.1379'
union all
select 'Bikes','Touring Bikes','Touring-3000 Blue, 44','44','Blue','4091833.20','4983085.6626'
union all
select 'Bikes','Touring Bikes','Touring-3000 Blue, 50','50','Blue','9193262.40','15021537.8448'
union all
select 'Bikes','Touring Bikes','Touring-3000 Blue, 54','54','Blue','9227410.50','13708522.8115'
union all
select 'Bikes','Touring Bikes','Touring-3000 Blue, 58','58','Blue','7701138.90','9612036.939'
union all
select 'Bikes','Touring Bikes','Touring-3000 Blue, 62','62','Blue','4418467.20','5617510.9632'
union all
select 'Bikes','Touring Bikes','Touring-3000 Yellow, 44','44','Yellow','11343850.35','18545071.1659'
union all
select 'Bikes','Touring Bikes','Touring-3000 Yellow, 50','50','Yellow','9679501.65','14628968.1611'
union all
select 'Bikes','Touring Bikes','Touring-3000 Yellow, 54','54','Yellow','6378271.20','7736504.496'
union all
select 'Bikes','Touring Bikes','Touring-3000 Yellow, 58','58','Yellow','3907730.40','4512381.9314'
union all
select 'Bikes','Touring Bikes','Touring-3000 Yellow, 62','62','Yellow','9984607.50','15721510.635'
union all
select 'Clothing','Bib-Shorts','Men''s Bib-Shorts, L','L','Multi',null,'34178.202'
union all
select 'Clothing','Bib-Shorts','Men''s Bib-Shorts, M','M','Multi',null,'85581.1112'
union all
select 'Clothing','Bib-Shorts','Men''s Bib-Shorts, S','S','Multi',null,'46980.3954'
union all
select 'Clothing','Caps','AWC Logo Cap',null,'Multi','9056526.00','32344469.443'
union all
select 'Clothing','Gloves','Full-Finger Gloves, L','L','Black',null,'69622.199'
union all
select 'Clothing','Gloves','Full-Finger Gloves, M','M','Black',null,'47987.9352'
union all
select 'Clothing','Gloves','Full-Finger Gloves, S','S','Black',null,'11237.442'
union all
select 'Clothing','Gloves','Half-Finger Gloves, L','L','Black','1442926.31','3482990.7561'
union all
select 'Clothing','Gloves','Half-Finger Gloves, M','M','Black','4032768.30','13714357.3669'
union all
select 'Clothing','Gloves','Half-Finger Gloves, S','S','Black','2951926.64','8401588.5533'
union all
select 'Clothing','Jerseys','Long-Sleeve Logo Jersey, L','L','Multi','10190561.48','36974998.5636'
union all
select 'Clothing','Jerseys','Long-Sleeve Logo Jersey, M','M','Multi','6871725.38','19959986.8394'
union all
select 'Clothing','Jerseys','Long-Sleeve Logo Jersey, S','S','Multi','21445.71',null
union all
select 'Clothing','Jerseys','Long-Sleeve Logo Jersey, XL','XL','Multi','4191111.61','12304345.7946'
union all
select 'Clothing','Jerseys','Short-Sleeve Classic Jersey, L','L','Yellow','8702864.06','29276891.0302'
union all
select 'Clothing','Jerseys','Short-Sleeve Classic Jersey, M','M','Yellow','21973.93',null
union all
select 'Clothing','Jerseys','Short-Sleeve Classic Jersey, S','S','Yellow','6817101.34','20172570.0792'
union all
select 'Clothing','Jerseys','Short-Sleeve Classic Jersey, XL','XL','Yellow','10930545.45','43789037.1445'
union all
select 'Clothing','Shorts','Men''s Sports Shorts, L','L','Black',null,'16017.33'
union all
select 'Clothing','Shorts','Men''s Sports Shorts, M','M','Black',null,'45516.2968'
union all
select 'Clothing','Shorts','Men''s Sports Shorts, S','S','Black',null,'20364.9973'
union all
select 'Clothing','Shorts','Men''s Sports Shorts, XL','XL','Black',null,null
union all
select 'Clothing','Shorts','Women''s Mountain Shorts, L','L','Black','8739791.28','40426455.9336'
union all
select 'Clothing','Shorts','Women''s Mountain Shorts, M','M','Black','8105401.92','11633345.856'
union all
select 'Clothing','Shorts','Women''s Mountain Shorts, S','S','Black','7319274.24','35229698.9808'
union all
select 'Clothing','Socks','Mountain Bike Socks, L','L','White',null,'513.00'
union all
select 'Clothing','Socks','Mountain Bike Socks, M','M','White',null,'6060.3884'
union all
select 'Clothing','Socks','Racing Socks, L','L','White','810718.20','3066468.381'
union all
select 'Clothing','Socks','Racing Socks, M','M','White','790310.90','1999022.5612'
union all
select 'Clothing','Tights','Women''s Tights, L','L','Black',null,'93554.4647'
union all
select 'Clothing','Tights','Women''s Tights, M','M','Black',null,'17727.636'
union all
select 'Clothing','Tights','Women''s Tights, S','S','Black',null,'90550.9053'
union all
select 'Clothing','Vests','Classic Vest, L','L','Blue','74295.00','89154.00'
union all
select 'Clothing','Vests','Classic Vest, M','M','Blue','4498594.00','15445206.099'
union all
select 'Clothing','Vests','Classic Vest, S','S','Blue','5483352.00','24482651.7096'
union all
select 'Components','Bottom Brackets','HL Bottom Bracket',null,'NA',null,'39581.442'
union all
select 'Components','Bottom Brackets','LL Bottom Bracket',null,'NA',null,'12244.932'
union all
select 'Components','Bottom Brackets','ML Bottom Bracket',null,'NA',null,null
union all
select 'Components','Brakes','Front Brakes',null,'Silver',null,'50299.311'
union all
select 'Components','Brakes','Rear Brakes',null,'Silver',null,'15719.40'
union all
select 'Components','Chains','Chain',null,'Silver',null,'9377.7102'
union all
select 'Components','Cranksets','HL Crankset',null,'Black',null,'148622.5822'
union all
select 'Components','Cranksets','LL Crankset',null,'Black',null,'44855.244'
union all
select 'Components','Cranksets','ML Crankset',null,'Black',null,'10464.792'
union all
select 'Components','Derailleurs','Front Derailleur',null,'Silver',null,'44484.2678'
union all
select 'Components','Derailleurs','Rear Derailleur',null,'Silver',null,'25725.228'
union all
select 'Components','Forks','HL Fork',null,'NA',null,'61034.6096'
union all
select 'Components','Forks','LL Fork',null,'NA',null,'16897.08'
union all
select 'Components','Forks','ML Fork',null,'NA',null,null
union all
select 'Components','Handlebars','HL Mountain Handlebars',null,'NA',null,'34375.348'
union all
select 'Components','Handlebars','HL Road Handlebars',null,'NA',null,'43395.5968'
union all
select 'Components','Handlebars','HL Touring Handlebars',null,'NA',null,'12087.24'
union all
select 'Components','Handlebars','LL Mountain Handlebars',null,'NA',null,'22008.2687'
union all
select 'Components','Handlebars','LL Road Handlebars',null,'NA',null,'5422.5375'
union all
select 'Components','Handlebars','LL Touring Handlebars',null,'NA',null,'1548.624'
union all
select 'Components','Handlebars','ML Mountain Handlebars',null,'NA',null,'51753.7059'
union all
select 'Components','Handlebars','ML Road Handlebars',null,'NA',null,null
union all
select 'Components','Headsets','HL Headset',null,'NA',null,'19083.69'
union all
select 'Components','Headsets','LL Headset',null,'NA',null,'1949.40'
union all
select 'Components','Headsets','ML Headset',null,'NA',null,'39909.1084'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Black, 38','38','Black',null,'501788.1977'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Black, 42','42','Black',null,'901590.2336'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Black, 44','44','Black',null,'13765.92'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Black, 46','46','Black',null,null
union all
select 'Components','Mountain Frames','HL Mountain Frame - Black, 48','48','Black',null,'106078.56'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Silver, 38','38','Silver',null,'930780.6807'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Silver, 42','42','Silver',null,'269874.0096'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Silver, 44','44','Silver',null,null
union all
select 'Components','Mountain Frames','HL Mountain Frame - Silver, 46','46','Silver',null,'499556.5724'
union all
select 'Components','Mountain Frames','HL Mountain Frame - Silver, 48','48','Silver',null,'141635.10'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Black, 40','40','Black',null,'1198.992'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Black, 42','42','Black',null,'63396.702'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Black, 44','44','Black',null,'93584.423'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Black, 48','48','Black',null,'57851.364'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Black, 52','52','Black',null,'2248.11'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Silver, 40','40','Silver',null,'69934.2762'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Silver, 42','42','Silver',null,'100569.3572'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Silver, 44','44','Silver',null,'58777.53'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Silver, 48','48','Silver',null,'6970.92'
union all
select 'Components','Mountain Frames','LL Mountain Frame - Silver, 52','52','Silver',null,'67332.75'
union all
select 'Components','Mountain Frames','ML Mountain Frame - Black, 38','38','Black',null,'107557.584'
union all
select 'Components','Mountain Frames','ML Mountain Frame - Black, 40','40','Black',null,'14229.408'
union all
select 'Components','Mountain Frames','ML Mountain Frame - Black, 44','44','Black',null,'129529.464'
union all
select 'Components','Mountain Frames','ML Mountain Frame - Black, 48','48','Black',null,'200026.4154'
union all
select 'Components','Mountain Frames','ML Mountain Frame-W - Silver, 38','38','Silver',null,'1529.178'
union all
select 'Components','Mountain Frames','ML Mountain Frame-W - Silver, 40','40','Silver',null,'195826.3891'
union all
select 'Components','Mountain Frames','ML Mountain Frame-W - Silver, 42','42','Silver',null,'136970.658'
union all
select 'Components','Mountain Frames','ML Mountain Frame-W - Silver, 46','46','Silver',null,'41069.352'
union all
select 'Components','Pedals','HL Mountain Pedal',null,'Silver/Black',null,'38018.3258'
union all
select 'Components','Pedals','HL Road Pedal',null,'Silver/Black',null,'32849.544'
union all
select 'Components','Pedals','LL Mountain Pedal',null,'Silver/Black',null,'10908.006'
union all
select 'Components','Pedals','LL Road Pedal',null,'Silver/Black',null,'21087.192'
union all
select 'Components','Pedals','ML Mountain Pedal',null,'Silver/Black',null,'12852.63'
union all
select 'Components','Pedals','ML Road Pedal',null,'Silver/Black',null,'24624.894'
union all
select 'Components','Pedals','Touring Pedal',null,'Silver/Black',null,'7143.318'
union all
select 'Components','Road Frames','HL Road Frame - Black, 44','44','Black',null,'375026.9772'
union all
select 'Components','Road Frames','HL Road Frame - Black, 48','48','Black',null,'89872.1736'
union all
select 'Components','Road Frames','HL Road Frame - Black, 52','52','Black',null,null
union all
select 'Components','Road Frames','HL Road Frame - Black, 58','58','Black',null,null
union all
select 'Components','Road Frames','HL Road Frame - Black, 62','62','Black',null,null
union all
select 'Components','Road Frames','HL Road Frame - Red, 44','44','Red',null,'395182.6993'
union all
select 'Components','Road Frames','HL Road Frame - Red, 48','48','Red',null,'89872.1736'
union all
select 'Components','Road Frames','HL Road Frame - Red, 52','52','Red',null,null
union all
select 'Components','Road Frames','HL Road Frame - Red, 56','56','Red',null,null
union all
select 'Components','Road Frames','HL Road Frame - Red, 58','58','Red',null,null
union all
select 'Components','Road Frames','HL Road Frame - Red, 62','62','Red',null,'394255.5724'
union all
select 'Components','Road Frames','LL Road Frame - Black, 44','44','Black',null,'45164.6846'
union all
select 'Components','Road Frames','LL Road Frame - Black, 48','48','Black',null,null
union all
select 'Components','Road Frames','LL Road Frame - Black, 52','52','Black',null,'299595.5229'
union all
select 'Components','Road Frames','LL Road Frame - Black, 58','58','Black',null,'177635.904'
union all
select 'Components','Road Frames','LL Road Frame - Black, 60','60','Black',null,'24844.6922'
union all
select 'Components','Road Frames','LL Road Frame - Black, 62','62','Black',null,null
union all
select 'Components','Road Frames','LL Road Frame - Red, 44','44','Red',null,'194692.5991'
union all
select 'Components','Road Frames','LL Road Frame - Red, 48','48','Red',null,'131626.1666'
union all
select 'Components','Road Frames','LL Road Frame - Red, 52','52','Red',null,'20104.4434'
union all
select 'Components','Road Frames','LL Road Frame - Red, 58','58','Red',null,null
union all
select 'Components','Road Frames','LL Road Frame - Red, 60','60','Red',null,'195434.3238'
union all
select 'Components','Road Frames','LL Road Frame - Red, 62','62','Red',null,'136714.3995'
union all
select 'Components','Road Frames','ML Road Frame - Red, 44','44','Red',null,null
union all
select 'Components','Road Frames','ML Road Frame - Red, 48','48','Red',null,'89224.50'
union all
select 'Components','Road Frames','ML Road Frame - Red, 52','52','Red',null,'32120.82'
union all
select 'Components','Road Frames','ML Road Frame - Red, 58','58','Red',null,null
union all
select 'Components','Road Frames','ML Road Frame - Red, 60','60','Red',null,null
union all
select 'Components','Road Frames','ML Road Frame-W - Yellow, 38','38','Yellow',null,'303330.8412'
union all
select 'Components','Road Frames','ML Road Frame-W - Yellow, 40','40','Yellow',null,'68167.5144'
union all
select 'Components','Road Frames','ML Road Frame-W - Yellow, 42','42','Yellow',null,null
union all
select 'Components','Road Frames','ML Road Frame-W - Yellow, 44','44','Yellow',null,'485700.5469'
union all
select 'Components','Road Frames','ML Road Frame-W - Yellow, 48','48','Yellow',null,'301286.7891'
union all
select 'Components','Saddles','HL Mountain Seat/Saddle',null,'NA',null,'16392.096'
union all
select 'Components','Saddles','HL Road Seat/Saddle',null,'NA',null,'4232.256'
union all
select 'Components','Saddles','HL Touring Seat/Saddle',null,'NA',null,'13454.784'
union all
select 'Components','Saddles','LL Mountain Seat/Saddle',null,'NA',null,'5636.9571'
union all
select 'Components','Saddles','LL Road Seat/Saddle',null,'NA',null,'162.72'
union all
select 'Components','Saddles','LL Touring Seat/Saddle',null,'NA',null,'1480.752'
union all
select 'Components','Saddles','ML Mountain Seat/Saddle',null,'NA',null,'12497.1671'
union all
select 'Components','Saddles','ML Road Seat/Saddle',null,'NA',null,null
union all
select 'Components','Saddles','ML Touring Seat/Saddle',null,'NA',null,'1972.656'
union all
select 'Components','Touring Frames','HL Touring Frame - Blue, 46','46','Blue',null,'68667.444'
union all
select 'Components','Touring Frames','HL Touring Frame - Blue, 50','50','Blue',null,'74690.904'
union all
select 'Components','Touring Frames','HL Touring Frame - Blue, 54','54','Blue',null,'324333.1033'
union all
select 'Components','Touring Frames','HL Touring Frame - Blue, 60','60','Blue',null,'221720.9525'
union all
select 'Components','Touring Frames','HL Touring Frame - Yellow, 46','46','Yellow',null,'52404.102'
union all
select 'Components','Touring Frames','HL Touring Frame - Yellow, 50','50','Yellow',null,'49994.718'
union all
select 'Components','Touring Frames','HL Touring Frame - Yellow, 54','54','Yellow',null,'323268.2559'
union all
select 'Components','Touring Frames','HL Touring Frame - Yellow, 60','60','Yellow',null,'232378.2602'
union all
select 'Components','Touring Frames','LL Touring Frame - Blue, 44','44','Blue',null,'5001.30'
union all
select 'Components','Touring Frames','LL Touring Frame - Blue, 50','50','Blue',null,'63216.432'
union all
select 'Components','Touring Frames','LL Touring Frame - Blue, 54','54','Blue',null,'42210.972'
union all
select 'Components','Touring Frames','LL Touring Frame - Blue, 58','58','Blue',null,'800.208'
union all
select 'Components','Touring Frames','LL Touring Frame - Blue, 62','62','Blue',null,'3000.78'
union all
select 'Components','Touring Frames','LL Touring Frame - Yellow, 44','44','Yellow',null,'58699.3912'
union all
select 'Components','Touring Frames','LL Touring Frame - Yellow, 50','50','Yellow',null,'45611.856'
union all
select 'Components','Touring Frames','LL Touring Frame - Yellow, 54','54','Yellow',null,null
union all
select 'Components','Touring Frames','LL Touring Frame - Yellow, 58','58','Yellow',null,'7201.872'
union all
select 'Components','Touring Frames','LL Touring Frame - Yellow, 62','62','Yellow',null,'69127.1351'
union all
select 'Components','Wheels','HL Mountain Front Wheel',null,'Black',null,'39988.638'
union all
select 'Components','Wheels','HL Mountain Rear Wheel',null,'Black',null,'166013.2837'
union all
select 'Components','Wheels','HL Road Front Wheel',null,'Black',null,'112286.412'
union all
select 'Components','Wheels','HL Road Rear Wheel',null,'Black',null,'19709.712'
union all
select 'Components','Wheels','LL Mountain Front Wheel',null,'Black',null,'22462.845'
union all
select 'Components','Wheels','LL Mountain Rear Wheel',null,'Black',null,'18005.274'
union all
select 'Components','Wheels','LL Road Front Wheel',null,'Black',null,null
union all
select 'Components','Wheels','LL Road Rear Wheel',null,'Black',null,'58488.774'
union all
select 'Components','Wheels','ML Mountain Front Wheel',null,'Black',null,'33360.39'
union all
select 'Components','Wheels','ML Mountain Rear Wheel',null,'Black',null,'119193.5227'
union all
select 'Components','Wheels','ML Road Front Wheel',null,'Black',null,'78986.43'
union all
select 'Components','Wheels','ML Road Rear Wheel',null,'Black',null,'10574.784'
union all
select 'Components','Wheels','Touring Front Wheel',null,'Black',null,null
union all
select 'Components','Wheels','Touring Rear Wheel',null,'Black',null,null
)
select Kategoria, Podkategoria, Produkt, Rozmiar, Kolor
     , cast(WartoscInternet as decimal(14,4)) WartoscInternet
     , cast(WartoscSklepy as decimal(14,4)) WartoscSklepy
  from cte