-- 1. Uraikan langkah evaluasi dari ekspresi berikut: [​ x+y | x <- [1 .. 4], y <- [2 .. 4], x > y ]
-- Pertama diambil nilai x = 1, lalu dicek untuk setiap elemen y apakah nilai x > y. Kalau nilai x dan y memenuhi syarat, x dan y akan dijumlahkan. Lakukan untuk setiap kombinasi x dan y (mulai dari x = 1 dan y = 2 sampai x = 4 dan y = 4)
-- x | y | x + y | list
-- 1 | 2 |       |  []
-- 1 | 3 |       |  [] 
-- 1 | 4 |       |  [] 
-- 2 | 2 |       |  [] 
-- 2 | 3 |       |  [] 
-- 2 | 4 |       |  [] 
-- 3 | 2 | 5     |  [5]
-- 3 | 3 |       |  [5]
-- 3 | 4 |       |  [5]
-- 4 | 2 | 6     |  [5, 6]
-- 4 | 3 | 7     |  [5, 6, 7]
-- 4 | 4 |       |  [5, 6, 7]
-- Result : [5, 6, 7]

-- 2. Buatlah fungsi divisor yang menerima sebuah bilangan bulat ​n​ dan mengembalikan list bilangan bulat positif yang membagi habisn
divisor n = [x | x <- [1..n], n `mod` x == 0]

-- 3. Buatlah definisi ​quick sort​ menggunakan list comprehension.
quickSort (x:xs) = quickSort [ y | y <- xs, y <= x ] ++ [x] ++ quickSort [ y | y <- xs, y > x ]

-- 4. Buatlah definisi infinite list untuk permutation.
perms [] = [[]]
perms ls = [ x:ps | x <- ls, ps <- perms (ls\\[x]) ] 

-- 5. Buatlah definisi untuk memberikan infinite list dari bilangan prima menerapkan a l g o r i t m a S​ i e v e o f E r a s t o t h e n e s .​
sieveOfErastothenes [] = []
sieveOfErastothenes (x:xs) = x : (sieveOfErastothenes [ y | y <- xs, y `mod` x /= 0, y /= x])

-- 6. Buatlah definisi infinite list dari ​triple pythagoras.​ List tersebut terdiri dari element triple bilangan bulat positif yang mengikut persamaan pythagoras x​ 2​ ​ + y2​ ​ = z2​ ​ ​.
pythaTriple = [(x, y, z) | z <- [5..], y <- [4..z], x <- [3..y], x^2 + y^2 == z^2 ]

-- Other exercises in  class

-- FIBONACCI SEQUENCE
-- Helper function: Take one element of each list and add them
add [] [] = []
add (a:as) (b:bs) = (a+b) : (add as bs)
fibs  =  1 : 1 : add fibs (tail fibs)

-- Summing every element of a list
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- A problem, due to the mathematician W. R. Hamming, is to write a program that produces an infinite list of numbers with the following properties:
-- a. The list is in ascending order, without duplicates.
-- b. The list begins with the number 1.
-- c. If the list contains the number x, 
--    then it also contains the numbers 2x, 3x, and 5x.
-- d. The list contains no other numbers (other than mentioned above).
merge xxs@(x:xs) yys@(y:ys) | x == y = x : merge xs ys 
                            | x < y  = x : merge xs yys 
                            | x>y    = y : merge xxs ys

hamming = 1 : merge (map (2*) hamming) 
                    (merge (map (3*) hamming) (map (5*) hamming))