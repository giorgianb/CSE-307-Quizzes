fun kth [] n = raise Fail "Empty list"
  | kth (X::XS) n =
    if n < 0 then
      raise Fail "Invalid Index"
    else if n = 0 then
      X
    else
      kth XS (n - 1);
