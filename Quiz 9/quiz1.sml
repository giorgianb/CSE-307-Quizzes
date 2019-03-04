fun last [] = raise Fail "Empty list."
  | last [X] = X
  | last (X::XS) = last XS;

