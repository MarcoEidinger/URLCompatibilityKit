@testable import URLCompatibilityKit
import XCTest

final class AppendTests: XCTestCase {
    func testAppendingFile() {
        let fileURLFromNewAPI = URL.documentsDirectory.appending(path: "myFile")
        let fileURLFromOldAPI = try! FileManager.default
            .url(
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false
            )
            .appendingPathComponent(
                "myFile", isDirectory: false
            )
        XCTAssertEqual(fileURLFromNewAPI, fileURLFromOldAPI)
    }

    func testAppendingDirectory() {
        let fileURLFromNewAPI = URL.documentsDirectory.appending(path: "myDir/")
        let fileURLFromOldAPI = try! FileManager.default
            .url(
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false
            )
            .appendingPathComponent(
                "myDir", isDirectory: true
            )
        XCTAssertEqual(fileURLFromNewAPI, fileURLFromOldAPI)
    }

    func testAppendFile() {
        var fileURLFromNewAPI = URL.documentsDirectory
        fileURLFromNewAPI.append(path: "myFile")
        let fileURLFromOldAPI = try! FileManager.default
            .url(
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false
            )
            .appendingPathComponent(
                "myFile", isDirectory: false
            )
        XCTAssertEqual(fileURLFromNewAPI, fileURLFromOldAPI)
    }

    func testAppendDirectory() {
        var fileURLFromNewAPI = URL.documentsDirectory
        fileURLFromNewAPI.append(path: "myDir/")
        let fileURLFromOldAPI = try! FileManager.default
            .url(
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false
            )
            .appendingPathComponent(
                "myDir", isDirectory: true
            )
        XCTAssertEqual(fileURLFromNewAPI, fileURLFromOldAPI)
    }
}
