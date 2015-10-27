// Bill's WeBurgers! "The Internet of Rings!"
//
// Using enumerations and structures, prototype an
// interactive menu for the new gourmet burger bistro.

import UIKit

enum Cheese : Int {
    case Cheddar = 0
    case Swiss
    case Mozzarella
    case Provalone
    case PepperJack
    case Bleu
}

enum Condiments : Int {
    case Ketchup = 0
    case Mustard
    case Mayonnaise
    case PickleRelish
}

enum Extras : Int {
    case DillPickles = 0
    case Lettuce
    case Tomato
    case HotPeppers
    case GrilledOnion
    case Guacamole
    case SauteedMushrooms
}

enum Bun : Int {
    case SesameSeed = 0
    case MultiGrain
    case GlutenFree
}

enum Patties : Int {
    case Single = 0
    case Double
    case Triple
}

// this struct let's you put all the parts together for a single yummy burger
struct Burger {
    var bun : Bun = .SesameSeed
    var patty : Patties = .Single
    var cheeses : [Cheese] = [Cheese]()
    var toppings : [Condiments] = [Condiments]()
    var options : [Extras] = [Extras]()
    
    // this method displays the chosen burger
    func order() {
        print("You ordered a \(patty) on a \(bun) bun with the following toppings:")
        for cheese in cheeses {
            print("\t\(cheese)")
        }
        for topping in toppings {
            print("\t\(topping)")
        }
        for option in options {
            print("\t\(option)")
        }
    }
}

// a variable to hold the description of this WeBurger masterpiece
var yummyBurger = Burger()

// this portion of the program will walk the user through the process
// of ordering their WeBurger just the way they want it!
print("Order your Bill's WeBurger just the way you like it!")
print("\nSelect a bun:")
var i = 0
while let item = Bun(rawValue: i) {
    print("\t\(item)")
    i++
}
// the user's selection:
yummyBurger.bun = .MultiGrain

print("\nSelect the number of patties you want:")
i = 0
while let item = Patties(rawValue: i) {
    print("\t\(item)")
    i++
}
// the user's selection:
yummyBurger.patty = .Double

print("\nSelect up to two of the following cheese types:")
i = 0
while let item = Cheese(rawValue: i) {
    print("\t\(item)")
    i++
}
// the user's selection(s):
yummyBurger.cheeses.append(.Swiss)
yummyBurger.cheeses.append(.Cheddar)

print("\nSelect the condiments you want on your burger:")
i = 0
while let item = Condiments(rawValue: i) {
    print("\t\(item)")
    i++
}
// the user's selection(s):
yummyBurger.toppings.append(.Mayonnaise)
yummyBurger.toppings.append(.Mustard)
yummyBurger.toppings.append(.Ketchup)
yummyBurger.toppings.append(.PickleRelish)

print("\nNow for the best part! Select your extras:")
i = 0
while let item = Extras(rawValue: i) {
    print("\t\(item)")
    i++
}
// the user's selection(s):
yummyBurger.options.append(.GrilledOnion)
yummyBurger.options.append(.Guacamole)
yummyBurger.options.append(.Lettuce)
yummyBurger.options.append(.Tomato)

// Now let's see what was ordered:
print("\nGreat choice!")
yummyBurger.order()

// Wrap it up
print("\nBill will have your yummy burger ready for pick-up in 20 minutes.")