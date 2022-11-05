imie = "Kamil"
x = 5

jestDUZEB y = y == 'B' -- funkcja
jestDODATNIA a = a > 0 -- czy liczba jest dodatnia
jestUJEMNA c = c < 0
jestZEREM d = d == 0

zwiekszOjeden d = d + 1
zSUMUJ a b = a + b

zILOCZYNUJ a b = a * b

e = 4
f = 6.1

calc a b = e + f 
calc2 f = f + (zwiekszOjeden f)

-- reszta z dzielenia i sprawdzenie czy == 0 żeby otrzymać wartość Bool
dzieliSIE n k = mod n k == 0

main :: IO ()
main = do
  print $ "tom"
  print $ "Dom" -- komentarz jednoliniowy
  print $ "Mam na imie " ++ imie
  print $ x
  print $ jestDUZEB 'B' -- wywołanie funkcji zwróci TRUE
  print $ jestDUZEB 'b' -- zwróci false
  print $ jestDODATNIA 5 
{- komentarz wieloliniowy -}
  -- ŹLE print $ jestUJEMNA -10
  print $ jestUJEMNA (-1)
  print $ jestZEREM 0
  print $ zwiekszOjeden 2
  print $ zSUMUJ 2 30
  print $ zSUMUJ 2 75.5562
-- poniższe funkcje to "to samo" ponieważ bie funkcje operują na dodawaniu, a dodawanie jest przemienne więc kolejność złożenia jest bez znaczenia
  print $ zwiekszOjeden (calc e f) -- funkcja calc jest argumentem innej funkcji
  print $ zSUMUJ e (zwiekszOjeden f)
-- tutaj kolejność ma znaczenie więc trzeba na to zwracać uwagę
  print $ zwiekszOjeden (zILOCZYNUJ e f) 
  print $ zILOCZYNUJ e (zwiekszOjeden f ) 
-- koniec
  print $ dzieliSIE 10 2 
  print $ dzieliSIE 10 3