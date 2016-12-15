import Foundation

//Queue - First in  First Out

struct BenQueue<T> {
    private var contents = [T]()
    
    mutating func enqueue(_ item:T) {
        contents.append(item)
    }
    
    mutating func dequeue() -> T? {
        if !contents.isEmpty {
            return contents.removeFirst()
        } else {
            return nil
        }
    }
    
    
    func peekFront() -> T? {
        if !contents.isEmpty {
            return contents[0]
        } else {
            return nil
        }
    }
    
    public subscript(key: Int) -> T? {
        get {
            if !contents.isEmpty && contents.count - 1 <= key {
                let value = contents[key]
                return value
            } else {
                return nil
            }
            
        }
        set {
            if let value = newValue {
                contents[key] = value
            } else {
                
            }
            
            
        }
    }
    
    
}

var queue = BenQueue<Int>()
queue.enqueue(1)
print(queue)
queue[0] = 2
print(queue)




var optionalString: String? = "Hey"
print(optionalString)

var actualStrign = Optional<String>.some("Hey")
print(actualStrign)


struct NiftyStack<T>{
    private var contents = [T]()
    
    
    mutating func push(_ newElement: T){
        contents.append(newElement)
    }
    
    mutating func pop() -> T?{
        if !contents.isEmpty {
            let index = contents.count - 1
            let poppedValue = contents.remove(at: index)
            return poppedValue
        }else{
            return nil
        }
    
    }
}

var stack = NiftyStack<Int>()
stack.pop()

stack.push(1)
stack.push(2)
stack.push(4)
