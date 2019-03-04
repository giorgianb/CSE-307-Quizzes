fun compress [] = []
  | compress [X] = [X]
  | compress (X1::X2::XS) =
  if X1 = X2 then
    compress (X1::XS)
  else
    X1::compress (X2::XS);
