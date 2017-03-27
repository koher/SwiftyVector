import Foundation

public protocol Vector: Equatable, CustomStringConvertible, CustomDebugStringConvertible {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Float) -> Self
    static func *(lhs: Float, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Float) -> Self
    
    var squareLength: Float { get }
    var length: Float { get }
    func squareDistance(from: Self) -> Float
    func distance(from: Self) -> Float
    
    var unit: Self { get }
    
    func dotProduct(with: Self) -> Float

    func cos(from: Self) -> Float
    func angle(from: Self) -> Float
    
    static var zero: Self { get }
}

extension Vector {
    public static func *(lhs: Float, rhs: Self) -> Self {
        return rhs * lhs
    }
    
    public var squareLength: Float {
        return dotProduct(with: self)
    }
    
    public var length: Float {
        return sqrt(squareLength)
    }
    
    public func squareDistance(from vector: Self) -> Float {
        return (self - vector).squareLength
    }
    
    public func distance(from vector: Self) -> Float {
        return sqrt(squareDistance(from: vector))
    }
    
    public var unit: Self {
        return self / length
    }
    
    public func cos(from v: Self) -> Float {
        return dotProduct(with: v) / sqrt(squareLength * v.squareLength)
    }
    
    public func angle(from v: Self) -> Float {
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
