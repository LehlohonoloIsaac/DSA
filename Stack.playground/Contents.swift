//: Playground - noun: a place where people can play

import UIKit

struct Stack<T>{
    fileprivate var data = [T]()
    var top:Int
    
    init(data: [T]){
        self.data = data
        top = -1
    }
    
    mutating func push(value: T){
        top = top + 1
        data.append(value)
    }
    
    func isEmpty() -> Bool{
        return data.isEmpty
    }
    
    func size() -> Int {
        return data.count
    }
    
    mutating func pop() -> T{
        guard let value = data.popLast() else {return -1 as! T }
        top = top - 1
        return value
    }
}

var data:[Int] = [Int]()

var stack = Stack(data: data)
print("\(stack.isEmpty())")
stack.push(value: 8)
stack.push(value: 3)
stack.push(value: 38)
print(stack.data)
print("top = \(stack.top)")
stack.pop()
print(stack.data)
print("top = \(stack.top)")
print(stack.isEmpty())
