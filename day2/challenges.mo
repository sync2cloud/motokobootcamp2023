import Debug "mo:base/Debug";
import { compose } "mo:base/Func";
import { foldRight = foldr } "mo:base/Array";
import { add } "mo:base/Int";
import { filter; size } "mo:base/Iter";
import { equal } "mo:base/Char";
import { tokens } "mo:base/Text";

actor {
    let sum : [Int] -> Int = func xs = foldr<Int, Int>(xs, 0, add);

    func fact(n : Nat) : Nat = do {
        switch n {case 0  1; case _  n * fact(n - 1)}
    };

    // function average_array takes an array of integers
    // it returns the average value of the elements in the array.
    public query func average_array(xs : [Int]) : async Int {
        let size = xs.size();
        if (size > 0) { sum(xs) / size } else 0;
    };

    // function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    // e.g.: `student` contains 2 `0x0074`
    public query func count_character(t : Text, c : Char) : async Nat {
        let xs = filter(t.chars(), func(x : Char) : Bool = x == c);
        size(xs);
    };

    // function factorial that takes a natural number n and returns the factorial of n.
    public query func factorial(n : Nat) : async Nat {
        fact(n);
    };

    // function number_of_words takes a sentence
    // it returns the number of words in the sentence
    public query func number_of_words(t : Text) : async Nat {
        size(tokens(t, #char(' ')));    
    };

    //function find_duplicates that takes an array 
    // of natural numbers and returns a new array containing
    //all duplicate numbers.
    public query func find_duplicates(a : [Nat]) : async [Nat] {
        [8]
    };

    // Write a function convert_to_binary that takes a natural number n 
    // and returns a string representing the binary representation of n.
    public query func convert_to_binary(n : Nat) : async Text {
        "TODO"
    }
    ; Debug.print("Hello, terminal")
}
