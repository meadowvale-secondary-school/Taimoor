/*:
 ## Exercise: Treehouse Pulley
 
 In this exercise, you're using code to decide whether it's safe to add items to a basket that will be delivered to your treehouse by a pulley.
 
 - callout(Exercise):
 Create three constants for items of different weights that you'd like to bring up to your fort: one less than 100, one between 100 and 1000, and one over 1000.
 */
let a = 90
let b = 110
let c = 1100
/*:
 - callout(Exercise):
 A lightweight treehouse pulley is already created below. But you've decided that you want to be able to lift, say, a small horse or piano up to your fort, so you’re installing a second pulley with a much bigger basket.\
 Create a second pulley that has a higher capacity and can hold at least ten times the weight of the `ricketyRope`.
 */
var ricketyRope = TreehousePulley(weightCapacity: 200)

var pulley2 = TreehousePulley(weightCapacity: 2000)



ricketyRope.canHandleAdditionalLoad(3*a)

ricketyRope.addLoadToBasket(loadWeight: 3*a)

ricketyRope.canHandleAdditionalLoad(2*b)



pulley2.canHandleAdditionalLoad(2*b)

pulley2.addLoadToBasket(loadWeight: 2*b)

pulley2.canHandleAdditionalLoad(c)



var pulley3 = TreehousePulley(weightCapacity: 5000)



pulley3.canHandleAdditionalLoad(c)

pulley3.addLoadToBasket(loadWeight: c)
