fun minMax [X] = (X, X)
  | minMax (X::XS) = 
  let 
    val (min, max) = minMax XS
  in
    if X < min then
      (X, max)
    else if X > max then
      (min, X)
     else
       (min, max)
  end
  | minMax [] = raise Fail "No elements"
