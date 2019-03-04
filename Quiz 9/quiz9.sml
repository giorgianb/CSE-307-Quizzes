fun decode [] = []
  | decode ((C, E)::XS) =
  if C <= 0 then
    decode XS
  else
    E::decode ((C - 1, E)::XS)
