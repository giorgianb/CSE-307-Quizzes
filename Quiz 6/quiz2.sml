fun fold(F, B, []) = B
  | fold(F, B, X::XS) = fold(F, F(B, X), XS)
