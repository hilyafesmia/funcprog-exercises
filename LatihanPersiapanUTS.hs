-- 1. Rancanglah,​ higher order function ​yang bekerja pada struktur data ekspresi dan memiliki semantik seperti: Fungsi map pada list, Fungsi fold pada tree
-- mapTree :: (a->b) -> Tree a -> Tree b
    
-- mapTree f (Leaf x)       = Leaf (f x)
-- mapTree f (Branch t1 t2) = Branch (mapTree f t1) 
--                                    (mapTree f t2)


-- 2. Pada buku dan contoh sebelumnya, fungsi evaluasi didefinisikan secara rekursif. Gunakan higher order function y​ ang baru dibuat untuk mendefinisikan fungsi evaluasi tersebut. Pastikan memiliki makna semantik yang sama dengan definisi sebelumnya.


-- 3. Tambahkan konstruksi Let pada struktur data Ekspresi menjadi:
-- ​data​​ Expr​​ = ​C Float | Expr :+ Expr | Expr :- Expr 
--          | Expr :* Expr | Expr :/ Expr
--          | Let String Expr Expr ​
--      deriving​ Show


-- 4. Sesuaikan fungsi evaluasi versi sebelumnya (versi definisi rekursif).


-- 5. Sesuaikan fungsi evaluasi versi menggunakan fold.