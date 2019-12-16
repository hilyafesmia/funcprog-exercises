-- 1. Given a list of words, remove from the list all those which contain four or more vowels and those which have same letter appearing twice (or more) in a row. In addition, any word containing numbers should have the numbers removed. Note that the number removal should happen before any other operations so that the subsequent operations can remove the word if necessary.
weirdFilter = filter isThreeOrLessVowels
              . filter isNotAppearTwiceInARow
              . map numberRemoval
              
isVowel x = x `elem` "aiueoAIUEO"
countVowel = length . filter isVowel
isThreeOrLessVowels str = countVowel str < 4

isNotAppearTwiceInARow (fst:scd:ls)  | (fst == scd)  = False
isNotAppearTwiceInARow (fst:ls)                      = isNotAppearTwiceInARow ls
isNotAppearTwiceInARow []                            = True

notNumber x = x `notElem` "1234567890"
numberRemoval = filter notNumber

-- 2. Writeafunctionr​ otabc​thatchanges​a'​stob​ '​s,b​ ​'stoc​ ​'sandc​ '​stoa​ ​'sinastring. Only lowercase letters are affected.
rotabc = map abc 
  where abc 'a' = 'b'
        abc 'b' = 'c'
        abc 'c' = 'a'
        abc  x  =  x
        
-- 3. Definisikan fungsi ​last​, dengan menerapkan p​ oint-free style.​ Fungsi l​ ast​ tersebut menerima sebuah list dan mengembalikan elemen terakhir dari list tersebut.
last = head . reverse

-- 4. Sebagaimanamaterikuliahterkait​ComposingContract,​diperlihatkansebuah contract​ yang disebut Z​ ero-Coupon Bound (z​ cb​).​ Pemanggilan fungsi ​zcb t x k,​ menyatakan bahwa pada waktu ​t,​ ​contract​ ini akan senilai dengan ​x​ pada kurs ​k​ . Misalkan fungsi contract definisi lain sudah tersedia. Bagaimana mengkomposisikan nya untuk mendefinisikan fungsi z​ cb​. Fungsi yang boleh anda gunakan adalah antara lain: (w​ hen, give, and, or, at, scale, konst, one, zero)​
zcb :: Date -> Double -> Currency -> Contract
zcb t x k = when (at t) (scale x (one k))

-- 5. Tuliskan 5 baris potongan code (atau pseudo code) yang anda kontribusikan pada tugas kelompok. Jelaskan keterkaitan nya dengan penerapan ​Functional Style.​


-- 6. Tunjukkan penerapan ​Monad​ ataupun ​Applicative Functor​ pada tugas kelompok anda (boleh menjelaskan kontribusi rekan anda)
Teman kelompok saya menerapkan IO monad menggunakan Haskell
IO monad dipakai dalam membaca file csv yang berisi daftar harga mobil dan daftar bank

-- 7. Berikancontohsebuahfungsiyang​purefunction​dalamj​avascript​.
A function is considered pure, when:
It return a value computed using only the arguments passed to it.
It avoids mutating its arguments, or any other external variables.
A pure function always returns the same values given the same arguments.

function isIndexPage() {
  return window.location.pathname === "/";
}

function add(a,b) {
  returnn a + b;
}

-- 8. Tuliskan potongan kode dan langkah penggunaan ​useReducer​ pada tutorial Todo-List ​untuk penambahan t​ odo-item.​
const [todos, dispatch] = useReducer(toDoReducer, initialState);

const toDoReducer = (state, action) => {
  switch (actionn.type) {
    case "ADD_TODO": {
      return old TODOs annd new TODO
    }
    default: {
      return state;
  }
}

-- 9. Pada contoh paparan ​functional component​ di kelas, penggunaan ​useState​ untuk name​ dan s​ urname​ dapat disederhanakan lagi. Tuliskan ​pseudo code​ dan langkah penyederhanaannya.
function useFormInput(initialValue) {
  const [value, setValue] = useState(initialValue);
  function handleChange(e) {
    setValue(e.target.value);
  }
  return {
    value,
    onChange: handleChange,
  };
}

-- 10. Definisikan konstanta ​True​ dan konstanta ​False​ dalam lambda calculus. Gunakan definisi tersebut untuk mendefinisikan statement ​if-then-else.​
True = λxy.x 
False = λxy.y

if P then E1 else E2 (ditulisnya PE1E2)

Jika P == true:
= PE1E2
= (true)E1E2
= (λxy.x)E1E2
= E1

Jika P == false:
= PE1E2
= (false)E1E2
= (λxy.y)E1E2
= E2


