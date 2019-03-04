fun range (a : int, b : int) : int list =
  if a = b then
    [a]
  else if a < b then
    a::range (a + 1, b)
 else
   a::range (a - 1, b);
