#if os(iOS) || os(macOS) || os(tvOS) || os(watchOS)
import CoreGraphics

extension Vector2 {
    public init(_ cgPoint: CGPoint) {
        self.init(x: Double(cgPoint.x), y: Double(cgPoint.y))
    }
    
    public init(_ cgSize: CGSize) {
        self.init(x: Double(cgSize.width), y: Double(cgSize.height))
    }
}

extension CGPoint {
    public init(_ vector: Vector2) {
        self.init(x: CGFloat(vector.x), y: CGFloat(vector.y))
    }
}

extension CGSize {
    public init(_ vector: Vector2) {
        self.init(width: CGFloat(vector.x), height: CGFloat(vector.y))
    }
}
#endif
