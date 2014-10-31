Simple usage of `java.lang.String::hashCode()` in Java and Objective-C 
translated using [j2objc](https://github.com/google/j2objc).

Apparently the two hash codes are not equal, for the same string.

### Usage

```sh
git clone https://github.com/clns/j2objc-hash-test.git
cd j2objc-hash-test
make
```

This will output something like this:

```sh
Java response:
"HashTest".hashCode() = 212838112
OSX response:
"HashTest".hashCode() = -2090220244
```

*Note: To speed up the process place the 
[j2objc dist](https://github.com/google/j2objc/releases) directory inside, 
otherwise it needs to be downloaded.*

#### Requirements

This was tested on OS X 10.10.
