public struct Vector2: Vector, Codable {
    public var x: Double
    public var y: Double
    
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    public func dotProduct(with v: Vector2) -> Double {
        return x * v.x + y * v.y
    }
    
    public static let zero: Vector2 = Vector2(x: 0, y: 0)
    
    public var description: String {
        return "[\(x.description), \(y.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription)]"
    }
}

public func +(lhs: Vector2, rhs: Vector2) -> Vector2 {
    return Vector2(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

public func -(lhs: Vector2, rhs: Vector2) -> Vector2 {
    return Vector2(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

public func *(lhs: Vector2, rhs: Double) -> Vector2 {
    return Vector2(x: lhs.x * rhs, y: lhs.y * rhs)
}

public func /(lhs: Vector2, rhs: Double) -> Vector2 {
    return Vector2(x: lhs.x / rhs, y: lhs.y / rhs)
}

public func ==(lhs: Vector2, rhs: Vector2) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

extension Vector2: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 2)
        
        self.init(x: elements[0], y: elements[1])
    }
}
