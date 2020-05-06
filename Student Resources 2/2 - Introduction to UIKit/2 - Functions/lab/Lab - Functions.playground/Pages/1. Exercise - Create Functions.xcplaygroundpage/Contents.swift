/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hi! My name is Taimoor. I like cars.")
}
introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */
func magicEightBall(){
    let randomNum = Int.random (in:0...4)
    switch randomNum {
    case 0:
        print("You got \(randomNum). You came last.")
    case 1:
        print("You got \(randomNum). You are now number 1!.")
    case 2:
        print("You came second.")
    case 3:
        print("You came third.")
    case 4:
        print("You came fourth")
    default:
    print("Try again")
    }
}
magicEightBall()

//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)


/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */


//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
