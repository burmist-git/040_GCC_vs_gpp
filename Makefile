all: libmandelg++.so libmandelGCC.so

libmandelg++.so:mandel.cpp
	g++ -shared -O3 -Wall -std=c++17 -fPIC $< -o $@

libmandelGCC.so:mandel.cpp
	gcc -shared -O3 -Wall -std=c++17 -fPIC -xc++ -lstdc++ $< -o $@

printLD:
	$(info export LD_LIBRARY_PATH=$${LD_LIBRARY_PATH}:.)
clean:
	rm -rf *.o *.so *~
