fun encode [] = []
  | encode (X::XS) = encode_accumulator XS X 1
and encode_accumulator [] E C = [(C, E)]
  | encode_accumulator (X::XS) E C =
  if X = C then
    encode_accumulator XS E (C + 1)
  else
    (C, E)::encode_accumulator XS X 1;
