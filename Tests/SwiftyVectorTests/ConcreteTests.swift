import XCTest
@testable import SwiftyVector

private let epsilon = 1.0e-10

class ConcreteTests : XCTestCase {
    func testSum() {
        var a: Vector3 = [2, 3, 5]
        let b: Vector3 = [7, 11, 13]
        XCTAssertEqual(a + b, [9, 14, 18])
        
        a += [7, 11, 13]
        XCTAssertEqual(a, [9, 14, 18])
    }
    
    func testDifference() {
        var a: Vector3 = [2, 3, 5]
        let b: Vector3 = [7, 11, 13]
        XCTAssertEqual(a - b, [-5, -8, -8])
        
        a -= [7, 11, 13]
        XCTAssertEqual(a, [-5, -8, -8])
    }
    
    func testProduct() {
        var a: Vector3 = [2, 3, 5]
        let k: Double = 7
        XCTAssertEqual(a * k, [14, 21, 35])
        XCTAssertEqual(k * a, [14, 21, 35])
        
        a *= 7
        XCTAssertEqual(a, [14, 21, 35])
    }
    
    func testQuotient() {
        var a: Vector3 = [2, 3, 5]
        let k: Double = 4
        XCTAssertEqual(a / k, [0.5, 0.75, 1.25])
        
        a /= 4
        XCTAssertEqual(a, [0.5, 0.75, 1.25])
    }
    
    func testPrefixOperators() {
        let a: Vector4 = [2, -3, 5, -7]
        XCTAssertEqual(+a, [2, -3, 5, -7])
        XCTAssertEqual(-a, [-2, 3, -5, 7])
    }
    
    func testLength() {
        let a: Vector2 = [3, 4]
        XCTAssertEqual(a.squareLength, 25)
        XCTAssertEqual(a.length, 5)
    }
    
    func testDistance() {
        let a: Vector2 = [4, 6]
        let b: Vector2 = [1, 2]
        XCTAssertEqual(a.squareDistance(from: b), 25)
        XCTAssertEqual(a.distance(from: b), 5)
    }
    
    func testUnit() {
        let a: Vector3 = [1, 2, 3]
        XCTAssertEqual(a.unit, [1 / sqrt(14), 2 / sqrt(14), 3 / sqrt(14)], accuracy: epsilon)
    }
    
    func testDot() {
        let a: Vector3 = [2, 3, 5]
        let b: Vector3 = [7, 11, 13]
        XCTAssertEqual(a.dot(b), 112)
    }
    
    func testCross() {
        let a: Vector3 = [2, 3, 5]
        let b: Vector3 = [7, 11, 13]
        XCTAssertEqual(a.cross(b), [-16, 9, 1])
    }
    
    func testAngle() {
        let a: Vector2 = [sqrt(3), 1]
        let b: Vector2 = [3, 3 * sqrt(3)]
        XCTAssertEqual(a.cos(from: b), sqrt(3) / 2, accuracy: epsilon)
        XCTAssertEqual(a.angle(from: b), .pi / 6, accuracy: epsilon)
    }
}
