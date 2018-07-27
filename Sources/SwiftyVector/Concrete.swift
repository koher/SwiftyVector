#if canImport(simd)
@_exported import simd
#endif

#if canImport(simd)
public struct Vector2f: Vector {
    fileprivate var vector: vector_float2

    public init(_ vector: vector_float2) {
        self.vector = vector
    }

    public var x: Float {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Float {
        get { return vector.y }
        set { vector.y = newValue }
    }
}

extension vector_float2 {
    public init(_ vector: Vector2f) {
        self = vector.vector
    }
}

extension Vector2f {
    public init(
        x: Float,
        y: Float
    ) {
        self.vector = vector_float2(
            x: x,
            y: y
        )
    }

    public static func +(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return Vector2f(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return Vector2f(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector2f, rhs: Float) -> Vector2f {
        return Vector2f(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector2f, rhs: Float) -> Vector2f {
        return Vector2f(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector2f, rhs: Vector2f) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector2f: Vector {
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

#endif

extension Vector2f {
    public func dot(_ other: Vector2f) -> Float {
        return x * other.x
            + y * other.y
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

extension Vector2f: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Float...) {
        precondition(elements.count == 2)
        
        self.init(
            x: elements[0],
            y: elements[1]
        )
    }
}

#if canImport(simd)
public struct Vector2: Vector {
    fileprivate var vector: vector_double2

    public init(_ vector: vector_double2) {
        self.vector = vector
    }

    public var x: Double {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Double {
        get { return vector.y }
        set { vector.y = newValue }
    }
}

extension vector_double2 {
    public init(_ vector: Vector2) {
        self = vector.vector
    }
}

extension Vector2 {
    public init(
        x: Double,
        y: Double
    ) {
        self.vector = vector_double2(
            x: x,
            y: y
        )
    }

    public static func +(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector2, rhs: Double) -> Vector2 {
        return Vector2(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector2, rhs: Double) -> Vector2 {
        return Vector2(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector2, rhs: Vector2) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector2: Vector {
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

#endif

extension Vector2 {
    public func dot(_ other: Vector2) -> Double {
        return x * other.x
            + y * other.y
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

extension Vector2: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 2)
        
        self.init(
            x: elements[0],
            y: elements[1]
        )
    }
}

#if canImport(simd)
public struct Vector3f: Vector {
    fileprivate var vector: vector_float3

    public init(_ vector: vector_float3) {
        self.vector = vector
    }

    public var x: Float {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Float {
        get { return vector.y }
        set { vector.y = newValue }
    }

    public var z: Float {
        get { return vector.z }
        set { vector.z = newValue }
    }
}

extension vector_float3 {
    public init(_ vector: Vector3f) {
        self = vector.vector
    }
}

extension Vector3f {
    public init(
        x: Float,
        y: Float,
        z: Float
    ) {
        self.vector = vector_float3(
            x: x,
            y: y,
            z: z
        )
    }

    public static func +(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector3f, rhs: Vector3f) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector3f: Vector {
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

#endif

extension Vector3f {
    public func dot(_ other: Vector3f) -> Float {
        return x * other.x
            + y * other.y
            + z * other.z
    }

    public func cross(_ other: Vector3f) -> Vector3f {
        return Vector3f(
            x: y * other.z - z * other.y,
            y: z * other.x - x * other.z,
            z: x * other.y - y * other.x
        )
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

#if canImport(simd)
public struct Vector3: Vector {
    fileprivate var vector: vector_double3

    public init(_ vector: vector_double3) {
        self.vector = vector
    }

    public var x: Double {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Double {
        get { return vector.y }
        set { vector.y = newValue }
    }

    public var z: Double {
        get { return vector.z }
        set { vector.z = newValue }
    }
}

extension vector_double3 {
    public init(_ vector: Vector3) {
        self = vector.vector
    }
}

extension Vector3 {
    public init(
        x: Double,
        y: Double,
        z: Double
    ) {
        self.vector = vector_double3(
            x: x,
            y: y,
            z: z
        )
    }

    public static func +(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector3, rhs: Vector3) -> Vector3 {
        return Vector3(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector3, rhs: Double) -> Vector3 {
        return Vector3(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector3, rhs: Double) -> Vector3 {
        return Vector3(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector3, rhs: Vector3) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector3: Vector {
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

#endif

extension Vector3 {
    public func dot(_ other: Vector3) -> Double {
        return x * other.x
            + y * other.y
            + z * other.z
    }

    public func cross(_ other: Vector3) -> Vector3 {
        return Vector3(
            x: y * other.z - z * other.y,
            y: z * other.x - x * other.z,
            z: x * other.y - y * other.x
        )
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

#if canImport(simd)
public struct Vector4f: Vector {
    fileprivate var vector: vector_float4

    public init(_ vector: vector_float4) {
        self.vector = vector
    }

    public var x: Float {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Float {
        get { return vector.y }
        set { vector.y = newValue }
    }

    public var z: Float {
        get { return vector.z }
        set { vector.z = newValue }
    }

    public var w: Float {
        get { return vector.w }
        set { vector.w = newValue }
    }
}

extension vector_float4 {
    public init(_ vector: Vector4f) {
        self = vector.vector
    }
}

extension Vector4f {
    public init(
        x: Float,
        y: Float,
        z: Float,
        w: Float
    ) {
        self.vector = vector_float4(
            x: x,
            y: y,
            z: z,
            w: w
        )
    }

    public static func +(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return Vector4f(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return Vector4f(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector4f, rhs: Float) -> Vector4f {
        return Vector4f(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector4f, rhs: Float) -> Vector4f {
        return Vector4f(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector4f, rhs: Vector4f) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector4f: Vector {
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

#endif

extension Vector4f {
    public func dot(_ other: Vector4f) -> Float {
        return x * other.x
            + y * other.y
            + z * other.z
            + w * other.w
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

#if canImport(simd)
public struct Vector4: Vector {
    fileprivate var vector: vector_double4

    public init(_ vector: vector_double4) {
        self.vector = vector
    }

    public var x: Double {
        get { return vector.x }
        set { vector.x = newValue }
    }

    public var y: Double {
        get { return vector.y }
        set { vector.y = newValue }
    }

    public var z: Double {
        get { return vector.z }
        set { vector.z = newValue }
    }

    public var w: Double {
        get { return vector.w }
        set { vector.w = newValue }
    }
}

extension vector_double4 {
    public init(_ vector: Vector4) {
        self = vector.vector
    }
}

extension Vector4 {
    public init(
        x: Double,
        y: Double,
        z: Double,
        w: Double
    ) {
        self.vector = vector_double4(
            x: x,
            y: y,
            z: z,
            w: w
        )
    }

    public static func +(lhs: Vector4, rhs: Vector4) -> Vector4 {
        return Vector4(lhs.vector + rhs.vector)
    }
    
    public static func -(lhs: Vector4, rhs: Vector4) -> Vector4 {
        return Vector4(lhs.vector - rhs.vector)
    }
    
    public static func *(lhs: Vector4, rhs: Double) -> Vector4 {
        return Vector4(lhs.vector * rhs)
    }
    
    public static func /(lhs: Vector4, rhs: Double) -> Vector4 {
        return Vector4(lhs.vector / rhs)
    }
    
    public static func ==(lhs: Vector4, rhs: Vector4) -> Bool {
        return lhs.vector == rhs.vector
    }
}

#else

public struct Vector4: Vector {
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

#endif

extension Vector4 {
    public func dot(_ other: Vector4) -> Double {
        return x * other.x
            + y * other.y
            + z * other.z
            + w * other.w
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
