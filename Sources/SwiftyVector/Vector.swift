import Foundation

public protocol Vector: Equatable, CustomStringConvertible, CustomDebugStringConvertible {
    associatedtype Scalar
    
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Scalar) -> Self
    static func *(lhs: Scalar, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Scalar) -> Self
    
    var squareLength: Scalar { get }
    var length: Scalar { get }
    func squareDistance(from: Self) -> Scalar
    func distance(from: Self) -> Scalar
    
    var unit: Self { get }
    
    func dotProduct(with: Self) -> Scalar

    func cos(from: Self) -> Scalar
    func angle(from: Self) -> Scalar
    
    static var zero: Self { get }
}

extension Vector where Scalar : FloatingPoint {
    public static func *(lhs: Scalar, rhs: Self) -> Self {
        return rhs * lhs
    }
    
    public var squareLength: Scalar {
        return dotProduct(with: self)
    }
    
    public var length: Scalar {
        return sqrt(squareLength)
    }
    
    public func squareDistance(from vector: Self) -> Scalar {
        return (self - vector).squareLength
    }
    
    public func distance(from vector: Self) -> Scalar {
        return sqrt(squareDistance(from: vector))
    }
    
    public var unit: Self {
        return self / length
    }
    
    public func cos(from v: Self) -> Scalar {
        return dotProduct(with: v) / sqrt(squareLength * v.squareLength)
    }
}

extension Vector where Scalar == Float {
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

extension Vector where Scalar == Double {
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
