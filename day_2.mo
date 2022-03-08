import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Nat32 "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Prim "mo:prim";
import Text "mo:base/Text";

actor {

// Challenge 1 : Write a function nat_to_nat8 that converts a Nat n to a Nat8. Make sure that your function never trap.

  public func nat_to_nat8(n : Nat) : async Nat8 {
    if (n > 256)
      Debug.trap("DNE");
    let nat8 = Nat8.fromNat(n);
    return(nat8);
  };

// Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.
  public func max_number_with_n_bits (n: Nat) : async Nat {
    return 2**n -1;
  };
// Challenge 3 : Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number.
// Note : decimal_to_bits(255) -> "11111111".
  public func decimal_to_bits (n: Nat) : async Text {
    if (n == 0) {
      Debug.trap "Bad Choice. Choose another number"
    };
    var tmp: Nat = n;
    var binary: Nat = 0;
    var counter: Nat = 0;
    while (tmp > 0) {
      binary := ((tmp % 2)*(10**counter)) + binary;
      tmp := (tmp/2);
      counter += 1;
    };
    var output = Nat.toText(binary);
    return output
  };

// Challenge 4 : Write a function capitalize_character that takes a Char c and returns the capitalized version of it.
  public func capitalize_character (c: Char) : async Text {
    // var c = 'b';
    var tmp : Nat32 = Char.toNat32(c);
    tmp -= 32;
    var output: Char = Char.fromNat32(tmp);
    return Char.toText(output);
  };

// Challenge 5 : Write a function capitalize_text that takes a Text t and returns the capitalized version of it.
  // public func capitalize_text (t: Text) : async Text {
  //   for (char in t.chars()){
  //     var output = capitalize_character(char);
  //     var tmp = Text.join("", Text.toIter(output));
  //   };
  //   return tmp;
  // };

  // public func capitalize_text (t: Text) : async Text {
  //     var output = capitalize_character(char);
  //     var tmp = Text.join(" ", Text.toIter(t));
    
  //   return tmp;
  // };


// Challenge 6 : Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .

  public func is_inside (t : Text, c: Text) :async Bool{
    // var c = "m";
    var counter = 0;
    for (char in t.chars()){
      for (char2 in c.chars()){
        if  (char == char2) {
          counter +=1;
        };
      };
    };
    return counter >= 1;
  };

// Challenge 7 : Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".

// Challenge 8 : Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".

// Challenge 9 : Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.
  public func size_in_bytes(t: Text) : async Nat {
    return Text.encodeUtf8(t).size();
  };
// Challenge 10 :
//     Watch this video on bubble sort.
//     Implement a function bubble_sort that takes an array of natural numbers and returns the sorted array .

  public func bubble_sort(nums: [Nat]) : async [Nat] {
    var new_nums : [var Nat] = Array.thaw(nums);
    var last_idx : Nat = new_nums.size() - 1;
    for (i in Iter.range(0,last_idx)) {
      for (j in Iter.range(0,last_idx - i - 1)) {
        if (new_nums[j] > new_nums[j+1]) {
          var tmp = new_nums[j];
          new_nums[j] := new_nums[j+1];
          new_nums[j+1] := tmp;
        };
      };
    };
    return Array.freeze(new_nums);
  };

};
