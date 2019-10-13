-- 1. Define the length function using map and sum.
length :: Num a1 => [a2] -> a1
length list = sum(map (\x -> 1) list)

-- 2. What does map (+1) (map (+1) xs) do? Can you conclude anything in general about properties of map f (map g xs), where f and g are arbitrary functions?
-- It will add 1 to every element of xs (inner map), then those elements will be added by 1 once again (outer map)
-- Yes you can conclude the properties of map f (map g xs) as long as they exist and can be operated

-- 3. Give the type of, and define the function iter so that iter n f x = f(f(...(fx))) where f occurs n times on the right-hand side of the equation
iter :: Int -> (a -> a) -> a -> a
iter n f x = iterate f x !! n

-- 4. What is the type and effect of the following function? \n -> iter n succ
-- It is an anonymous function that takes 2 parameters; n as the number of nested function and succ as the function that takes 1 parameter which will be incremented by one

-- 5. How would you define the sum of the squares of the natural numbers 1 to n using map and foldr?
sumOfSquares :: (Num b, Enum b) => b -> b
sumOfSquares n = foldr (+) 1 (map (^2) [2..n])

-- 6. How does the function behave?
mystery xs = foldr (++) [] (map sing xs)
  where
    sing x = [x]
-- It will move the element from xs to another list by mapping each element of xs into a list of itself then appending it to an empty list

-- 7. If id is the polymorphic identity function, defined by id x = x, explain the behavior of the expressions (id.f) (f.id) (id f)! If f is of type Int -> Bool, at what instance of its most general type a -> a is id used in each case?
-- (id . f) x is equal to id (f x) and cannot be applied as (id . f x)
-- (f . id) x is equal to f (id x) and cannot be applied as (f . id x)
-- (id f) x is equal to id (f x) and can be applied as (id f 5)
-- it will be Integer a -> a

-- 8. Define a function composeList which composes a list of functions into a single function. You should give the type of composeList, and explain why the function has this type. What is the effect of your function on an empty list of functions?

-- 9. Define the function flip::(a->b->c)->(b->a->c) which reverses the order in which its function argument takes its arguments
