
//  main.swift
//  homeWork 11
//
//  Created by Seroj on 27.05.22.


//import Foundation

//homeWork 11.1

func sum(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: (Int, Int) -> Int = sum
print(sumResult(5, 1))

//homeWork 11.2

var funcionalC = { (a: Int) -> String in
    return "\(a)"
}

let argument = funcionalC(3)
print(argument)

//homeWork 11.3

func printHello(text: String) -> String {
    return text
}

func funcInFunc(a: (String) -> String) -> String {
   let c = printHello(text: "Hello")
    return c
}
print(funcInFunc(a: printHello))

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

func printHello(){
    print("Hello2")
}
func sk (a: ()) {
    return a
}
sk(a: printHello())

//homeWork 11.4

//


//homeWork 11.5

let arr = [1, 4, -3, -45, 45]

func minusNumber(num: Int) -> Bool {
    if num < 0 {
        return true
    }
    return false
}
let array = arr.filter(minusNumber(num:))
print(array)

func filter(a: [Int]) -> [Int] {
    var arr1: [Int] = []
    for i in a {
        if i < 0 {
            arr1.append(i)
        }
    }
    return arr1
}
let c = filter(a: arr)
print(c)

//homeWork 11.6

let arr = [1, 4, -3, -45, 45]

let arrClouser = { (num: Int) -> Bool in
    if num < 0 {
        return true
    }
    return false
}

let arr1_1 = arr.filter(arrClouser)
print(arr1_1)

let arr1 = arr.filter{ arr in arr < 0 }
print(arr1)

let arr2 = arr.filter{ $0 < 0 }
print(arr2)



//homeWork 11.7

let arr = [1, 4, -3, -45, 45]

func evenNumbers(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }
    return false
}
let arr1 = arr.filter(evenNumbers(num:))
print(arr1)

//homeWork 11.8

let arr = [1, 4, -3, -45, 45]

let arr1 = arr.filter{ $0 % 2 == 0 }
print(arr1)

let arr1 = arr.filter{ i in i % 2 == 0 }
print(arr1)

let arrClouser = { (num: Int) -> Bool in
    if num % 2 == 0 {
        return true
    }
    return false
}

let arr1 = arr.filter(arrClouser)
print(arr1)

//homeWork 11.9

let arr = [1, 4, -3, -45, 45]

func evenNumbers(num: Int) -> Bool {
    if num % 2 != 0 {
        return true
    }
    return false
}
let arr1 = arr.filter(evenNumbers(num:))
print(arr1)

//homeWork 11.10

let arr = [1, 4, -3, -45, 45]

let arr1 = arr.filter{ $0 % 2 != 0 }
print(arr1)

let arr1 = arr.filter{ i in i % 2 != 0 }
print(arr1)

let arrClouser = { (num: Int) -> Bool in
    if num % 2 != 0 {
        return true
    }
    return false
}

let arr1 = arr.filter(arrClouser)
print(arr1)

// homeWork 11.11

let arrStr = ["Hello", "GITC", "iOS"]

func hasIChar(char: String) -> Bool {

    return char.contains("i")
}
let inchVorAnun = arrStr.filter(hasIChar(char:))
print(inchVorAnun)

//homeWork 11.12

let arrStr = ["Hello", "GITC", "iOS"]

let arrStr1 = arrStr.filter{ $0.contains("i") }
print(arrStr1)

let arrStr1 = arrStr.filter{ i in i.contains("i") }
print(arrStr1)

let strClouser = { (char: String) -> Bool in
    return char.contains("i")
}
let arrStr1 = arrStr.filter(strClouser)
print(arrStr1)

