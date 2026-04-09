import UIKit

//var a: Any = 123
var a = 123 as Any
a = 456
a = 456.789
a = "Hello"

//a.count

// Type Check - is operator
// Val(expr) is Type

a is Int
a is String

// Type Casting
// 1) Compile Type Casting : as
let str = "Hello" // Swift String, struct
let nsstr: NSString = "Hello" // Foundation String, class

// Some Swift and Foundation Types are bridged
// String <-> NSString
// Array <-> NSArray
// Date <-> NSDate
let nsstrFromStr: NSString = str as NSString
let strFromNSstr: String = nsstr as String
// let strFromA: String = a as String

// 2) Runtime Type Casting
// a) Forced Type Casting
let strFromA: String = a as! String
// b) Conditional Type Casting
let strFromA2: String? = a as? String
// a.count
if let a = a as? String {
    a.count
}

// 1) upcasting  downcasting
class A {
    let one = "one"
}

class B: A {
    let two = "two"
}

class C: B {
    let three = "three"
}

let aObj = A()
aObj.one
//aObj.two
//aObj.three

let bObj: A = B()
bObj.one
//bObj.two
//bObj.three

let cObj: B = C()
cObj.one
cObj.two
//cObj.three
