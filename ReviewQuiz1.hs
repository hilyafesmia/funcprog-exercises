-- Beberapa soal quiz 1 yang tidak saya kerjakan dan/atau yang nilainya belum full score

-- 1. Tentukan tipe dan buat definisi fungsi maxTiga yang menerima 3 buah bilangan positif dam menghasilkan bilangan terbesar dari bilangan input tersebut
maxTiga :: Int -> Int -> Int -> Int
maxTiga a b c = [ a | a > b, a > c ] || [ b | b > a, b > c ] || [ c | c > a, c > b ]
maxTiga a b c = max (max a b) c
maxTiga a b c | (a >= b && a >= c) = a | (b >= c) = b | otherwise = c

-- 6. Definisikan fungsi primes yang merupakan sebuah infinite list dari bilangan prima menggunakan algoritma Sieve of Erastothenes
-- Ada pada file LatihanLazy.hs

-- 7. Tentukan tipe dan buat definisi fungsi flip
-- Ada pada file LatihanHOF1.hs

-- Soal 8, 9, 10 menggunakan kodingan monad robot
-- 8. Tentukan tipe fungsi updateState
updateState :: (RobotState -> RobotState) -> Robot ()

-- 9. Definisikan fungsi turnRight
turnRight :: Robot()
turnRight = updateState (\s -> s {facing = right (facing s)})

-- 10. Tentukan tipe fungsi toEnum pada fungsi right