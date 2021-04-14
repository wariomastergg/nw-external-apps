apps.tar: apps/KhiCAS/app.elf apps/Periodic/app.elf apps/Nofrendo/app.elf apps/Peanut-GB/app.elf apps/HexEdit/app.elf apps/BadApple/app.elf 
	./archive $@ $^

flash: apps.tar
	dfu-util -i 0 -a 0 -s 0x90200000 -D $^

api/libapi.a:
	make -C api

apps/Periodic/app.elf: api/libapi.a
	make -C apps/Periodic

apps/Peanut-GB/app.elf: api/libapi.a
	make -C apps/Peanut-GB

apps/KhiCAS/app.elf: api/libapi.a
	make -C apps/KhiCAS

apps/Nofrendo/app.elf: api/libapi.a
	make -C apps/Nofrendo

apps/HexEdit/app.elf: api/libapi.a
	make -C apps/HexEdit

apps/BadApple/app.elf: api/libapi.a
	make -C apps/BadApple

clean:
	rm -f apps.tar
	make -C api clean
	make -C apps/Periodic clean
	make -C apps/KhiCAS clean
	make -C apps/Nofrendo clean
	make -C apps/Peanut-GB clean
	make -C apps/HexEdit clean
	make -C apps/BadApple clean

