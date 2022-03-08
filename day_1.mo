import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";
actor {
  public func add(n:Nat, m:Nat) : async Nat {
    return n+m;
  };

  public func square(n:Nat, m:Nat) : async Nat {
    return n**m;
  };

  public func days_to_second(n:Nat) : async Nat {
    return n*86400;
  };

  var counter:Nat = 0;
  public func increment_counter(n:Nat) : async Nat {
    counter += n;
    return counter
  };

  public func clearCounter(): async Nat {
    counter:= 0;
    return counter;
  };

  public func show_counter(): async Nat {
    return(counter);
  };

  public func divide (n:Nat, m:Nat) : async Bool {
    return n % m == 0;
  };

  public func is_even (n:Nat) : async Bool {
    return n % 2 == 0;
  };

  let array_1 : [Nat] = [1,2,3,4,5];
  var a : Nat = 0;
    public func sum_of_array (array: [Nat]) : async Nat{
        if (array.size()==0){
          return 0;
        };
        var counter = 0;
        for (value in array.vals()){
          counter := counter + value
        };
        return counter;
        };

    public func max (array: [Nat]) : async Nat{
        if (array.size()==0){
          return 0;
        };
        var counter = array.size()-1;
        var newArray = Array.sort(array,Nat.compare);

        return newArray[counter];
        };

    public func remove_from_array (array: [Nat], n: Nat) : async [Nat]{
        if (array.size()==0){
          return [0];
        };
        var newArray = Array.filter(array,func(val: Nat) : Bool { n != val });

        return newArray;
        };

    public func selection_sort_1(array: [Nat]) : async [Nat]{
        if (array.size()==0){
          return [0];
        };

        var newArray = Array.sort(array,Nat.compare);
        return newArray;
        };


    public func selection_sort(array: [Nat]) : async [Nat]{
      
    }
    
    // public func min (array: [Nat]) : async Nat{
    //     if (array.size()==0){
    //       return 0;
    //     };
    //     var newArray = Array.sort(array,Nat.compare);

    //     return newArray[0];
    //     };

    // public func append (array: [Nat], n:Nat) : async [Nat]{
    //   if(arry.size()==0){
    //     return [0];
    //   };
    //   var newArray = Buffer.add(array,[n]);
    //   return newArray
    // };


    // public func selection_sort(array: [Nat]) : async [Nat]{
    //     if (array.size()==0){
    //       return [0];
    //     };
    //     var outputArray = [];
    //     var newArray = array;
    //     for (i in Iter.range(0,array.size()-1)){
    //       var smallnumber = min(newArray)
    //       outputArray = append(newArray,smallnumber);
    //       newArray = remove_from_array(newArray,smallnumber);
    //     };
    // return outputArray
    // };

};
