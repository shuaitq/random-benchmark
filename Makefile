PROJECT = benchmark
CPP = g++
CPPFLAGS = -std=c++11 -O2

benchmark: benchmark.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<

clean:
	rm -f benchmark