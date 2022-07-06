import Foundation

// @available on extension level sufficient as added functions do not match upcoming APIs exactly
@available(iOS, deprecated: 16.0, message: "URLCompatibilityKit is only useful when targeting iOS versions earlier than 16")
@available(macOS, deprecated: 13.0, message: "URLCompatibilityKit is only useful when targeting macOS versions earlier than 13")
@available(tvOS, deprecated: 16.0, message: "URLCompatibilityKit is only useful when targeting tvOS versions earlier than 16")
@available(watchOS, deprecated: 9.0, message: "URLCompatibilityKit is only useful when targeting watchOS versions earlier than 9")
public extension URL {
    /// Appends a path (inferring if it is directory or not) to the receiver.
    mutating func append<S>(path: S) where S: StringProtocol {
        if path.hasSuffix("/") {
            appendPathComponent("\(path)", isDirectory: true)
        } else {
            appendPathComponent("\(path)", isDirectory: false)
        }
    }

    /// Returns a URL constructed by appending the given path (inferring if it is directory or not) to self
    func appending<S>(path: S) -> URL where S: StringProtocol {
        if path.hasSuffix("/") {
            return appendingPathComponent("\(path)", isDirectory: true)
        } else {
            return appendingPathComponent("\(path)", isDirectory: false)
        }
    }
}
