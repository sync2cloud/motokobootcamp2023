import Nat "mo:base/Nat";
actor {

    var counter : Nat = 0;

    // multiply takes two natural numbers and produces their product.
    public query func multiply(n : Nat, m : Nat) : async Nat {
        return Nat.mul(n, m);
    };

    // volume consumes the edge of a cube: `n` 
    // of type Nat; it produces the volume of that cube
    public query func volume(n : Nat) : async Nat {
        return Nat.pow(n, 3);
    };

    // hours_to_minutes consumes the number of hours: `n` 
    // it prdocues the number of minutes of
    public query func hours_to_minutes (n: Nat) : async Nat {
        return n * 60;
    };

    public func set_counter(n : Nat) : async () {
        counter := n;
    };

    public query func get_counter() : async Nat {
        counter;
    };

    public query func test_divide(n : Nat, m : Nat) : async Bool {
        Nat.rem(m, n) == 0;
    };

    public query func is_even(n : Nat) : async Bool {
        Nat.rem(n, 2) == 0;
    }

};
