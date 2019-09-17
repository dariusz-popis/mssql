-- Komentarze
/*
W języku SQL występują dwa rodzaje komentarzy:
-- podwójny znak myślnika oznacza komentarz w wierszu:
*/
SELECT 'test'; -- przykładowy komentarz

/*
Znaki /* oznaczają początek bloku komentarza, a znaki */ — jego koniec.
Wiersze znajdujące się pomiędzy tymi znakami są traktowane jako komentarz.

CTRL+K, CTRL+C	Za komentuje zaznaczony tekst
CTRL+K, CTRL+U	Od komentuje zaznaczony tekst
*/

--CZęść 1
--Odczytywanie danych z wybranej tabeli

--Klauzula FROM
USE AdventureWorksLT2012
SELECT [CompanyName], [LastName]
FROM [SalesLT].[Customer];
/*
Klauzula FROM umożliwia wskazanie tabeli zawierającej te kolumny
ktore przechowują interesujące nas dane.

Serwery bazodanowe w pierwszej kolejności wykonują klauzulę FROM,
natomiast klauza SELECT jest wykonywana jako jedna z ostatnich.

W większości klauzul nie można odwołać się do wyrażeń zdefiniowanych
w klauzuli SELECT w tym przypadku do aliasu "Nazwisko".
Poniższa instrukcja jest błędna i nie zostanie wykonana:
*/
SELECT [CompanyName] [Nazwa Firmy], [LastName] as Nazwisko
  FROM [SalesLT].[Customer]
 --WHERE Nazwisko ='Gee';
 WHERE LastName ='Gee';

-- W pełni kwalifikowane nazwy obiektów

/*
W pełni kwalifikowana nazwa obiektu ma postać
nazwa serwera.nazwa bazy danych.nazwa schematu.nazwa obiektu, przy czym:

Opcjonalna nazwa serwera wskazuje serwer bazodanowy. Jeżeli jej nie podamy,
instrukcja zostanie wykonana przez serwer, z którym jesteśmy połączeni.

Opcjonalna nazwa bazy danych wskazuje nazwę bazy danych, w której znajduje
się żądany obiekt. Jeżeli nie zostanie ona podana, serwer założy, że obiekt
znajduje się w bieżącej bazie danych.

W poprzednim przykładzie przed wykonaniem zapytania połączyliśmy się z
bazą AdventureWorksLT2012, ale gdybyśmy tego nie zrobili, musielibyśmy
wskazać nazwę tej bazy w klauzuli FROM:
*/
SELECT [CompanyName], [LastName]
  FROM [AdventureWorksLT2012].[SalesLT].[Customer];

--Eliminowanie duplikatów

/*
Poniższe zapytanie zwróci wartość SalesOrderID powtórzoną tyle razy,
ile było pozycji danego zamówienia
*/
SELECT [SalesOrderID],[LineTotal]
  FROM [SalesLT].[SalesOrderDetail];
/*
Domyślnie wyniki zapytań zawierają powtórzone dane, co odpowiada użyciu w klauzuli
SELECT słowa kluczowego ALL. Możemy to sprawdzić, wykonując poniższe zapytania.
*/
SELECT [ProductID]
  FROM [SalesLT].[SalesOrderDetail];
-----------------------------------
SELECT ALL [ProductID]
  FROM [SalesLT].[SalesOrderDetail];

/*
Powtarzające się dane możemy wyeliminować za pomocą słowa kluczowego DISTINCT
*/
SELECT DISTINCT [ProductID]
FROM [SalesLT].[SalesOrderDetail];

/*
Słowo kluczowe DISTINCT eliminuje z wyniku zapytania powtórzone wiersze,
a nie powtórzone wartości wybranych kolumn.
*/
SELECT DISTINCT [ProductID],[SalesOrderID]
FROM [SalesLT].[SalesOrderDetail];

--Wyrażenia

/*
Instrukcje SELECT mogą zawierać wyrażenia zbudowane z nazw kolumn i stałych 
połączonych standardowymi operatorami, np. operatorem + (dodawanie).
W skład wyrażeń mogą również wchodzić funkcje systemowe, takie jak UPPER() czy LEFT().
*/

--Operatory arytmetyczne

/*
Wszystkie standardowe operatory arytmetyczne, czyli
+ (dodawanie),
- (odejmowanie),
* (mnożenie),
/ (dzielenie bez reszty),
% (modulo zwraca resztę z dzielenia, np. 777 modulo 10 = 7),
mogą być używane w języku SQL.
*/

/*
Poniższe zapytanie zwraca nazwy produktów, ich ceny i wynik
pomnożenia tych cen przez 5:
*/
SELECT [Name], [ListPrice], [ListPrice]*5
FROM [SalesLT].[Product];

/*
Kolejny przykład pokazuje, że oba argumenty wyrażenia mogą być nazwami kolumn.
*/
SELECT [Name], [ListPrice], [Weight], [ListPrice]*[Weight]
FROM [SalesLT].[Product];

/*
Domyślną kolejność wykonywania operacji (najpierw mnożenie, dzielenie i modulo,
następnie dodawanie i odejmowanie) możemy zmienić za pomocą nawiasów.
*/
SELECT [ListPrice] - [StandardCost] * [Weight]
FROM [SalesLT].[Product];
-------------------------------------------------
SELECT ([ListPrice] - [StandardCost]) * [Weight]
FROM [SalesLT].[Product];

--£ączenie danych tekstowych
/*
Podział danych umożliwia nam wydajne wyszukiwanie i grupowanie danych, ale czasami
chcemy połączyć dane z kilku kolumn (z reguły kolumn przechowujących dane tekstowe)
w jedną całość. Umożliwia nam to operator konkatenacji '+'
*/
SELECT [ProductNumber], [Color], [ProductNumber] + ' ' + [Color]
FROM [SalesLT].[Product];

/*
Warto zwrócić uwagę na wynik wyrażenia, w kolumnie Color występowała wartość NULL,
co spowodowalo ze wynikiem również jest wartość nieznana.

Wartość NULL reprezentuje brakujące, nieznane lub nieistotne dane i jest różna
od 0 oraz od pustego ciągu znaków. Na przykład brak ceny produktu nie oznacza,
że jest on darmowy, tylko że jego cena nie została jeszcze ustalona.

Lepiej jest użyć funkcji CONCAT niż operatora + (jeśli jednym z argumentów jej 
wywołania jest NULL, funkcja CONCAT zwróci wartość drugiego argumentu, a nie NULL):
*/
SELECT [ProductNumber], [Color], CONCAT([ProductNumber],' ',[Color])
  FROM [SalesLT].[Product];

--Funkcje systemowe
--SQL udostępnia nam całą gamę funkcji systemowych.

--Funkcje arytmetyczne

/*
ROUND ()
Zaokrągla liczbę do określonej przez drugi argument wywołania liczby miejsc
po przecinku. Jeżeli drugi argumentbędzie ujemny, zaokrąglona zostanie
część całkowita.
*/
SELECT ROUND (81.46,1), ROUND (9,-1);

--Funkcje znakowe

/*
LEN()
Zwraca długość przekazanego ciągu znaków.
*/
SELECT LEN ('Kurs SQL');

/*
LOWER()
Zwraca przekonwertowany na małe litery ciąg znaków.
*/
SELECT LOWER('DaneTowaru');

/*
LTRIM()
Usuwa z ciągu znaków wiodące spacje.
*/
SELECT LTRIM (' Kurs SQL');

/*
REPLACE()
Zamienia w podanym ciągu znaków wskazaną frazę na inną.
*/
SELECT REPLACE ('Stop','St','H');

/*
RTRIM()
Usuwa z ciągu znaków wolne spacje.
*/
SELECT LEN (RTRIM ('Kurs SQL '));

/*
SUBSTRING()
Zwraca część ciągu znaków o określonej długości,
zaczynając od znaku o podanej pozycji.
*/
SELECT SUBSTRING ('Kurs SQL',6,3);

/*
UPPER()
Zwraca przekonwertowany na duże litery ciąg znaków.
*/
SELECT UPPER('DaneTowaru');

--Funkcje daty i czasu

/*
DATEADD()
Zwraca datę i czas zwiększony o podaną liczbę wskazanych jednostek.
*/
SELECT DATEADD(DAY,20,'20190901');

/*
DATEDIFF()
Funkcja zwraca różnicę, w zdefiniowanych jednostkach, między dwiema datami.
*/
SELECT DATEDIFF(HOUR,'20190901','20190915');

/*
DAY()
Zwraca numer dnia przekazanej daty.
*/
SELECT DAY(GETDATE());

/*
GETDATE()
Zwraca bieżącą datę i czas.
*/
SELECT GETDATE();

/*
MONTH()
Zwraca numer miesiąca przekazanej daty.
*/
SELECT MONTH(GETDATE());

/*
YEAR()
Zwraca rok przekazanej daty.
*/
SELECT YEAR('20190901');

--Konwersja typów
/*
Jawną konwersję typów umożliwiają funkcje
CAST(wyrażenie AS typ) oraz CONVERT (typ, wyrażenie).

Poniższe zapytanie, w którym próbujemy połączyć ze sobą
kody produktów (dane tekstowe) z ich cenami (danymi walutowymi), zgłosi błąd:
*/
SELECT [ProductNumber] + [ListPrice]
FROM [SalesLT].[Product];

/*
Przeprowadzanie jawnej konwersji typu walutowego na tekstowy, czy to za pomocą
funkcji CAST, czy COVERT, rozwiązuje problem:
*/
SELECT [ProductNumber] + ' ' + CAST([ListPrice] AS VARCHAR(15))
FROM [SalesLT].[Product];

--Specjalna funkcja CASE

/*
Funkcja CASE jest SQL-owym odpowiednikiem instrukcji warunkowej IF … THEN … ELSE

Pozwala ona dla każdego wiersza wyniku zapytania sprawdzić wartość podanego wyrażenia
i w zależności od wyniku testu zwrócić określoną po słowie kluczowym THEN wartość.

Funkcja CASE pozwoli np. na podstawie odczytanej ceny towarów zwrócić jej słowny opis:
*/
SELECT [Name], [ListPrice],
	CASE
		WHEN [ListPrice] <10 THEN 'Tani'
		WHEN [ListPrice] <50 THEN 'średnia półka'
		ELSE 'Drogi'
	END
FROM [Sales].[Product];
/*
Kolejne warunki logiczne (klauzule WHEN) są sprawdzane w takiej kolejności,
w jakiej zostały zapisane. Ta kolejność jest bardzo ważna — po znalezieniu
pierwszego prawdziwego warunku funkcja CASE natychmiast zwraca odpowiadającą
mu wartość, nie sprawdzając dla tego wiersza następnych warunków (kolejnych klauzul WHEN)
*/

--Formatowanie wyników

--Aliasy
/*
Aliasy kolumn definiuje się w klauzuli SELECT, albo podając je bezpośrednio 
po oryginalnej nazwie kolumny, albo poprzedzając je słowem kluczowym AS.
Radze zawsze używać słowa kluczowego AS — poprawia ono czytelność zapytań.
*/
SELECT [Name] AS [Nazwa Produktu], [ListPrice] - [StandardCost] AS Zysk
FROM [SalesLT].[Product];

/*
W kolejnym zapytaniu zdefiniowany został alias dla kolumny zwracającej
zaokrąglone ceny produktów:
*/
SELECT [ListPrice], ROUND([ListPrice],0) AS [W Zaokrągleniu]
FROM [SalesLT].[Product];

/*
Klauzula SELECT jest wykonywana jako jedna z ostatnich, zdefiniowanych
w niej aliasów nie można użyć w innych klauzulach zapytania.
Wyjątkiem od tej reguły jest klauzula ORDER BY.

Aliasy tabel definiuje się w ten sam sposób, ale w klauzuli FROM.
Do zdefiniowanych w klauzuli FROM aliasów można się odwołać w innych
klauzulach zapytania.
*/
SELECT P.[ListPrice], ROUND([ListPrice],0) AS [W Zaokrągleniu]
FROM [SalesLT].[Product] AS P;

/*
Klauzula FROM jest wykonywana w pierwszej kolejności, po zdefiniowaniu
w niej aliasu dla tabeli musimy pamietac ze w pozostałych klauzulach
zapytania nie możemy już używać oryginalnej nazwy tabeli.

Zapytanie zwraca blad.
*/
SELECT [SalesLT].[Product].[ListPrice], ROUND([ListPrice],0) AS [W Zaokrągleniu]
FROM [SalesLT].[Product] AS P;

--Stałe (literały)
/*
Literały to dowolne stałe wartości, takie jak liczby, daty lub ciągi znaków.

Poniższe zapytanie zawiera dwie poprawiające czytelność wyniku stałe i funkcję
DATEPART(), która zwraca określoną część znacznika daty oraz czasu:
*/
SELECT 'Zamówienie ' + CAST([SalesOrderID] AS CHAR(5)) + ' zostało złożone w roku '
+ CONVERT(CHAR(4),DATEPART(YEAR,[OrderDate]))
FROM [SalesLT].[SalesOrderHeader];

/*
Specjalnym rodzajem stałych sa funkcje bez parametrow. Takie funkcje są wywoływane
raz dla całego zapytania, a nie dla każdego wiersza jego wyniku, a więc zwrócone 
przez nie wartości zostaną powtórzone:
*/
SELECT [ProductNumber], GETDATE(), RAND()
FROM [SalesLT].[Product];

/*
Wyjatkiem jest funkcja NEWID
*/
SELECT [ProductNumber], NEWID()
FROM [SalesLT].[Product];

--Sortowanie wyników
/*
Jeżeli chcemy posortować wynik, to do zapytania musimy dodać klauzulę ORDER BY.

Kolejność klauzul instrukcji SELECT jest ściśle określona, a opcjonalna klauzula
ORDER BY musi być ostatnią klauzulą zapytania.

W klauzuli ORDER BY umieszcza się nazwy lub numery kolumn, według których chcemy
posortować wynik zapytania.
*/
SELECT [Name],[ListPrice]
FROM [SalesLT].[Product]
ORDER BY [ListPrice];
--------------------------
SELECT [Name],[ListPrice]
FROM [SalesLT].[Product]
ORDER BY 2;

/*
Domyślnie dane są szeregowane w porządku rosnącym, aby odwrócić kolejność
sortowania, należy bezpośrednio po nazwie kolumny użyć słowa kluczowego DESC.
*/
SELECT [Name],[ListPrice]
FROM [SalesLT].[Product]
ORDER BY [ListPrice] DESC;

/*
Wyniki zapytań mogą być sortowane według wartości wielu kolumn.
W poniższym przykładzie wynik jest najpierw sortowany rosnąco według
kolorów, a następnie malejąco według cen produktów o tym samym kolorze:
*/
SELECT [ProductNumber], [Color],[ListPrice]
FROM [SalesLT].[Product]
ORDER BY [Color] DESC,[ListPrice];

-- CZAS na zadania samodzielne

--CZęść 2
--Wybieranie wierszy

--Wartość NULL
/*
Wartość NULL reprezentuje brakujące, nieznane lub nieistotne dane i jest różna
od 0 oraz od pustego ciągu znaków. Na przykład brak ceny produktu nie oznacza,
że jest on darmowy, tylko że jego cena nie została jeszcze ustalona.
*/

--Operatory logiczne
/*
Operator AND (logiczne I, czyli koniunkcja)
Operator OR (logiczne LUB, czyli alternatywa)
Operator NOT (logiczne NIE, czyli negacja)
*/

--Klauzula WHERE
/*
Wybieranie zwracanych przez zapytanie wierszy umożliwia klauzula WHERE.

Umieszczone w niej warunki logiczne są sprawdzane dla każdego wiersza tabeli,
jeżeli wynikiem testu logicznego jest prawda, wiersz trafia do wyniku zapytania.

Klauzula WHERE musi wystąpić bezpośrednio po klauzuli FROM

Poniższe zapytanie zwraca nazwy produktów, których ceny nie przekraczają dziesięciu.
*/
SELECT ProductNumber, ListPrice
FROM [SalesLT].[Product]
WHERE [ListPrice]<10;

/*
Kolejny przykład pokazuje, jak odczytać posortowaną od najnowszych do najstarszych
listę produktów, które trafiły do sprzedaży po 1 czerwca 2007 roku:
*/
SELECT [Name], [SellStartDate]
FROM [SalesLT].[Product]
WHERE [SellStartDate]>'20070601'
ORDER BY [SellStartDate] DESC;

/*
W kolejnym przykladzie sprawdzamy które produkty trafiły do sprzedaży w wybranym roku:
*/
SELECT [Name], [SellStartDate]
FROM [SalesLT].[Product]
WHERE YEAR([SellStartDate]) = 2007
ORDER BY [SellStartDate] DESC;

/*
Nazwy kolumn mogą być użyte w wyrażeniach znajdujących się po obu stronach
operatorów porównania.

Kolejny przykład pokazuje, jak znaleŸć towary, których cena jest 
co najmniej dwukrotnie wyższa niż koszt ich uzyskania:
*/
SELECT [ProductNumber], [StandardCost], [ListPrice]
FROM [SalesLT].[Product]
WHERE [StandardCost]*2<[ListPrice];

--Operatory SQL
/*
Oprócz standardowych operatorów porównania w klauzuli WHERE możemy użyć 
specyficznych dla języka SQL operatorów IN, BETWEEN … AND, LIKE oraz IS NULL.
*/

--Operator IN
/*
Operator IN pozwala sprawdzić, czy szukana wartość należy do podanego zbioru, np.
czy wielkość produktu wynosi 44, 48 lub 50:
*/
SELECT [ProductNumber], [Size]
FROM [SalesLT].[Product]
WHERE [Size] IN ('44','48','50');

/*
Operator IN może być używany z każdym typem danych, nie tylko z danymi liczbowymi.
Kolejne zapytanie zwraca numery czarnych lub czerwonych produktów:
*/
SELECT [ProductNumber],[Color]
FROM [SalesLT].[Product]
WHERE [Color] IN ('Black', 'Red');

--Operator BETWEEN ... AND
/*
Operator BETWEEN … AND pozwala sprawdzić, czy szukana wartość należy do określonego
przedziału domkniętego. Dzięki niemu możemy np. poznać nazwy towarów o cenach
nie niższych niż 10 i nie wyższych niż 20:
*/
SELECT [ProductNumber], [ListPrice]
FROM [SalesLT].[Product]
WHERE [ListPrice] BETWEEN 10 AND 20;

/*
Następny przykład pokazuje, jak odczytać identyfikatory zamówień
złożonych w ciągu pierwszego półrocza roku 2014:
*/
SELECT [SalesOrderID], [OrderDate]
FROM [SalesLT].[SalesOrderHeader]
WHERE [OrderDate] BETWEEN '20140101' AND '20140630';

/*
Operator BETWEEN … AND może być też użyty do sprawdzenia,
czy dane tekstowe należą do podanego zakresu. 

Poniższe zapytanie zwraca nazwiska klientów zaczynające się
na litery od B do D:
*/
SELECT [LastName]
FROM [SalesLT].[Customer]
WHERE LEFT([LastName],1) BETWEEN 'B' AND 'D';

--Operator LIKE
/*
Za pomocą operatora LIKE możemy przeszukiwać dane tekstowe
pod kątem ich zgodności z podanym wzorcem.

Do tworzenia wzorca można użyć dwóch symboli o specjalnym znaczeniu:
1. Symbol % (procent) zastępuje dowolny ciąg znaków.
2. Symbol _ (podkreślenie) zastępuje jeden dowolny znak.

Poniższe zapytanie zwraca dane produktów, których nazwy zaczynają się na literę 'S'
*/
SELECT [ProductID], [Name]
FROM [SalesLT].[Product]
WHERE [Name] LIKE 'S%';

/*
Możliwe jest też ograniczenie wyniku do tych produktów,
których nazwy zaczynają się na literę S, a kończą literą L:
*/
SELECT [ProductID], [Name]
FROM [SalesLT].[Product]
WHERE [Name] LIKE 'S%L';

/*
Operator LIKE pozwoli nam też odczytać dane produktów,
których numer zaczyna się literą S, druga litera jest 
dowolna, a następnie występuje w nich myślnik i litera M:
*/
SELECT [ProductID], [ProductNumber]
FROM [SalesLT].[Product]
WHERE [ProductNumber] LIKE 'S_-M%';

--Operator IS NULL
/*
Chociaż nie możemy porównywać wartości NULL z innymi wartościami,
to możemy sprawdzić, czy dana wartość jest nieokreślona.
Służy do tego operator IS NULL.

Poniższe zapytanie zwraca kody produktów, które nie mają
określonej daty wycofania ze sprzedaży:
*/
SELECT [ProductNumber]
FROM [SalesLT].[Product]
WHERE [SellEndDate] IS NULL;

--Złożone warunki logiczne
/*
Wszystkie przedstawione operatory porównań możemy łączyć 
ze sobą za pomocą trzech operatorów logicznych: NOT, AND i OR.
Utworzone w ten sposób złożone warunki logiczne pozwalają
na zaawansowane wyszukiwanie danych.

Ponizszy przyklad zwraca nazwy będących ciągle w sprzedaży
czarnych produktów, które należą do kategorii o identyfikatorze
5, 16 lub 19, lub produktów kosztujących nie więcej niż 50:
*/
SELECT [Name]
FROM [SalesLT].[Product]
WHERE [ProductCategoryID] IN (5,16,19)
AND [SellEndDate] IS NOT NULL
AND [Color] = 'Black'
OR [ListPrice]<50;

--Klauzula TOP
/*
Opcjonalna klauzula TOP pozwala ograniczyć wynik zapytania do
podanej w niej liczby wierszy. Docelowa liczba wierszy może 
być określona bezwzględnie lub procentowo.
*/
SELECT TOP 3 [Name], [ListPrice]
FROM [SalesLT].[Product]
ORDER BY [ListPrice] DESC;
-----------------------------
/*
Natomiast aby dodać do wyniku dodatkowe, zawierające
powtórzenia wiersze, należy użyć rozszerzonej składni
TOP … WITH TIES
*/
SELECT TOP 3 WITH TIES [Name], [ListPrice]
FROM [SalesLT].[Product]
ORDER BY [ListPrice] DESC;

/*
Kolejny przykład pokazuje, jak odczytać dane o 5% najdroższych produktów
*/
SELECT TOP 5 PERCENT WITH TIES [Name], [ListPrice]
FROM [SalesLT].[Product]
ORDER BY [ListPrice] DESC;

--Stronicowanie wierszy
/*
Stronicowanie, czyli ograniczanie wyniku zapytania do wierszy o określonych numerach.
Naszym punktem wyjścia jest poniższe zapytanie:
*/
SELECT [Name], [ProductModelID]
FROM [SalesLT].[Product]
ORDER BY [ProductModelID];

/*
Pominąć określoną liczbę wierszy możemy, dodając na końcu zapytania klauzulę OFFSET
i podając w niej liczbę początkowych wierszy, które mają być usunięte z wyniku zapytania:
*/
SELECT [Name], [ProductModelID]
FROM [SalesLT].[Product]
ORDER BY [ProductModelID]
	OFFSET 5 ROWS;

/*
Natomiast ograniczyć liczbę zwracanych wierszy możemy za pomocą klauzuli FETCH NEXT:
*/
SELECT [Name], [ProductModelID]
FROM [SalesLT].[Product]
ORDER BY [ProductModelID]
	OFFSET 3 ROWS
	FETCH NEXT 5 ROWS ONLY;

-- CZAS na zadania samodzielne

--CZęść 3
--£ączenie tabel i wyników zapytań
/*
Na przykład odczytując tabelę [SalesLT].[Product], jesteśmy w stanie poznać
identyfikatory kategorii, do których należą poszczególne towary. Nie możemy
jednak poznać nazw tych kategorii, ponieważ są zapisane w tabeli [SalesLT].[ProductCategory]:
*/
SELECT [Name],[ProductCategoryID]
FROM [SalesLT].[Product];
----------------------------------
SELECT [ProductCategoryID], [Name]
FROM [SalesLT].[ProductCategory];

/*
Klucz podstawowy jest unikatowy.
Klucz obcy moze wystepowac wiele razy, tak powstaje relacja "jeden do wielu"

Działanie operatora JOIN … ON polega na wygenerowaniu wszystkich możliwych
kombinacji wierszy łączonych tabel, a następnie usunięciu z tak otrzymanego
zbioru pośredniego wierszy niespełniających warunku złączenia.
*/
SELECT C.Name,P.Name
FROM [SalesLT].[ProductCategory] AS C
JOIN [SalesLT].[Product] AS P
	ON P.ProductCategoryID=C.ProductCategoryID;

/*
Chcemy poznać dane klienta, który złożył konkretne zamówienie,
wraz z danymi na temat tego zamówienia.
*/
SELECT *
FROM [SalesLT].[Customer] AS C
JOIN [SalesLT].[SalesOrderHeader] AS OH
	ON c.CustomerID=oh.CustomerID
WHERE [SalesOrderID]=71796;

--Złączenia zewnętrzne
/*
Wszystkie omówione do tej pory złączenia były złączeniami wewnętrznymi — ich
wyniki zawierały tylko wiersze spełniające podany w nich warunek złączenia.

Złączenie wewnętrzne jest domyślnym typem złączenia, dlatego do tej pory
pomijaliśmy opcjonalne słowo kluczowe INNER operatora JOIN. 
*/
SELECT ProductNumber, C.Name
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[ProductCategory] AS C
	ON C.ProductCategoryID=P.ProductCategoryID
WHERE P.Color = 'WHITE';
/*
Zapytanie to nie zwraca wszystkich białych produktów. W przykładowej
bazie danych jest jeden produkt, który nie należy do jakiejkolwiek
kategorii, co oznacza, że zostanie on usunięty w klauzuli ON.

Jeśli jednak chcieliśmy odczytać numery wszystkich produktów,
to musielibyśmy zastosować złączenie zewnętrzne

Złączenia zewnętrzne dzielą się na lewostronne, prawostronne i obustronne.
*/

--Złączenie lewostronne
/*
Lewostronne złączenie zewnętrzne (LEFT OUTER JOIN) powoduje pozostawienie
w wyniku niepasujących wierszy z pierwszej (lewej) tabeli.

Ponizsze zapytanie zwraca numery wszystkich produktów,
w tym nienależącego do jakiejkolwiek kategorii.
*/
SELECT P.ProductNumber, C.Name
FROM [SalesLT].[Product] AS P
LEFT OUTER JOIN [SalesLT].[ProductCategory] AS C
	ON C.ProductCategoryID=P.ProductCategoryID
WHERE P.Color = 'WHITE';

/*
Ponizsze zapytanie zwraca nazwy wszystkich kategorii,
w tym rowniez te do ktorych nie jest przypisany zaden produkt.
*/
SELECT P.ProductNumber, C.Name
FROM [SalesLT].[Product] AS P
RIGHT OUTER JOIN [SalesLT].[ProductCategory] AS C
	ON C.ProductCategoryID=P.ProductCategoryID
ORDER BY P.ProductNumber, C.Name

/*
Obustronne złączenia zewnętrzne (FULL OUTER JOIN) zwracają 
wszystkie wiersze obu złączonych tabel, w tym te, które nie
spełniają warunku złączenia.

Kolejne zapytanie zwraca niepasujące do siebie wiersze obu
powiązanych tabel:
*/
SELECT P.ProductNumber, C.Name
FROM [SalesLT].[Product] AS P
FULL OUTER JOIN [SalesLT].[ProductCategory] AS C
	ON C.ProductCategoryID=P.ProductCategoryID
WHERE P.ProductCategoryID IS NULL;

--Złączenia wielokrotne
/*
W jednym zapytaniu możemy się odwołać do więcej niż dwóch tabel.

Zapytanie poczatkowe:
*/
SELECT P.Name
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[SalesOrderDetail] AS D
	ON P.ProductID = D.ProductID;

/*
Chcemy doloczyc nazwisko klienta do wyniku poczatkowe zapytania.
Jeżeli spróbujemy dodać kolumnę LastName tabeli [SalesLT].[Customer],
okaże się, że nie możemy wykonać złączenia.

Z diagramu wynika, że do złączenia z tabelą [SalesLT].[Customer]
musimy użyć tabeli pośredniej [SalesLT].[SalesOrderHeader].
Dodajmy tę tabelę i posortujmy wyniki według nazwisk klientów
*/
SELECT C.LastName, P.Name
FROM [SalesLT].[Customer] AS C
JOIN [SalesLT].[SalesOrderHeader] AS H
	ON C.CustomerID=H.CustomerID
JOIN [SalesLT].[SalesOrderDetail] AS D
	ON D.SalesOrderID=H.SalesOrderID
JOIN [SalesLT].[Product] AS P
	ON D.ProductID=P.ProductID
ORDER BY C.LastName;
/*
Kolejność poszczególnych sekcji JOIN … ON odpowiada logicznej
kolejności łączenia tabel. Jednak serwery bazodanowe optymalizują
zapytania, a więc w rzeczywistości tabele mogły być złączone
w innej kolejności.
*/

--Określanie kolejności złączeń
/*
W złączeniach równościowych kolejność łączenia tabel nie ma
żadnego wpływu na wynik zapytania.

Przeanalizujmy to na przykładzie produktów, które nigdy nie 
zostały sprzedane. Wiemy już, że złączając lewostronnie tabele
[SalesLT].[Product]i [SalesLT].[SalesOrderDetail],
otrzymamy listę wszystkich produktów:
*/
SELECT P.ProductNumber, D.SalesOrderID
FROM [SalesLT].[Product] AS P
LEFT OUTER JOIN [SalesLT].[SalesOrderDetail] AS D
	ON D.ProductID=P.ProductID;
 /*
To zapytanie zwróciło 696 wierszy.
Gdybyśmy chcieli, żeby wynik zapytania zawierał jeszcze jakieś 
dane z tabeli [SalesLT].[SalesOrderHeader], np. wartości zamówień,
musielibyśmy dołączyć do zapytania tę tabelę:
 */
SELECT P.ProductNumber, D.SalesOrderID, H.TotalDue
FROM [SalesLT].[Product] AS P
LEFT OUTER JOIN [SalesLT].[SalesOrderDetail] AS D
	ON D.ProductID=P.ProductID
JOIN [SalesLT].[SalesOrderHeader] AS H
	ON D.SalesOrderID=H.SalesOrderID;
/*
To zapytanie zwróciło tylko 542 wiersze i nie znajdziemy w jego
wyniku m.in. produktu o numerze BB-8107:
*/
SELECT P.ProductNumber, D.SalesOrderID, H.TotalDue
FROM [SalesLT].[Product] AS P
LEFT OUTER JOIN [SalesLT].[SalesOrderDetail] AS D
	ON D.ProductID=P.ProductID
JOIN [SalesLT].[SalesOrderHeader] AS H
	ON D.SalesOrderID=H.SalesOrderID
WHERE P.ProductNumber = 'BB-8107';
/*
Wynik tego zapytania nie zawiera więc informacji o niesprzedanych
produktach, które początkowo dodane, zostały z niego usunięte w 
trakcie wykonywania drugiej klauzuli ON.

Problem ten można rozwiązać określając za pomocą nawiasów 
kolejność, w jakiej tabele powinny być połączone.

Jeżeli złączenie zewnętrzne będzie wykonane jako ostatnie
niepasujący wiersz znajdzie się w wyniku zapytania:
*/

SELECT P.ProductNumber, D.SalesOrderID, H.TotalDue
FROM [SalesLT].[Product] AS P
LEFT OUTER JOIN
	 (
	 [SalesLT].[SalesOrderDetail] AS D
	 JOIN [SalesLT].[SalesOrderHeader] AS H
	 ON D.SalesOrderID=H.SalesOrderID
	 )
 ON D.ProductID=P.ProductID;

 --£ączenie wyników zapytań
 /*
O ile łączenie tabel polega na dodawaniu kolumn, o tyle łączenie
wyników polega na dodawaniu wierszy. £ączone wyniki zapytań muszą
się składać z tej samej liczby kolumn, a odpowiadające sobie kolumny
muszą być tych samych albo umożliwiających niejawną konwersję typów.
 */
SELECT [AddressID] as ID
FROM [SalesLT].[Address]
ORDER BY ID;
-------------------------
SELECT [CustomerID] as ID
FROM [SalesLT].[Customer]
ORDER BY ID;

--Suma
/*
Dodać do siebie wyniki zapytań możemy za pomocą operatora UNION.
Operator UNION powoduje usunięcie z wyniku powtórzonych wierszy:
*/
SELECT [AddressID] as ID
FROM [SalesLT].[Address]
UNION
SELECT [CustomerID] as ID
FROM [SalesLT].[Customer]
ORDER BY ID;

/*
Jeżeli chcemy tylko złączyć ze sobą wyniki zapytań, bez eliminowania
ewentualnych duplikatów powinniśmy użyć operatora UNION ALL.
*/
SELECT [AddressID] as ID
FROM [SalesLT].[Address]
UNION ALL
SELECT [CustomerID] as ID
FROM [SalesLT].[Customer]
ORDER BY ID;

--Część wspólna
/*
Operator INTERSECT zwraca część wspólną wyników dwóch zapytań,
a więc tylko te wiersze, które zostały zwrócone przez oba zapytania.
*/
SELECT [AddressID] as ID
FROM [SalesLT].[Address]
INTERSECT
SELECT [CustomerID] as ID
FROM [SalesLT].[Customer]
ORDER BY ID;

--Różnica
/*
Operator EXCEPT zwraca te wiersze, które znalazły się wyłącznie
w wyniku pierwszego zapytania i nie było ich w wyniku drugiego zapytania.
*/
SELECT [AddressID] as ID
FROM [SalesLT].[Address]
EXCEPT
SELECT [CustomerID] as ID
FROM [SalesLT].[Customer]
ORDER BY ID;

-- CZAS na zadania samodzielne

--CZęść 4
--Grupowanie wierszy
/*
Grupowanie danych polega na łączeniu wielu wierszy w jeden.
Charakterystyczną cechą funkcji grupujących jest operowanie
na zbiorach, a nie pojedynczych wartościach.
*/

--Funkcja COUNT()
/*
Tej funkcji używa się jej do sprawdzenia liczebności grupy
lub policzenia wierszy tabeli.

Poniższe zapytanie zwraca liczbę wszystkich zamowien:
*/
SELECT COUNT([SalesOrderID])
FROM [SalesLT].[SalesOrderHeader];

/*
To zapytanie zwroci liczbe wszystkich wystapien id klientow.
*/
SELECT COUNT(CustomerID)
FROM [SalesLT].[SalesOrderHeader];
----------------------------------
/*
Jak poprzedzimy nazwe kolumny słowem kluczowym DISTINCT zapytanie
zwróci liczbę klientów, którzy złożyli przynajmniej jedno zamówienie:
*/
SELECT COUNT(DISTINCT CustomerID)
FROM [SalesLT].[SalesOrderHeader];

--Zliczanie wierszy
SELECT COUNT(*)
FROM [SalesLT].[SalesOrderHeader];

--Funkcje SUM() i AVG()
/*
Argumentami funkcji SUM() i AVG() mogą być tylko liczby.

Funkcja SUM() zwraca sumę wartości w grupie.
Funkcja AVG() zwraca średnią wartości w grupie.

Poniższe zapytanie zwraca całkowitą wartość i średnią cenę
wszystkich produktów:
*/
SELECT SUM([ListPrice]), AVG([ListPrice])
FROM [SalesLT].[Product];

--Funkcje MIN() i MAX()
/*
Argumentami funkcji MIN() i MAX() mogą być oprócz danych liczbowych
dane daty i czasu oraz tekstowe.

Funkcja MAX() zwraca najwieksza wartosc w grupie.
Funkcja MIN() zwraca najmniejsza wartosc w grupie.

W przypadku dat za najmniejszą uznawana jest najwcześniejsza,
a za największą najpóŸniejsza data w grupie.

Ponizsze zapytanie zwroci najwczesniejsza i najpozniejsza
date zamowienia.
*/
SELECT MIN([OrderDate]), MAX([OrderDate])
FROM [SalesLT].[SalesOrderHeader];

/*
Dla liczb i walut funkcja MIN zwraca wartość najmniejszą,
a funkcja MAX — największą.

Ponizsze zapytanie zwroci najnisza i najwyzsza wartosc zamowienia.
*/
SELECT MIN([TotalDue]), MAX([TotalDue])
FROM [SalesLT].[SalesOrderHeader];

/*
Przy porównywaniu ciągów znaków obowiązują takie same zasady
jak przy ich sortowaniu w porządku rosnącym:
*/
SELECT MIN(Name), MAX(Name)
FROM [SalesLT].[Product];

--Wyrażenia

/*
Poniższe zapytanie zwraca różnice pomiędzy minimalną i maksymalną
oraz maksymalną i średnią ceną produktów:
*/
SELECT MAX([ListPrice]) - MIN( [ListPrice]),
	MAX([ListPrice]) - AVG( [ListPrice])
FROM [SalesLT].[Product];

/*
Argumentami funkcji grupujących również mogą być wyrażenia.
Na przykład możemy policzyć średnią z cen brutto produktów
(cen pomnożonych przez 1,23):
*/
SELECT AVG([ListPrice]*1.23)
  FROM [SalesLT].[Product];

--Klauzula GROUP BY
/*
Kolejność wykonywania klauzuli GROUP BY
(5) SELECT
(1)	FROM
(2)	WHERE
(3)	GROUP BY
(4) HAVING
(6) ORDER BY

Grupowanie danych polega na tworzeniu grup rekordów w oparciu o klauzulę GROUP BY.

Ponizsze zapytanie zwraca średnią cenę i liczbę towarów
należących do poszczególnych kategorii.
*/
SELECT [ProductCategoryID],
	AVG([ListPrice]) AS średnia,
	COUNT([ProductID]) AS Liczba
FROM [SalesLT].[Product]
WHERE [ProductCategoryID] is not null
GROUP BY [ProductCategoryID];

/*
Ponizsze zapytanie zwraca sume wartosci zamowionego produktu.
*/
SELECT P.[ProductNumber], SUM(OD.[LineTotal])
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[SalesOrderDetail] AS OD
	ON P.ProductID = OD.ProductID
GROUP BY P.[ProductNumber];

/*
Klauzula GROUP BY umożliwia również tworzenie podgrup.
Przypuśćmy, że chcemy poznać liczbę oraz średnią cenę produktów
z poszczególnych kategorii z rozbiciem na kolory tych produktów.
W tym celu musimy w klauzuli GROUP BY umieścić nazwę dwoch kolumn.
*/
SELECT C.Name, P.Color, COUNT(*) AS Liczba, AVG(ListPrice) AS średnia
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[ProductCategory] AS C
	ON P.ProductCategoryID=C.ProductCategoryID
GROUP BY C.Name, P.Color
ORDER BY C.Name;

--Klauzula HAVING
/*
Klauzula HAVING jest wykonywana po klauzuli GROUP BY i umożliwia
wyeliminowanie z wyniku zapytania grup niespełniających określonego
w niej warunku logicznego.

Korzystajac z klauzuli HAVING mozemy ograniczyc wynik zapytania
do kategorii ktore posiadaja wiecej niz 10 produktow.
*/
SELECT C.Name, COUNT(*) AS Liczba, AVG(ListPrice) AS średnia
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[ProductCategory] AS C
	ON P.ProductCategoryID=C.ProductCategoryID
GROUP BY C.Name
HAVING COUNT(*)>10;

/*
Kolejne zapytanie zwraca nazwy kategorii, dla których
średnia cena produktów przekracza 200.
*/
SELECT C.Name, COUNT(*) AS Liczba, AVG(ListPrice) AS średnia
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[ProductCategory] AS C
	ON P.ProductCategoryID=C.ProductCategoryID
GROUP BY C.Name
HAVING AVG(p.ListPrice)>200;

/*
Razem użyte klauzule WHERE i HAVING pozwalają:
- ograniczyć liczbę grupowanych wierszy (w klauzuli WHERE)
- wyeliminować grupy, które nie spełniają określonego warunku logicznego (w klauzuli HAVING):
*/
SELECT C.Name, COUNT(*), AVG(ListPrice)
FROM [SalesLT].[Product] AS P
JOIN [SalesLT].[ProductCategory] AS C
	ON P.ProductCategoryID=C.ProductCategoryID
WHERE [SellEndDate] IS NOT NULL
GROUP BY C.Name
HAVING COUNT(*)>10;

-- CZAS na zadania samodzielne