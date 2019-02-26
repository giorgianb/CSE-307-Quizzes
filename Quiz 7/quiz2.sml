fun longestSublist L = maxSublist (suffixes L)
and maxSublist [] = []
  | maxSublist (X::XS) = 
  let
    val S = maxSublist XS
    val L = subListLength X
  in
    if L > (length S) then
      take L X
    else
      S
  end
and subListLength [] = 0
  | subListLength [X] = 1
  | subListLength (X1::X2::XS) = 
  if X1 < X2 then 
    1 + subListLength (X2::XS)
  else 
    1
and take N [] = []
  | take 0 L = []
  | take N (X::XS) = if N > 0 then X::take (N - 1) XS else []
and suffixes L = suffixAccumulator L [L]
and suffixAccumulator [] A = A
  | suffixAccumulator (X::XS) A = suffixAccumulator XS (XS::A);
