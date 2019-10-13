-- List Comprehension to Higher Order Fucntion
-- 1. [x+1|x<-xs]
fun1 xs = map (+1) xs

-- 2. [x+y|x<-xs,y<-ys]
fun2 xs ys = concat (map (\x -> map (\y -> x+y) ys) xs)

-- 3. [x+2|x<-xs,x>3]
fun3 xs = map (+2) (filter (>3) xs)

-- 4. [x+3|(x,_)<-xys]
fun4 xys = map (\(x,_) -> x+3) xys

-- 5. [x+4|(x,y)<-xys,x+y<5] 
fun5 xys = map (\(x,_) -> x+4) (filter (\(x,y) -> x+y < 5) xys)

-- 6. [x+5|Justx<-mxs]
fun6 mxs = 

-- Higher Order Fucntion to List Comprehension
-- 1. map (+3) xs
other1 xs = [x + 3 | x <- xs]

-- 2. filter (>7) xs
other2 xs = [x | x <- xs, x > 7]

-- 3. concat (map (\x -> map (\y -> (x,y)) ys) xs) 
other3 xs ys = [(x,y) | x <- xs, y <- ys]

-- 4. filter (>3) (map (\(x,y) -> x+y) xys)
other4 xys = [x + y | (x,y) <- xys, x+y > 3]