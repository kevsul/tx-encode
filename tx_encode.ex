address = "4a53cd2e73ddabf3aacf7e1142c42589e72f2808"
value = 10000000000000

zero_in = [0, 0, 0]
zero_out = [<<0::160>>, <<0::160>>, 0]

inputs = List.duplicate(zero_in, 4)
outputs = [[Base.decode16!(address, case: :mixed), <<0::160>>, value]] ++ List.duplicate(zero_out, 3)

tx = [inputs, outputs] |> ExRLP.encode()

IO.puts("0x" <> Base.encode16(tx))
