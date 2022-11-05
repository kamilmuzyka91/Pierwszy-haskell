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

-- krotki - tuple czyli nawiasy
student1 = ("Kamil", "Nowak", 15654878)
student2 = ("Jan", "Kowalski", 12354778)
student3 = ("Tomasz", "Jaskiniowiec", 58754778)

-- lista
grupa = [student1, student2] -- to nie jest zmienna, jest to wartość, którą zdefiniowaliśmy
kolejnySTUDENT x lista = [x]++lista

-- lista, która składa się z tupli
-- student, przedmiot, ocena
oceny1 = (student1, [("JiPP", 5.0), ("WdP", 3)])

-- lista w tuplach czyli dodanie listy żeby można było dodać więcej ocen
-- wszystkie pozycje z liście mają ten sam typ ale ich ilość jest nieograniczona
-- za to tuple mogą przyjmować różne typy danych dlatego można łączyć je w taki sposób
oceny1 = (student1, [("JiPP", [5.0,4.5]), ("WdP", 3)])

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

  print $ student1
  print $ student2
  print $ grupa
  print $ kolejnySTUDENT student3 grupa
  print $ oceny1