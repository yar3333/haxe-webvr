build: native-ts/**
	haxelib run refactor dts_to_haxe \
							--root-package webvr \
							--type-mapper fix_types.rules \
							--out-dir library native-ts

rebuild: clean build

clean:
	rm -rf library/webvr
