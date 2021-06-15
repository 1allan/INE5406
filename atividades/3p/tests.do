restart

force -freeze sim:/comparador/b 00000000 0, 00000001 20 ns, 00000010 40 ns;
force -freeze sim:/comparador/a 00000000 0, 00000010 20 ns, 00000001 40 ns;

run 60 ns