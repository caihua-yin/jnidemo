#include "jni.h"
#include "HelloWorld.h"

JNIEXPORT void JNICALL Java_HelloWorld_displayHelloWorld(JNIEnv *, jobject) {
    printf("Hello JNI!\n");
    return;
}
