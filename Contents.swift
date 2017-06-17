//: Playground - noun: a place where people can play

import UIKit

// for-in loop
var myFirstInt: Int = 0
//
for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
//print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}

// for-in loop with where clause
for i in 1...100 where i % 3 == 0 {
    print(i)
}

// while loop
// i is declared as variable because the condition being evaluated (i<6) has to be able to change; watch out for inifite loops!
// best for when you don't know # of iterations
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

// repeat-while loops (AKA do-while loop)
//repeat{
//    //Fire blasters!
//    print("Fire blasters!")
//} while shields > 0

// using continue and break
// continue stops the loop where it is and goes back to the top
// break exits the loop
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0


while shields > 0 {
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    if blastersOverheating {
        print("Blasters are overheated!  Cooldown initiated!")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount  > 100 {
        blastersOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}

// Silver Challenge - Fizz Buzz
// Fizz Buzz using if/else
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("Fizz Buzz")
    } else if i % 3 == 0 {
        print ("Fizz")
    } else if i % 5 == 0 {
        print ("Buzz")
    } else {
        print (i)
    }
}



