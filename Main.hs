imie = "Kamil"
x = 5

jestDUZEB y = y == 'B' -- funkcja

main :: IO ()
main = do
  print $ "tom"
  print $ "Dom" -- komentarz jednoliniowy
  print $ "Mam na imie " ++ imie
  print $ x
  print $ jestDUZEB 'B' -- wywołanie funkcji zwróci TRUE
  print $ jestDUZEB 'b' -- zwróci false
{- komentarz wieloliniowy -}

