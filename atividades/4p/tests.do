restart

force -freeze sim:/ULA/a 0000 0, 1111 20 ns, 0001 40 ns, 0000 60 ns, 0010 80 ns, 0000 100 ns, 0001 120 ns, 0111 140 ns, 1001 160 ns;
force -freeze sim:/ULA/b 0000 0, 1111 20 ns, 0001 40 ns, 0000 60 ns, 0001 80 ns, 0000 100 ns, 0001 120 ns, 0001 140 ns, 1001 160 ns;
force -freeze sim:/ULA/ULAop 00 0, 00 20 ns, 00 40 ns, 01 60 ns, 01 80 ns, 10 100 ns, 10 120 ns, 10 140 ns, 10 160 ns, 11 180 ns;

run 200 ns