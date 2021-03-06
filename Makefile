build:
	cd st && sudo make -s install
	cd dmenu && sudo make -s install
	cd dwmblocks && sudo make -s install
	cd dwm && sudo make -s install

clean:
	rm -rf ./**/config.h ./**/blocks.h
	cd dwm && make -s clean
	cd st && make -s clean
	cd dmenu && make -s clean
	cd dwmblocks && make -s clean

update:
	git submodule update --remote
