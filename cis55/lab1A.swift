// CIS55 assignemnt Lab 1A
 
let numberOfDaysInMonth : Int = 30
 
var dailyPayArray = [Int]()
var totalPay = 0
var previousDayPay = 0
 
// computer 2nd day to last day of Month
for i in 1...numberOfDaysInMonth
{
    var dayPay : Int
    if (i == 1) {
        dayPay = 1
        previousDayPay = 1
    } else {
        dayPay = 2 * previousDayPay
        previousDayPay = dayPay
    }
    totalPay += dayPay
    
    var dailyPayInDollar  = Double(dayPay) / 100.00
    var totalPayIntDollar = Double(totalPay) / 100.00
    dailyPayArray.append(dayPay)
    
    println("day: \(i) daily pay: $\(dailyPayInDollar) total pay: $\(totalPayIntDollar)")
}
