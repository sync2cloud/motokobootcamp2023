import {second_maximum} "./utils";
import {print} "mo:base/Debug";
actor {
    public query func second(xs : [Int]) : async Int {
        second_maximum(xs);
    } 
    ; print("llw")
}