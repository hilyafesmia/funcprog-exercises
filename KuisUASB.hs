-- 1. Given a sentence, define a function called capitalise which returns the same sentence with all words capitalised except the ones from a given list. (source: https://www.fer.unizg.hr/)
-- > capitalise :: String -> [String] -> String
-- > capitalise "this is a sentence." ["a", "is"]
-- "This is a Sentence."

-- 2. Write a definition of composition function (c​ ompose​) similar to the compose/dot operator ( •​ ​ ) in Haskell prelude, that accept two functions and return a new function. Define the type of the c​ ompose​ function. 

-- 3. Definisikan fungsi ​last​, dengan hanya menggunakan f​ oldr​ atau ​foldl.​ ​ Fungsi ​last tersebut menerima sebuah list dan mengembalikan elemen terakhir dari list tersebut.

-- 4. Sebagaimanamaterikuliahterkait​ComposingContract,​diperlihatkansebuah contract​ yang disebut Z​ ero-Coupon Bound (z​ cb​).​ Pemanggilan fungsi ​zcb t x k,​ menyatakan bahwa pada waktu ​t,​ ​contract​ ini akan senilai dengan ​x​ pada kurs ​k​ . Misalkan fungsi contract definisi lain sudah tersedia. Bagaimana mengkomposisikan nya untuk mendefinisikan fungsi z​ cb​. Fungsi yang boleh anda gunakan adalah antara lain: (w​ hen, give, and, or, at, scale, konst, one, zero)​
-- zcb ​::​ ​Date​ ​->​ D​ ouble​ -​ >​ ​Currency​ ​->​ ​Contract

-- 5. Tuliskan 5 baris potongan code (atau pseudo code) yang anda kontribusikan pada tugas kelompok. Jelaskan keterkaitan nya dengan ​Higher Order Function​.
     
-- 6. Tunjukkan penerapan​ ​Point-Free Style​ ​pada tugas kelompok anda (boleh menjelaskan kontribusi rekan anda)

-- 7. Berikan contoh ​referential transparency.​

-- 8. Tuliskan potongan kode dan langkah penggunaan ​useReducer​ pada tutorial Todo-List ​untuk t​ oggle-completed​ ​todo-item.​
const [todos, despatch] = useReducer(toDoReducer, initialState)
const toDoReducer = (state, action) => {
  switch(action.type) {
    ...
    case 'TOGGLE_COMPLETE': {
      return state.map((item) =>
        item.id === action.id ? {...item, complete: !item.complete}
        : item
      )
    }
  }
}

-- 9. Pada contoh paparan ​functional component​ di kelas, implementasi menggunakan Hooks Effect​ dalam meng​-edit document.title s​ ecara​ real-time​ dapat di-reuse dan dijadikan​pure-function​.Tuliskanp​ seudocode​danlangkahpenyederhanaannya.
const useDocumentTitle = (title) => {
     useEffect(() => {
          document.title = title;
     }, [title])
}

-- 10. Definisikankonstanta​True​,konstanta​False​danoperatorA​ nd​dalamlambda calculus. Tunjukan bahwa ​True And False = False.​
