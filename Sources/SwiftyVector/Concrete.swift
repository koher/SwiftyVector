#if canImport(simd)
@_exported import simd
#endif

#if canImport(simd)
public typealias Vector2f = vector_float2

extension Vector2f: Vector {}

extension Vector2f: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Float.self, forKey: .x),
            y: try container.decode(Float.self, forKey: .y)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
    }
}

#else

public struct Vector2f: Vector, Codable {
    public var x: Float
    public var y: Float
    
    public init(

        x: Float,
        y: Float
    ) {
        self.x = x
        self.y = y
    }

    public static func +(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return Vector2f(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y
        )
    }
    
    public static func -(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return Vector2f(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y
        )
    }
    
    public static func *(lhs: Vector2f, rhs: Float) -> Vector2f {
        return Vector2f(
            x: lhs.x * rhs,
            y: lhs.y * rhs
        )
    }
    
    public static func /(lhs: Vector2f, rhs: Float) -> Vector2f {
        return Vector2f(
            x: lhs.x / rhs,
            y: lhs.y / rhs
        )
    }
    
    public static func ==(lhs: Vector2f, rhs: Vector2f) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
    }
}

extension Vector2f: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Float...) {
        precondition(elements.count == 2)
        
        self.init(
            x: elements[0],
            y: elements[1]
        )
    }
}

#endif

extension Vector2f {
    public func dotProduct(with v: Vector2f) -> Float {
        return x * v.x
            + y * v.y
    }
    
    public static let zero: Vector2f = Vector2f(
        x: 0,
        y: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription)]"
    }
}

#if canImport(simd)
public typealias Vector2 = vector_double2

extension Vector2: Vector {}

extension Vector2: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Double.self, forKey: .x),
            y: try container.decode(Double.self, forKey: .y)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
    }
}

#else

public struct Vector2: Vector, Codable {
    public var x: Double
    public var y: Double
    
    public init(

        x: Double,
        y: Double
    ) {
        self.x = x
        self.y = y
    }

    public static func +(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y
        )
    }
    
    public static func -(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y
        )
    }
    
    public static func *(lhs: Vector2, rhs: Double) -> Vector2 {
        return Vector2(
            x: lhs.x * rhs,
            y: lhs.y * rhs
        )
    }
    
    public static func /(lhs: Vector2, rhs: Double) -> Vector2 {
        return Vector2(
            x: lhs.x / rhs,
            y: lhs.y / rhs
        )
    }
    
    public static func ==(lhs: Vector2, rhs: Vector2) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
    }
}

extension Vector2: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 2)
        
        self.init(
            x: elements[0],
            y: elements[1]
        )
    }
}

#endif

extension Vector2 {
    public func dotProduct(with v: Vector2) -> Double {
        return x * v.x
            + y * v.y
    }
    
    public static let zero: Vector2 = Vector2(
        x: 0,
        y: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription)]"
    }
}

#if canImport(simd)
public typealias Vector3f = vector_float3

extension Vector3f: Vector {}

extension Vector3f: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
        case z
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Float.self, forKey: .x),
            y: try container.decode(Float.self, forKey: .y),
            z: try container.decode(Float.self, forKey: .z)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
        try container.encode(z, forKey: .z)
    }
}

#else

public struct Vector3f: Vector, Codable {
    public var x: Float
    public var y: Float
    public var z: Float
    
    public init(

        x: Float,
        y: Float,
        z: Float
    ) {
        self.x = x
        self.y = y
        self.z = z
    }

    public static func +(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y,
            z: lhs.z + rhs.z
        )
    }
    
    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y,
            z: lhs.z - rhs.z
        )
    }
    
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(
            x: lhs.x * rhs,
            y: lhs.y * rhs,
            z: lhs.z * rhs
        )
    }
    
    public static func /(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(
            x: lhs.x / rhs,
            y: lhs.y / rhs,
            z: lhs.z / rhs
        )
    }
    
    public static func ==(lhs: Vector3f, rhs: Vector3f) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
            && lhs.z == rhs.z
    }
}

extension Vector3f: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Float...) {
        precondition(elements.count == 3)
        
        self.init(
            x: elements[0],
            y: elements[1],
            z: elements[2]
        )
    }
}

#endif

extension Vector3f {
    public func dotProduct(with v: Vector3f) -> Float {
        return x * v.x
            + y * v.y
            + z * v.z
    }
    
    public static let zero: Vector3f = Vector3f(
        x: 0,
        y: 0,
        z: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription)]"
    }
}

#if canImport(simd)
public typealias Vector3 = vector_double3

extension Vector3: Vector {}

extension Vector3: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
        case z
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Double.self, forKey: .x),
            y: try container.decode(Double.self, forKey: .y),
            z: try container.decode(Double.self, forKey: .z)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
        try container.encode(z, forKey: .z)
    }
}

#else

public struct Vector3: Vector, Codable {
    public var x: Double
    public var y: Double
    public var z: Double
    
    public init(

        x: Double,
        y: Double,
        z: Double
    ) {
        self.x = x
        self.y = y
        self.z = z
    }

    public static func +(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y,
            z: lhs.z + rhs.z
        )
    }
    
    public static func -(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y,
            z: lhs.z - rhs.z
        )
    }
    
    public static func *(lhs: Vector3, rhs: Double) -> Vector3 {
        return Vector3(
            x: lhs.x * rhs,
            y: lhs.y * rhs,
            z: lhs.z * rhs
        )
    }
    
    public static func /(lhs: Vector3, rhs: Double) -> Vector3 {
        return Vector3(
            x: lhs.x / rhs,
            y: lhs.y / rhs,
            z: lhs.z / rhs
        )
    }
    
    public static func ==(lhs: Vector3, rhs: Vector3) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
            && lhs.z == rhs.z
    }
}

extension Vector3: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 3)
        
        self.init(
            x: elements[0],
            y: elements[1],
            z: elements[2]
        )
    }
}

#endif

extension Vector3 {
    public func dotProduct(with v: Vector3) -> Double {
        return x * v.x
            + y * v.y
            + z * v.z
    }
    
    public static let zero: Vector3 = Vector3(
        x: 0,
        y: 0,
        z: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription)]"
    }
}

#if canImport(simd)
public typealias Vector4f = vector_float4

extension Vector4f: Vector {}

extension Vector4f: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
        case z
        case w
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Float.self, forKey: .x),
            y: try container.decode(Float.self, forKey: .y),
            z: try container.decode(Float.self, forKey: .z),
            w: try container.decode(Float.self, forKey: .w)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
        try container.encode(z, forKey: .z)
        try container.encode(w, forKey: .w)
    }
}

#else

public struct Vector4f: Vector, Codable {
    public var x: Float
    public var y: Float
    public var z: Float
    public var w: Float
    
    public init(

        x: Float,
        y: Float,
        z: Float,
        w: Float
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }

    public static func +(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return Vector4f(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y,
            z: lhs.z + rhs.z,
            w: lhs.w + rhs.w
        )
    }
    
    public static func -(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return Vector4f(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y,
            z: lhs.z - rhs.z,
            w: lhs.w - rhs.w
        )
    }
    
    public static func *(lhs: Vector4f, rhs: Float) -> Vector4f {
        return Vector4f(
            x: lhs.x * rhs,
            y: lhs.y * rhs,
            z: lhs.z * rhs,
            w: lhs.w * rhs
        )
    }
    
    public static func /(lhs: Vector4f, rhs: Float) -> Vector4f {
        return Vector4f(
            x: lhs.x / rhs,
            y: lhs.y / rhs,
            z: lhs.z / rhs,
            w: lhs.w / rhs
        )
    }
    
    public static func ==(lhs: Vector4f, rhs: Vector4f) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
            && lhs.z == rhs.z
            && lhs.w == rhs.w
    }
}

extension Vector4f: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Float...) {
        precondition(elements.count == 4)
        
        self.init(
            x: elements[0],
            y: elements[1],
            z: elements[2],
            w: elements[3]
        )
    }
}

#endif

extension Vector4f {
    public func dotProduct(with v: Vector4f) -> Float {
        return x * v.x
            + y * v.y
            + z * v.z
            + w * v.w
    }
    
    public static let zero: Vector4f = Vector4f(
        x: 0,
        y: 0,
        z: 0,
        w: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description), \(w.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription), \(w.debugDescription)]"
    }
}

#if canImport(simd)
public typealias Vector4 = vector_double4

extension Vector4: Vector {}

extension Vector4: Codable {
    private enum CodingKeys: CodingKey {
        case x
        case y
        case z
        case w
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            x: try container.decode(Double.self, forKey: .x),
            y: try container.decode(Double.self, forKey: .y),
            z: try container.decode(Double.self, forKey: .z),
            w: try container.decode(Double.self, forKey: .w)
        )
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
        try container.encode(z, forKey: .z)
        try container.encode(w, forKey: .w)
    }
}

#else

public struct Vector4: Vector, Codable {
    public var x: Double
    public var y: Double
    public var z: Double
    public var w: Double
    
    public init(

        x: Double,
        y: Double,
        z: Double,
        w: Double
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }

    public static func +(lhs: Vector4, rhs: Vector4) -> Vector4 {
        return Vector4(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y,
            z: lhs.z + rhs.z,
            w: lhs.w + rhs.w
        )
    }
    
    public static func -(lhs: Vector4, rhs: Vector4) -> Vector4 {
        return Vector4(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y,
            z: lhs.z - rhs.z,
            w: lhs.w - rhs.w
        )
    }
    
    public static func *(lhs: Vector4, rhs: Double) -> Vector4 {
        return Vector4(
            x: lhs.x * rhs,
            y: lhs.y * rhs,
            z: lhs.z * rhs,
            w: lhs.w * rhs
        )
    }
    
    public static func /(lhs: Vector4, rhs: Double) -> Vector4 {
        return Vector4(
            x: lhs.x / rhs,
            y: lhs.y / rhs,
            z: lhs.z / rhs,
            w: lhs.w / rhs
        )
    }
    
    public static func ==(lhs: Vector4, rhs: Vector4) -> Bool {
        return lhs.x == rhs.x
            && lhs.y == rhs.y
            && lhs.z == rhs.z
            && lhs.w == rhs.w
    }
}

extension Vector4: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 4)
        
        self.init(
            x: elements[0],
            y: elements[1],
            z: elements[2],
            w: elements[3]
        )
    }
}

#endif

extension Vector4 {
    public func dotProduct(with v: Vector4) -> Double {
        return x * v.x
            + y * v.y
            + z * v.z
            + w * v.w
    }
    
    public static let zero: Vector4 = Vector4(
        x: 0,
        y: 0,
        z: 0,
        w: 0
    )
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description), \(w.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription), \(w.debugDescription)]"
    }
}
