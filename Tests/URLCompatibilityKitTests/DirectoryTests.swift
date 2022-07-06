@testable import URLCompatibilityKit
import XCTest

final class DirectoryTests: XCTestCase {
    func testApplicationDirectory() {
        XCTAssertTrue(URL.applicationDirectory.absoluteString.hasSuffix("/Applications/"))
    }

    func testApplicationSupportDirectory() {
        XCTAssertTrue(URL.applicationSupportDirectory.absoluteString.hasSuffix("/Application%20Support/"))
    }

    func testCachesDirectory() {
        XCTAssertTrue(URL.cachesDirectory.absoluteString.hasSuffix("/Caches/"))
    }

    func testDesktopDirectory() {
        XCTAssertTrue(URL.desktopDirectory.absoluteString.hasSuffix("/Desktop/"))
    }

    func testDocumentsDirectory() {
        XCTAssertTrue(URL.documentsDirectory.absoluteString.hasSuffix("/Documents/"))
    }

    func testDownloadsDirectory() {
        XCTAssertTrue(URL.downloadsDirectory.absoluteString.hasSuffix("/Downloads/"))
    }

    func testHomeDirectory() {
        XCTAssertEqual(URL.homeDirectory, URL(fileURLWithPath: NSHomeDirectory()))
    }

    func testLibraryDirectory() {
        XCTAssertTrue(URL.libraryDirectory.absoluteString.hasSuffix("Library/"))
    }

    func testMoviesDirectory() {
        XCTAssertTrue(URL.moviesDirectory.absoluteString.hasSuffix("Movies/"))
    }

    func testMusicDirectory() {
        XCTAssertTrue(URL.musicDirectory.absoluteString.hasSuffix("Music/"))
    }

    func testPicturesDirectory() {
        XCTAssertTrue(URL.picturesDirectory.absoluteString.hasSuffix("/Pictures/"))
    }

    func testSharedPublicDirectory() {
        XCTAssertTrue(URL.sharedPublicDirectory.absoluteString.hasSuffix("/Public/"))
    }

    func testTemporaryDirectory() {
        XCTAssertTrue(URL.temporaryDirectory.absoluteString.hasSuffix("/T/") || URL.temporaryDirectory.absoluteString.hasSuffix("/tmp/"))
    }

    #if os(macOS)
        func testTrashDirectory() {
            XCTAssertTrue(URL.trashDirectory.absoluteString.hasSuffix("/.Trash/"))
        }
    #endif

    func testUserDirectory() {
        XCTAssertTrue(URL.userDirectory.absoluteString.hasSuffix("/Users/"))
    }

    func testCurrentDirectory() {
        XCTAssertEqual(URL.currentDirectory(), URL(fileURLWithPath: FileManager.default.currentDirectoryPath))
    }

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
}
