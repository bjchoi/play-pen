// CIS55 assignemnt Lab 1B

import UIKit


func calculatePay(initialPay: Int, numberOfDays: Int) -> Int
{
var dailyPayArray = [Int]()
var totalPay = 0
var previousDayPay = 0

// computer 2nd day to last day of Month
for i in 1...numberOfDays
{
    var dayPay : Int
    if (i == 1) {
        dayPay = initialPay
        previousDayPay = initialPay
    } else {
        dayPay = 2 * previousDayPay
        previousDayPay = dayPay
    }
    totalPay += dayPay
    
    var dailyPayInDollar  = Double(dayPay) / 100.00
    var totalPayIntDollar = Double(totalPay) / 100.00
    dailyPayArray.append(dayPay)
    
    println("On day \(i), daily pay earned was $\(dailyPayInDollar) and total pay earned was $\(totalPayIntDollar)")
}
    return totalPay
}


calculatePay(10, 5)

let j = 0.5

println("output \(j)")

String(format: "%.2f", 4.2)

println("complete")
