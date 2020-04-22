/*:
 ## Exercise: Counting Chickens
 
 This playground has a `Chicken` type built in to it. A `Chicken` has a `breed` and `temper` property, and both properties are enums.
 
 Here is an array of chickens:
*/
chickens
//:  The chickens are all hatched, so it’s safe to count them.
var chickenOfInterestCount = 0
for chicken in chickens {
    switch chicken.temper {
    case .friendly, .hilarious:
        chickenOfInterestCount += 1
    case .grumpy:
        print("Not interesting")
    }
    switch chicken.breed {
    case .leghorn:
        chickenOfInterestCount += 1
    default:
        print("Not interesing")
    }
}

chickenOfInterestCount

//: - callout(Exercise): Update the code in the `for…in` loop to only count interesting chickens, like `.hilarious` `.leghorn`s. Check out the autocompletion popup to see what the possible values for each enum are.

//: [Previous](@previous)  |  page 18 of 21  |  [Next: Exercise: Replacing Bools](@next)
