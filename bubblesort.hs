trocaAdjacente :: [Int] -> [Int]
trocaAdjacente [] = []
trocaAdjacente [x] = [x]
trocaAdjacente (x:y:xs)
  | x > y     = y : trocaAdjacente (x:xs)
  | otherwise = x : trocaAdjacente (y:xs)

bubbleSort :: [Int] -> [Int]
bubbleSort lst = if lst == lst' then lst else bubbleSort lst'
  where lst' = trocaAdjacente lst

main :: IO ()
main = print (bubbleSort [5, 3, 8, 1, 2, 7])
