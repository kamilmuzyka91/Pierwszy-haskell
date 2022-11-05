imie = "Kamil"
x = 5

jestDUZEB y = y == 'B' -- funkcja
jestDODATNIA a = a > 0 -- czy liczba jest dodatnia
jestUJEMNA c = c < 0
jestZEREM d = d == 0

zwiekszOjeden d = d + 1
zSUMUJ a b = a + b


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
  print $ zSUMUJ 2 3
