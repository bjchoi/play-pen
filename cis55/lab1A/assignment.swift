/*
   CIS55 Lab 1A
 
 
 */
 
let numberOfDaysInMonth : Int = 31
    
var dailyPayArray = [1] // with 1st day pay
var totalPay : Int = dailyPayArray[0]

println(dailyPayArray.count)

// 2. loop to initialize the elements of daily pay array on daily basis
for i in 1...numberOfDaysInMonth
{
  var newPay = 2 * dailyPayArray[i - 1]
  totalPay += newPay

  var dailyPayInDollar  = Double(newPay) / 100.00
  var totalPayIntDollar = Double(totalPay) / 100.00
  
  println("day: \(i) daily pay: $\(dailyPayInDollar) total pay: $\(totalPayIntDollar)")
  dailyPayArray.append(newPay)
}  
  
println(dailyPayArray)
println(dailyPayArray.count)
println(totalPay)

println("finished")
 
 
/* Lab Instructions

   Write a simple program in Swift that will calculate a person's daily and total pay over a month, store each day's pay in an array and print out details.  For this:

   Define an array that will hold the daily pay.
   The first day's pay will be 1 cent, second day's pay 2 cents and will double every day.
   You will write a loop to initialize the elements of your daily pay array on a daily basis.
   You will also define a variable to calculate the total pay from day 1 for each day.
   You will print out the daily pay and total pay earned for every day.
   While you will store cents as data in the array, you will print corresponding dollar values in #5.
   This program can be completed in the Swift playground with everything covered in Lecture 3 - in less than 15 lines of code - but will require some critical thinking.  However, you are welcome to embellish the code as you desire with the help of self-study from Google searches.

 */
