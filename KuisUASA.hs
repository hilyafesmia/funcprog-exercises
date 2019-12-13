-- 1. Given a list of words, remove from the list all those which contain four or more vowels and those which have same letter appearing twice (or more) in a row. In addition, any word containing numbers should have the numbers removed. Note that the number removal should happen before any other operations so that the subsequent operations can remove the word if necessary.

-- 2. Writeafunctionr​ otabc​thatchanges​a'​stob​ '​s,b​ ​'stoc​ ​'sandc​ '​stoa​ ​'sinastring. Only lowercase letters are affected.
rotabc = map abc 
  where abc 'a' = 'b'
        abc 'b' = 'c'
        abc 'c' = 'a'
        abc  x  =  x
        
-- 3. Definisikan fungsi ​last​, dengan menerapkan p​ oint-free style.​ Fungsi l​ ast​ tersebut menerima sebuah list dan mengembalikan elemen terakhir dari list tersebut.

-- 4. Sebagaimanamaterikuliahterkait​ComposingContract,​diperlihatkansebuah contract​ yang disebut Z​ ero-Coupon Bound (z​ cb​).​ Pemanggilan fungsi ​zcb t x k,​ menyatakan bahwa pada waktu ​t,​ ​contract​ ini akan senilai dengan ​x​ pada kurs ​k​ . Misalkan fungsi contract definisi lain sudah tersedia. Bagaimana mengkomposisikan nya untuk mendefinisikan fungsi z​ cb​. Fungsi yang boleh anda gunakan adalah antara lain: (w​ hen, give, and, or, at, scale, konst, one, zero)​
zcb ​::​ ​Date​ ​->​ D​ ouble​ -​ >​ ​Currency​ ​->​ ​Contract

-- 5. Tuliskan 5 baris potongan code (atau pseudo code) yang anda kontribusikan pada tugas kelompok. Jelaskan keterkaitan nya dengan penerapan ​Functional Style.​

-- 6. Tunjukkan penerapan ​Monad​ ataupun ​Applicative Functor​ pada tugas kelompok anda (boleh menjelaskan kontribusi rekan anda)

-- 7. Berikancontohsebuahfungsiyang​purefunction​dalamj​avascript​.

-- 8. Tuliskan potongan kode dan langkah penggunaan ​useReducer​ pada tutorial Todo-List ​untuk penambahan t​ odo-item.​

-- 9. Pada contoh paparan ​functional component​ di kelas, penggunaan ​useState​ untuk name​ dan s​ urname​ dapat disederhanakan lagi. Tuliskan ​pseudo code​ dan langkah penyederhanaannya.

-- 10. Definisikan konstanta ​True​ dan konstanta ​False​ dalam lambda calculus. Gunakan definisi tersebut untuk mendefinisikan statement ​if-then-else.​
