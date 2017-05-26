CFLAGS = -Wall -g

HelloWorld: libhello.jnilib HelloWorld.class
	java -Djava.library.path=. $@

# Use libhello.so in linux
libhello.jnilib: HelloWorld.o
	cc -g -shared -o $@ $<

HelloWorld.o: HelloWorld.cpp HelloWorld.h
	cc -I"/System/Library/Frameworks/JavaVM.framework/Headers" -fPIC $(CFLAGS) -c $< -o $@

HelloWorld.class: HelloWorld.java
	javac $<

.PHONY : clean
clean:
	rm -f libhello.jnilib HelloWorld.o HelloWorld.class
