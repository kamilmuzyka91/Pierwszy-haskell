-- Czy liczba ujemna
czyUjemna liczba =
  if liczba < 0
    then "Liczba ujemna"
    else "Liczba nieujemna"

-- Silnia
silnia n =
  if n < 2
    then 1
    else silnia (n - 1) * n

-- Silnia ze strażnikami
silniaStraznik n
  | n < 2 = 1
  | n >= 2 = silniaStraznik (n - 1) * n

-- Silnia ze strażnikami 2
silniaStraznikDwa n
  | n < 2 = 1
  | otherwise = silniaStraznik (n - 1) * n

-- Silnia wielokrotna
silniaWielokrotna 0 = 1
silniaWielokrotna 1 = 1
silniaWielokrotna n = silniaWielokrotna (n - 1) * n

-- Silnia case
silniaCase n = case n of
  0 -> 1
  1 -> 1
  n -> silniaCase (n - 1) * n

-- Ciąg Fibonacciego Strażnicy
fibonacciStraznik n
  | n < 3 = 1
  | n >= 3 = (fibonacci (n - 1) + fibonacci (n - 2))

-- Ciąg Fibonacciego Strażnicy 2
fibonacciStraznikDwa n
  | n < 3 = 1
  | otherwise = (fibonacci (n - 1) + fibonacci (n - 2))

-- Ciąg Fibonacciego
fibonacci n =
  if n < 3
    then 1
    else fibonacci (n - 1) + fibonacci (n - 2)

-- Ciąg Fibonacciego definiowany wielokrotnie
fibonacciDefinicja 1 = 1
fibonacciDefinicja 2 = 1
fibonacciDefinicja n = fibonacciDefinicja (n - 1) + fibonacciDefinicja (n - 2)

-- Ciąg Fibonacciego na case
fibonacciCase n = case n of
  1 -> 1
  2 -> 1
  n -> fibonacciCase (n - 1) + fibonacciCase (n - 2)

main :: IO ()
main = do
  print $ czyUjemna 5
  print $ czyUjemna (-3)

  print "Silnia"
  print $ silnia 1
  print $ silniaStraznik 5
  print $ silniaStraznikDwa 2
  print $ silniaWielokrotna 1
  print $ silniaCase 3

  print "Ciag Fibonacciego"
  print $ fibonacciStraznik 2
  print $ fibonacciStraznikDwa 5
  print $ fibonacci 2
  print $ fibonacciDefinicja 5
  print $ fibonacciCase 6