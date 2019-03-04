fun pack L = pack_accumulator L []
and pack_accumulator [] A = [A]
  | pack_accumulator (X::XS) [] = pack_accumulator XS [X]
  | pack_accumulator (X::XS) (A::AS) = 
  if X = A then
    pack_accumulator XS (X::A::AS)
  else
    (A::AS)::pack_accumulator XS [X];
