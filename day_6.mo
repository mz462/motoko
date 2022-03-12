import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";

actor{

// Challenge 1 : Create an actor in main.mo and declare the following types.
//     TokenIndex of type Nat.
//     Error which is a variant type with multiples tags :

    type TokenIndex = {
        #1 : Nat;
        #2 : Nat;
        #3 : Nat;
        #4 : Nat;
    };
        type Error = {
        # Typo : Text;
        # Kissi : Text;
        # Suzie : Text;
        # Cindy : Text;
    };

// Challenge 2 : Declare an HashMap called registry with Key of type TokenIndex and 
// value of type Principal. This will keeep track of which principal owns which TokenIndex.

    let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    let registry  = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);
    // registry.put(anonymous_principal, TokenIndex);

}

// Challenge 3 : Declare a variable of type Nat called nextTokenIndex, 
// initialized at 0 that will keep track of the number of minted NFTs.
// Write a function called mint that takes no argument.
// This function should :
//     Returns a result of type Result and indicate an error in case the caller is anonymous.
//     If the user is authenticated : associate the current TokenIndex with the caller (use 
// the HashMap we've created) and increase nextTokenIndex.

