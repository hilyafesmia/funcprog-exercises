-- 1. Rancanglah,​ higher order function ​yang bekerja pada struktur data ekspresi dan memiliki semantik seperti: Fungsi map pada list, Fungsi fold pada tree
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

mapTree :: (a->b) -> Tree a -> Tree b
mapTree f (Leaf x)       = Leaf (f x)
mapTree f (Branch t1 t2) = Branch (mapTree f t1) 
                                   (mapTree f t2)

foldrTree :: (t1 -> t1 -> t1) -> (t2 -> t1) -> Tree t2 -> t1
foldrTree f start (Leaf x) = start x 
foldrTree f start (Branch t1 t2) = f (foldrTree f start t1) (foldrTree f start t2)

-- 2. Pada buku dan contoh sebelumnya, fungsi evaluasi didefinisikan secara rekursif. Gunakan higher order function y​ ang baru dibuat untuk mendefinisikan fungsi evaluasi tersebut. Pastikan memiliki makna semantik yang sama dengan definisi sebelumnya.


-- 3. Tambahkan konstruksi Let pada struktur data Ekspresi menjadi:
data Expr = C Float | Expr :+ Expr | Expr :- Expr
          | Expr :* Expr | Expr :/ Expr 
          | V [Char]
          | Let String Expr Expr      
    deriving Show


-- 4. Sesuaikan fungsi evaluasi versi sebelumnya (versi definisi rekursif).

subst :: String -expr -expr -expr

subst v0 e0 (V v1)         = if (v0 == v1) then e0 else (V v1)
subst v0 e0 (C c)          = (C c)
subst v0 e0 (e1 :+ e2)     = subst v0 e0 e1 :+ subst v0 e0 e2
subst v0 e0 (e1 :- e2)     = subst v0 e0 e1 :+ subst v0 e0 e2
subst v0 e0 (e1 :* e2)     = subst v0 e0 e1 :+ subst v0 e0 e2
subst v0 e0 (e1 :/ e2)     = subst v0 e0 e1 :+ subst v0 e0 e2
subst v0 e0 (Let v1 e1 e2) = Let v1 e1 (subst v0 e0 e2)

evaluate :: Expr -> Float

evaluate (C x) = x
evaluate (e1 :+ e2)    = evaluate e1 + evaluate e2
evaluate (e1 :- e2)    = evaluate e1 - evaluate e2
evaluate (e1 :* e2)    = evaluate e1 * evaluate e2
evaluate (e1 :/ e2)    = evaluate e1 / evaluate e2
evaluate (Let v e0 e1) = evaluate (subst v e0 e1)
evaluate (V v)         = 0.0   

-- 5. Sesuaikan fungsi evaluasi versi menggunakan fold.

-- 6. Bandingkan proses modifikasi yang perlu dilakukan.

-- 7. Gunakan fold untuk mendefinisikan fungsi terhadap struktur data tersebut seperti misalnya menghitung jumlah konstanta yang digunakan, jumlah operator, jumlah variable, melihat apakah ada pembagian by zero atau tidak. Dll

-- 8. Saat ini deklarasi Let hanya bisa menyatakan satu buah variable setiap deklarasi. Bila ada beberapa variable harus dinyatakan secara nested. Mungkinkan kita membuat deklarasi Let menyimpan list of variable? Bagaimana pengaruhnya terhadap implementasi sebelumnya baik versi rekursif maupun versi higher order function?

-- 9. Misalkan anda ingin tambahkan kemampuan pemanggilan fungsi yang menerima list of ekspresi dan menghasilkan sebuah ekspresi. Bagaimana mendeklarasikan tipe nya dan evaluasinya?

-- 10. Apakah anda sempat mempelajari tentang teknik ​De Bruijn Index​ yang efisien untuk variable binding (penggunaan Let untuk variable dan parameter binding pada pemanggilan fungsi)? Bagaimana menerapkan nya?