import Foundation

public protocol Vector: Equatable, CustomStringConvertible, CustomDebugStringConvertible {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Double) -> Self
    static func *(lhs: Double, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Double) -> Self
    
    var squareLength: Double { get }
    var length: Double { get }
    func squareDistance(from: Self) -> Double
    func distance(from: Self) -> Double
    
    var unit: Self { get }
    
    func dotProduct(with: Self) -> Double

    func cos(from: Self) -> Double
    func angle(from: Self) -> Double
    
    static var zero: Self { get }
}

extension Vector {
    public static func *(lhs: Double, rhs: Self) -> Self {
        return rhs * lhs
    }
    
    public var squareLength: Double {
        return dotProduct(with: self)
    }
    
    public var length: Double {
        return sqrt(squareLength)
    }
    
    public func squareDistance(from vector: Self) -> Double {
        return (self - vector).squareLength
    }
    
    public func distance(from vector: Self) -> Double {
        return sqrt(squareDistance(from: vector))
    }
    
    public var unit: Self {
        return self / length
    }
    
    public func cos(from v: Self) -> Double {
        return dotProduct(with: v) / sqrt(squareLength * v.squareLength)
    }
    
    public func angle(from v: Self) -> Double {
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
