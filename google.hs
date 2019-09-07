coinBlocks :: [Int] -> Int
-- Sumar todos los numeros de una ls de numeros con unos multiplicadores:
-- Cada 3, x2 - Cada 5, x3 - Cada 15, x10

-- coinBlocks [1..1000]
coinBlocks (x:xs) = if (x `mod` 15) == 0
    x * 10 + coinBlocks xs 
    else if (x `mod` 5) == 0 
        x * 3 + coinBlocks xs 
        else if (x `mod` 3) == 0 
            x * 2 + coinBlocks xs 
            else x + coinBlocks xs

--