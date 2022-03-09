import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Array "mo:base/Array";

// actor{
//     func swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
//         let mutable_array = Array.thaw<Nat>(array);
//         let tmp = mutable_array[i];
//         mutable_array[i] := mutable_array[j];
//         mutable_array[j] := tmp;
//         return(Array.freeze<Nat>(mutable_array));
//     };

//     public func bubble_sort(array : [Nat]) : async [Nat] {
//         var sorted = array;
//         let size = array.size();
//         for(i in Iter.range(0, size - 1){
//             for(j in Iter.range(0, size - 1 - i)){
//                 if(sorted[i] > sorted[i + 1]){
//                     sorted := _swap(sorted, i , j);
//                 };
//             };
//         };
//         return (sorted);
//     };
// };
