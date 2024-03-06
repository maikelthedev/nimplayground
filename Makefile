.PHONY: run test


make:
	nim c --verbosity=0 --hints:off -d:ssl  hello.nim 

run: 
	nim r --verbosity=0 --hints:off -d:ssl  hello.nim 

test:
	rm tests/hello_test ; nim r --verbosity=0 --hints:off  -d:ssl  tests/hello_test.nim --output-level=VERBOSE
