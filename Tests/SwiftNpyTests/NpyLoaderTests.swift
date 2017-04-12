import XCTest
@testable import SwiftNpy

class NpyLoaderTests: XCTestCase {
    
    func testLoadSuccessBool() {
        do {
            let npyData: Npy<Bool> = try! load(data: b1_shape_2_elements_true_false)
            XCTAssertEqual(npyData.shape, [2])
            XCTAssertEqual(npyData.elements, [true, false])
        }
    }
    
    func testLoadSuccessUInt() {
        do {
            let npyData: Npy<UInt8> = try! load(data: u1_shape_2_4_elements_0_7_big)
            XCTAssertEqual(npyData.shape, [2, 4])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7])
        }
        do {
            let npyData: Npy<UInt> = try! load(data: u1_shape_2_4_elements_0_7_big)
            XCTAssertEqual(npyData.shape, [2, 4])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7])
        }
        do {
            let npyData: Npy<UInt16> = try! load(data: u2_shape_3_3_eye)
            XCTAssertEqual(npyData.shape, [3, 3])
            XCTAssertEqual(npyData.elements, [1, 0, 0, 0, 1, 0, 0, 0, 1])
        }
        do {
            let npyData: Npy<UInt> = try! load(data: u2_shape_3_3_eye)
            XCTAssertEqual(npyData.shape, [3, 3])
            XCTAssertEqual(npyData.elements, [1, 0, 0, 0, 1, 0, 0, 0, 1])
        }
        do {
            let npyData: Npy<UInt32> = try! load(data: u4_shape_3_3_elements_0_8_big)
            XCTAssertEqual(npyData.shape, [3, 3])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7, 8])
        }
        do {
            let npyData: Npy<UInt> = try! load(data: u4_shape_3_3_elements_0_8_big)
            XCTAssertEqual(npyData.shape, [3, 3])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7, 8])
        }
        do {
            let npyData: Npy<UInt64> = try! load(data: u8_shape_5_3_elements_0_14)
            XCTAssertEqual(npyData.shape, [5, 3])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
        }
        do {
            let npyData: Npy<UInt> = try! load(data: u8_shape_5_3_elements_0_14)
            XCTAssertEqual(npyData.shape, [5, 3])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
        }
    }
    
    func testLoadSuccessInt() {
        do {
            let npyData: Npy<Int8> = try! load(data: i1_shape_6_elements_0_5)
            XCTAssertEqual(npyData.shape, [6])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5])
        }
        do {
            let npyData: Npy<Int> = try! load(data: i1_shape_6_elements_0_5)
            XCTAssertEqual(npyData.shape, [6])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5])
        }
        do {
            let npyData: Npy<Int16> = try! load(data: i2_shape_6_elements_0_5)
            XCTAssertEqual(npyData.shape, [6])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5])
        }
        do {
            let npyData: Npy<Int> = try! load(data: i2_shape_6_elements_0_5)
            XCTAssertEqual(npyData.shape, [6])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5])
        }
        do {
            let npyData: Npy<Int32> = try! load(data: i4_shape_2_2_2_elements_0_7_big)
            XCTAssertEqual(npyData.shape, [2, 2, 2])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7])
        }
        do {
            let npyData: Npy<Int> = try! load(data: i4_shape_2_2_2_elements_0_7_big)
            XCTAssertEqual(npyData.shape, [2, 2, 2])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7])
        }
        do {
            let npyData: Npy<Int64> = try! load(data: i8_shape_2_3_4_elements_0_23)
            XCTAssertEqual(npyData.shape, [2, 3, 4])
            XCTAssertEqual(npyData.elements, (0..<24).map { $0 })
        }
        do {
            let npyData: Npy<Int> = try! load(data: i8_shape_2_3_4_elements_0_23)
            XCTAssertEqual(npyData.shape, [2, 3, 4])
            XCTAssertEqual(npyData.elements, (0..<24).map { $0 })
        }
        
        
    }
    
    func testLoadSuccessFloatDouble() {
        do {
            let npyData: Npy<Float> = try! load(data: f4_shape_10_elements_0_9)
            XCTAssertEqual(npyData.shape, [10])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        }
        do {
            let npyData: Npy<Float> = try! load(data: f4_shape_2_2_2_elements_0_7_big)
            XCTAssertEqual(npyData.shape, [2, 2, 2])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5, 6, 7])
        }
        do {
            let npyData: Npy<Double> = try! load(data: f8_shape_2_3_elements_0_5)
            XCTAssertEqual(npyData.shape, [2, 3])
            XCTAssertEqual(npyData.elements, [0, 1, 2, 3, 4, 5])
        }
    }
    
    func testLoadFailure() {
        do {
            let loader = {
                let _: Npy<Double> = try load(data: f4_shape_10_elements_0_9)
            }
            XCTAssertThrowsError(try loader())
        }
        do {
            let loader = {
                let _: Npy<Float> = try load(data: f8_shape_2_3_elements_0_5)
            }
            XCTAssertThrowsError(try loader())
        }
    }


    static var allTests = [
        ("testLoadSucessUInt", testLoadSuccessUInt),
        ("testLoadSucessInt", testLoadSuccessInt),
        ("testLoadSucessFloatDouble", testLoadSuccessFloatDouble),
        ("testLoadFailure", testLoadFailure),
    ]
}

let b1_shape_2_elements_true_false = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x7c, 0x62, 0x31, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x29,
    0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x01, 0x00
])

let u1_shape_2_4_elements_0_7_big = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x7c, 0x75, 0x31, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x20,
    0x34, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
])

let u2_shape_3_3_eye = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x75, 0x32, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x33, 0x2c, 0x20,
    0x33, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x00
])

let u4_shape_3_3_elements_0_8_big = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3e, 0x75, 0x34, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x33, 0x2c, 0x20,
    0x33, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x08
])

let u8_shape_5_3_elements_0_14 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x75, 0x38, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x35, 0x2c, 0x20,
    0x33, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00])

let i1_shape_6_elements_0_5 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x7c, 0x69, 0x31, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x36, 0x2c, 0x29,
    0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05
])

let i2_shape_6_elements_0_5 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x69, 0x32, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x36, 0x2c, 0x29,
    0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00
])

let i4_shape_2_2_2_elements_0_7_big = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3e, 0x69, 0x34, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x20,
    0x32, 0x2c, 0x20, 0x32, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07
])

let f4_shape_2_2_2_elements_0_7_big = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3e, 0x66, 0x34, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x20,
    0x32, 0x2c, 0x20, 0x32, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x3f, 0x80, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x40, 0x80, 0x00, 0x00, 0x40, 0xa0, 0x00, 0x00, 0x40, 0xc0, 0x00, 0x00, 0x40, 0xe0, 0x00, 0x00
])

let i8_shape_2_3_4_elements_0_23 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x69, 0x38, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x20,
    0x33, 0x2c, 0x20, 0x34, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
])

let f4_shape_10_elements_0_9 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x66, 0x34, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x31, 0x30, 0x2c,
    0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x3f, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x40, 0x40,
    0x00, 0x00, 0x80, 0x40, 0x00, 0x00, 0xa0, 0x40, 0x00, 0x00, 0xc0, 0x40, 0x00, 0x00, 0xe0, 0x40,
    0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x10, 0x41
])

let f8_shape_2_3_elements_0_5 = Data(bytes: [
    0x93, 0x4e, 0x55, 0x4d, 0x50, 0x59, 0x01, 0x00, 0x46, 0x00, 0x7b, 0x27, 0x64, 0x65, 0x73, 0x63,
    0x72, 0x27, 0x3a, 0x20, 0x27, 0x3c, 0x66, 0x38, 0x27, 0x2c, 0x20, 0x27, 0x66, 0x6f, 0x72, 0x74,
    0x72, 0x61, 0x6e, 0x5f, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x27, 0x3a, 0x20, 0x46, 0x61, 0x6c, 0x73,
    0x65, 0x2c, 0x20, 0x27, 0x73, 0x68, 0x61, 0x70, 0x65, 0x27, 0x3a, 0x20, 0x28, 0x32, 0x2c, 0x20,
    0x33, 0x29, 0x2c, 0x20, 0x7d, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x0a,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x3f,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x40,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x40
])
