public struct Vector4: Vector, Codable {
    public var x: Double
    public var y: Double
    public var z: Double
    public var w: Double
    
    public init(x: Double, y: Double, z: Double, w: Double) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public func dotProduct(with v: Vector4) -> Double {
        return x * v.x + y * v.y + z * v.z + w * v.w
    }
    
    public static let zero: Vector4 = Vector4(x: 0, y: 0, z: 0, w: 0)
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description), \(w.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription), \(w.debugDescription)]"
    }
}

public func +(lhs: Vector4, rhs: Vector4) -> Vector4 {
    return Vector4(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z, w: lhs.w + rhs.w)
}

public func -(lhs: Vector4, rhs: Vector4) -> Vector4 {
    return Vector4(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z, w: lhs.w - rhs.w)
}

public func *(lhs: Vector4, rhs: Double) -> Vector4 {
    return Vector4(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs, w: lhs.w * rhs)
}

public func /(lhs: Vector4, rhs: Double) -> Vector4 {
    return Vector4(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs, w: lhs.w / rhs)
}

public func ==(lhs: Vector4, rhs: Vector4) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

extension Vector4: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 4)
        
        self.init(x: elements[0], y: elements[1], z: elements[2], w: elements[3])
    }
}
