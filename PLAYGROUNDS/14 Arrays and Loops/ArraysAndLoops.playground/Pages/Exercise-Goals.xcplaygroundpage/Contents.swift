 var kilometersWalked = [1,5,10]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
 func howFarFromGoal(goal: Array <Int>) -> String {
    for number in goal {
        if number == 1 {
            return "You are far"
        }
        else if number == 5 {
            return "Half way there"
        }
        else if number == 10 {
            return "You did it!"
        }
        else {
            return "I didn't understand that"
        }
    }
    return "I didn't understand that"
 }


//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
//Did that above 




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
