import XCTest
import SwiftyVector

func XCTAssertEqual(_ expression1: Vector2, _ expression2: Vector2, accuracy: Double) {
    XCTAssertEqual(expression1.x, expression2.x, accuracy: accuracy)
    XCTAssertEqual(expression1.y, expression2.y, accuracy: accuracy)
}

func XCTAssertEqual(_ expression1: Vector3, _ expression2: Vector3, accuracy: Double) {
    XCTAssertEqual(expression1.x, expression2.x, accuracy: accuracy)
    XCTAssertEqual(expression1.y, expression2.y, accuracy: accuracy)
    XCTAssertEqual(expression1.z, expression2.z, accuracy: accuracy)
}

func XCTAssertEqual(_ expression1: Vector4, _ expression2: Vector4, accuracy: Double) {
    XCTAssertEqual(expression1.x, expression2.x, accuracy: accuracy)
    XCTAssertEqual(expression1.y, expression2.y, accuracy: accuracy)
    XCTAssertEqual(expression1.z, expression2.z, accuracy: accuracy)
    XCTAssertEqual(expression1.w, expression2.w, accuracy: accuracy)
}
