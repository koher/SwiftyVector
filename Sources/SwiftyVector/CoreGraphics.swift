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
#endif
