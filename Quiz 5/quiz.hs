member e [] = False;
member e (x:xs)
    | e == x = True
    | otherwise = member e xs

union l [] = l
union [] l = l
union (x:xs) l
    | member x l = union xs l
    | otherwise = x:union xs l

intersection l [] = []
intersection [] l = []
intersection (x:xs) l
    | member x l = x:intersection xs l
    | otherwise = intersection xs l

subset [] l = True
subset l [] = False
subset (x:xs) l
    | member x l = subset xs l
    | otherwise = False

equal s1 s2 = subset s1 s2 && subset s2 s1

minus l [] = l
minus [] l = []
minus (x:xs) l 
    | member x l = minus xs l
    | otherwise = x:minus xs l

cproduct l [] = []
cproduct [] l = []
cproduct (x:xs) l = single_product x l ++ cproduct xs l
single_product e [] = []
single_product e (x:xs) = [e, x]:single_product e xs

powerset l = powerset_accumulator [] l
powerset_accumulator s [] = [s]
powerset_accumulator s (x:xs) = (powerset_accumulator (x:s) xs) ++ (powerset_accumulator s xs)
