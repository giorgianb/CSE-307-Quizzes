fun palindrome L = L = reverse L
and reverse L = reverse_accumulator L []
and reverse_accumulator [] A = A
  | reverse_accumulator (X::XS) A = reverse_accumulator XS (X::A);
