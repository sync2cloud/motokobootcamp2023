import {sort; reverse} "mo:base/Array";
import {compare} "mo:base/Int";
import {compose} "mo:base/Func";

module {

    // function `second_maximum` consumes
    // an array of integers: `xs`
    // it returns the second largest number in `xs`.
    // second_maximum :: [Int] -> Int
    // TODO: remove duplicates
    public func second_maximum(xs : [Int]) : Int {
       let ys : [Int] = reverse(sort(xs, compare));
       if (ys.size() > 1) ys[1] else 0;
       //8
    };

};
