import Foundation

// @available on method level needed to avoid "`Ambiguous use of ..." compiler error as added function/property does match upcoming API 
public extension URL {
    /// The URL to the program’s current directory.
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static func currentDirectory() -> URL {
        URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    }

    #if os(macOS)
        /// Home directory for the specified user.
        @available(iOS, introduced: 11.0, obsoleted: 16.0)
        @available(macOS, introduced: 10.12, obsoleted: 13.0)
        @available(tvOS, introduced: 10.0, obsoleted: 16.0)
        @available(watchOS, introduced: 3.0, obsoleted: 9.0)
        static func homeDirectory(forUser user: String) -> URL? {
            FileManager.default.homeDirectory(forUser: user)
        }
    #endif
}
