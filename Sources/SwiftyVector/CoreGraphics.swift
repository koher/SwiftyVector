#if canImport(CoreGraphics)
import CoreGraphics

extension Vector2f {
    public init(_ cgPoint: CGPoint) {
        self.init(x: Float(cgPoint.x), y: Float(cgPoint.y))
    }
    
    public init(_ cgSize: CGSize) {
        self.init(x: Float(cgSize.width), y: Float(cgSize.height))
    }
    
    public init(_ cgVector: CGVector) {
        self.init(x: Float(cgVector.dx), y: Float(cgVector.dy))
    }
}

extension Vector2 {
    public init(_ cgPoint: CGPoint) {
        self.init(x: Double(cgPoint.x), y: Double(cgPoint.y))
    }
    
    public init(_ cgSize: CGSize) {
        self.init(x: Double(cgSize.width), y: Double(cgSize.height))
    }
    
    public init(_ cgVector: CGVector) {
        self.init(x: Double(cgVector.dx), y: Double(cgVector.dy))
    }
}

extension CGPoint {
    public init(_ vector: Vector2f) {
        self.init(x: CGFloat(vector.x), y: CGFloat(vector.y))
    }
    
    public init(_ vector: Vector2) {
        self.init(x: CGFloat(vector.x), y: CGFloat(vector.y))
    }
}

extension CGSize {
    public init(_ vector: Vector2f) {
        self.init(width: CGFloat(vector.x), height: CGFloat(vector.y))
    }
    
    public init(_ vector: Vector2) {
        self.init(width: CGFloat(vector.x), height: CGFloat(vector.y))
    }
}

extension CGVector {
    public init(_ vector: Vector2f) {
        self.init(dx: CGFloat(vector.x), dy: CGFloat(vector.y))
    }
    
    public init(_ vector: Vector2) {
        self.init(dx: CGFloat(vector.x), dy: CGFloat(vector.y))
    }
}

extension Vector where Scalar == CGFloat {
    public func angle(from v: Self) -> Scalar {
        let cosValue = cos(from: v)
        if cosValue < -1.0 {
            return .pi
        } else if cosValue > 1.0 {
            return 0
        } else {
            return acos(cosValue)
        }
    }
}

extension CGPoint : Vector {
    public static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    public static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    public static func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        return CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
    }
    
    public static func /(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        return CGPoint(x: lhs.x / rhs, y: lhs.y / rhs)
    }
    
    public static func ==(lhs: CGPoint, rhs: CGPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }

    public func dotProduct(with v: CGPoint) -> CGFloat {
        return x * v.x + y * v.y
    }
    
    public var description: String {
        return "[\(x.description), \(y.description)]"
    }
    
    public var debugDescription: String {
        return "CGPoint(x: \(x.description), y: \(y.description))"
    }
}

extension CGPoint: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: CGFloat...) {
        precondition(elements.count == 2)
        
        self.init(x: elements[0], y: elements[1])
    }
}
#endif
