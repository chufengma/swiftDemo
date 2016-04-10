//: Playground - noun: a place where people can play

import UIKit


// 变量，常量 和 for in
let COUNT = 5
var index = 1

for index in 0...COUNT {
    print(index)
}

// switch 和元组
let zu = (0, 8)
switch zu {
case (0, 0...6):
    print("AAA")
case (0, 0...9):
    print("BBB")
default:
    print("OOO")
}


// 可选类型
var kexuan : String?
if (kexuan == nil) {
    print("kexuan")
}


// 数组，集合，字典
var arr = ["Demo", "Sample", "Hello"]
arr.count
var setA : Set<Int> = [1, 3, 4, 76545234, 236, 234, 346]
setA.count
var dicA = ["a" : 1, "b" : 2]
dicA["a"]


// 函数
func sayHello(var str:String) -> String {
    return str + " responsed"
}
print(sayHello("fengma"))

// 可改变值
var a = 123;
func sayGoodbye(inout params : Int) {
    params+=24;
}
sayGoodbye(&a)
print(a)

// 函数类型
var sayFunc : (String) -> String = sayHello
sayFunc("asdf")

func callback(str : String) -> String {
    return str
}

func hasCallback(callback : (String) -> String, params : String) {
    callback(params)
}

hasCallback(sayFunc, params: "fengma")


// 闭包
func bibao(@noescape colsore : (String) -> String) {
    print(colsore("fengma"))
}

let demo = "Demo hahaha"
bibao {
    str in
    var s = demo + "so, be it";
    return str + " hahah THis is " + s
}


