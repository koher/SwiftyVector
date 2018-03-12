#if os(iOS) || os(macOS) || os(tvOS) || os(watchOS)
import CoreGraphics

extension Vector2 { // CGPoint
    public init(cgPoint: CGPoint) {
        self.init(x: Double(cgPoint.x), y: Double(cgPoint.y))
    }
    
    public var cgPoint: CGPoint {
        return CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
}

extension Vector2 { // CGSize
    public init(cgSize: CGSize) {
        self.init(x: Double(cgSize.width), y: Double(cgSize.height))
    }
    
    public var cgSize: CGSize {
        return CGSize(width: CGFloat(x), height: CGFloat(y))
    }
}
#endif
