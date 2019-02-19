fun myFind(P, []) = raise Fail "No such element "
  | myFind(P, X::XS) = if P(X) then X else myFind(P, XS)
