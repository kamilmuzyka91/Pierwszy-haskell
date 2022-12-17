-- czy ujemna

czyuje x = if x < 0 then "ujemna" else "nieujemna"

--  zadanie silnia

sil01 n =
  if n == 0
    then 1
    else n * sil01 (n -1)

-- silnia strażnicy (guards)

sil02 n
  | n < 2 = 1
  | n > 1 = n * sil02 (n -1)

-- silnia 2b

sil03 n
  | n < 2 = 1
  | otherwise = n * sil02 (n -1)

-- silnia iteracja
  sil04 0 = 1
  sil04 n = n * sil04 (n*1)

-- silnia case

   sil05 n = case n of 0 -> 1 
n -> n * sil05 (n-1)

-- fibo 

fib01 n
  | n < 3 = 1
  | fib01 (n-1) + fib01 (n-2)

main :: IO ()
main = do
  print $ czyuje 10
  print $ sil01 10
  print $ sil02 10
  print $ sil03 10
  print $ sil04 10
  print $ sil05 10
  print $ fib01 10