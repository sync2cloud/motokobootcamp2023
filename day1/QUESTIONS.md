1. stable memory is limited to 8 GB, Wasm heap is limited to 4GB.
2. Because counter is immutable, you can't reassign it a different value.
3. variable: `message` is of type `Text`; it can't be initialized as 0, which is of type `Nat`.
if the intend of the funciton `change_message` is to update the stable varibale `message`, it won't work. To make it work as intented, get rid of the `query` keyword.
4. False