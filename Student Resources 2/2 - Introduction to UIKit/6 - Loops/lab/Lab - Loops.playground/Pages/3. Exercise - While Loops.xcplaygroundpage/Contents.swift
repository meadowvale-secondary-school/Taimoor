import Foundation
/*:
 ## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int.random(in: 1...6)` to generate a random number between 1 and 6).
 */
var diceRolled = 0
while diceRolled != 1 {
    diceRolled = Int.random(in: 1...6)
    print(diceRolled)
}
//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - While Loops](@next)
