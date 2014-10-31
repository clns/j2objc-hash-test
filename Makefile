all: dist/HashTest.class dist/HashTest
	@echo Java response:
	@cd dist && java HashTest
	@echo OSX response:
	@cd dist && ./HashTest

dist/HashTest: src/HashTest.m src/main.m
	@clang -framework Foundation -framework Security \
      -Ij2objc/include -Lj2objc/lib -ljre_emul -lz -ObjC \
      $^ -o $@

src/HashTest.m: src/HashTest.java | j2objc
	@j2objc/j2objc -d src $<

dist/HashTest.class: src/HashTest.java
	@mkdir -p dist
	@javac -d dist $^

j2objc: 
	@echo "'j2objc' doesn't exist, it will be downloaded now. \
This may take some time, you can skip it by placing the dist of j2objc here."
	@curl -L -o j2objc.tgz https://www.dropbox.com/s/ffob0e7lciwoxby/j2objc.tgz?dl=0
	@tar xzf j2objc.tgz
	@rm -f j2objc.tgz

clean: 
	@rm -rf dist src/HashTest.m src/HashTest.h j2objc.tgz

.PHONY: all clean
