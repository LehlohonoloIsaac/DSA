//: Playground - noun: a place where people can play

import UIKit

struct Queue<T>{

    fileprivate var data:[T] = [T]()
    
    init(data: [T]) {
        self.data = data
    }
    
    func isEmpty() -> Bool{
        return data.isEmpty
    }
    
    func size() -> Int{
        return data.count
    }
    
    mutating func push(value: T){
        data.append(value)
    }
    
    mutating func pop() -> T{
        let value =  data[0]
        data.removeFirst()
        return value
    }
    
    func peek() -> T{
        if isEmpty() {
            return -1 as! T
        }
        return data[0]
    }
}


var data:[Int] = [Int]()

var queue = Queue(data: data)

print(queue.isEmpty())

queue.push(value: 3)
queue.push(value: 4)

print(queue.isEmpty())
print(queue.data)
print(queue.pop())
print(queue.data)
print(queue.peek())
queue.push(value: 10)
queue.push(value: 11)
print(queue.data)
print(queue.peek())
queue.pop()
print(queue.peek())
