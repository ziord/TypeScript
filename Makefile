.Default:
	build

build:
	make clean && gulp

clean:
	rm -rf built


.PHONY: clean build
