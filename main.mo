import Custom "custom";
import Animal "animal";
import List "mo:base/List";

actor{
//     Challenge 1 : Create two files called custom.mo and main.mo, create your
// own type inside custon.mo and import it in your main.mo file. In main, create a public 
// function fun that takes no argument but return a value of your custom type.
//     Note : Be creative 🌈
    public type Custom = Custom.Custom;
    let gabame : Custom = {
        name = "gabame";
        age = 6;
        pet = "zebra";
        covid = false;
        favoritenum = [7,12,2,3];
    };
    public func returnpet (): async Text {
        return gabame.pet;
    };

    // type List<Animal> = List.List<Animal>;

    // var a: List<Animal> = List.nil<Animal>();
    // a:= List.push<Animal>({species = "human"; name = "seb"},a);

//     Challenge 2 : Create a new file called animal.mo with at least 2 property 
//(specie of type Text, energy of type Nat), import this type in your main.mo and 
//create a variable that will store an animal.
    public type Animal = Animal.Animal;
    var bob : Animal = {
        species = "sponge";
        energy = 30;
    };
    var a: Animal = bob;

//     Challenge 3 : In animal.mo create a public function called animal_sleep that 
//takes an Animal and returns the same Animal where the field energy has been increased 
//by 10. Note : As this is a public function of a module, you don't need to make the 
//return type Async !
    public func puttosleep (): async Nat {
        var tmp: Animal = Animal.animal_sleep(bob);
        return (tmp.energy);
    };

//     Challenge 4 : In main.mo create a public function called create_animal_then_takes_a_break 
// that takes two parameter : a specie of type Text, an number of energy point of type Nat and 
// returns an animal. This function will create a new animal based on the parameters passed and then
// put this animal to sleep before returning it ! 💤
public func create_animal_then_takes_a_break(species: Text, energy : Nat) : async Animal {
    var animal : Animal ={
        species = species;
        energy = energy;
    };
    return Animal.animal_sleep(animal);
};
//     Challenge 5 : In main.mo, import the type List from the 
//base Library and create a list that stores animal.
public type List<Animal> = ?(Animal, List<Animal>);
var animals: List<Animal> = List.nil<Animal>();
//     Challenge 6 : In main.mo : create a function called push_animal that
// takes an animal as parameter and returns nothing this function should add 
//this animal to your list created in challenge 5. Then create a second functionc 
//called get_animals that takes no parameter but returns an Array that contains 
//all animals stored in the list.

func push_animal(_animal : Animal) : async (){
    animals:= List.push(_animal, animals);
};
func get_animals() : async [Animal] {
    return List.toArray(animals);
};
// For challenges 7 to 10 : You need to start from a fresh file (call it list.mo) you cannot use the List module of the base library, the goal is to reimplement some functionnality of arrays.

//     Challenge 7 : Write a function is_null that takes l of type List<T> and returns a boolean indicating if the list is null . Tips : Try using a switch/case.

//     Challenge 8 : Write a function last that takes l of type List<T> and returns the optional last element of this list.

//     Challenge 9 : Write a function size that takes l of type List<T> and returns a Nat indicating the size of this list.
//     Note : If l is null , this function will return 0.

//     Challenge 10 : Write a function get that takes two arguments : l of type List<T> and n of type Nat this function should return the optional value at rank n in the list.

// In case you are done with everything. 👇

//     Challenge 11 : Write a function reverse that takes l of type List and returns the reversed list.

};