LLVM_CONFIG := llvm-config-8
CLANGPP := clang++-8
OPTFLAGS := -O3

CFG := $(shell llvm-config-8 --cxxflags --ldflags --system-libs --libs core orcjit native)

all: toy

toy: toy.cpp KaleidoscopeJIT.h
	$(CLANGPP) -std=c++14 $(CFG) -g $< $(OPTFLAGS) -o $@

clean:
	rm toy
