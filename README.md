# Lua_AES

This is an AES implementation in pure Lua version 5.1. It has also been tested with LuaJIT. Currently only 256-bit keys encryption keys are supported along with the ECB block cypher mode. I made this for my personal use but have made it public under the Apache v2 license if you would like to use it. If you review the code, feel free to give me some feedback. If you find a bug, would like a feature, or have a question please file an issue.

Since Lua 5.1 has no native XOR support, I've implemented a lookup table for 4 bit XOR operations and perform two lookups for a speedy 8 bit XOR implementation. Multiplication in the Rijndael Galois field is also done via lookup tables. The source functions independent from any Lua or native library and is completely contained in under 400 lines, making it perfect for embedded applications where access is restricted.

This implementation assumes that the machine running the encryption/decryption is secure and makes no attempt to cleanse used memory or prevent timing attacks. Information passing through may be very vulnerable in some applications due to the way memory is allocated and system memory visability.
