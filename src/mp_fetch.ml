
let build_fetch ~handler ?(nb_rows = Int64.one) () = 
  BITSTRING 
    {
      handler : Mp_bitstring.compute32 : int, unsigned, littleendian;
      nb_rows : Mp_bitstring.compute32 : int, unsigned, littleendian
    }
