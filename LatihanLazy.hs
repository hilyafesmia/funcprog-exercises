-- 1. Uraikan langkah evaluasi dari ekspresi berikut: [​ x+y | x <- [1 .. 4], y <- [2 .. 4], x > y ]

-- 2. Buatlah fungsi divisor yang menerima sebuah bilangan bulat ​n​ dan mengembalikan list bilangan bulat positif yang membagi habisn
divisor n = [x | x <- [1..n], n `mod` x == 0]

-- 3. Buatlah definisi ​quick sort​ menggunakan list comprehension.
quickSort (x:xs) = quickSort [ y | y <- xs, y <= x ] ++ [x] ++ quickSort [ y | y <- xs, y > x ]

-- 4. Buatlah definisi infinite list untuk permutation.

-- 5. Buatlah definisi untuk memberikan infinite list dari bilangan prima menerapkan a l g o r i t m a S​ i e v e o f E r a s t o t h e n e s .​

-- 6. Buatlah definisi infinite list dari ​triple pythagoras.​ List tersebut terdiri dari element triple bilangan bulat positif yang mengikut persamaan pythagoras x​ 2​ ​ + y2​ ​ = z2​ ​ ​.
pythaTriple = [(x, y, z) | z <- [5..], y <- [4..z], x <- [3..y], x^2 + y^2 == z^2 ]