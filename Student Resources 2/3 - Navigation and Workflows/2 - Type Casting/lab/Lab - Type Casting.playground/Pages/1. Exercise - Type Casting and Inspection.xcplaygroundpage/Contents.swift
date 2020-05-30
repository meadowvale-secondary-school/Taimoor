/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items: [Any] = ["Cookies", "Pizza", 5, 6.7, 6, 7.8, "Chocolate"]
print(items)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in items {
    if let thisItem = item as? Int {
        print("The integer has a value of \(thisItem).")
    } else if let otherItem = item as? String {
        print("The string is \(otherItem).")
    } else if let thatItem = item as? Double {
        print("The double has a value of \(thatItem).")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var dictionary: [String:Any] = ["Eggs": 2, "Cookies": 2.4, "Milk": "Comes from cows","Number": "34"]
print(dictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0

for (_,index) in dictionary {
    if let value = index as? Int {
        total += Double(value)
    } else if let value2 = index as? Double {
        total += Double(value2)
    } else if index is String {
        total += 1
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_,index) in dictionary {
    if let value = index as? Int {
        total2 += Double(value)
    } else if let value2 = index as? Double {
        total2 += Double(value2)
    } else if let value3 = index as? String {
        if let number = Int(value3) {
            total2 += Double(number)
        } else {
            total2 += 1
        }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
