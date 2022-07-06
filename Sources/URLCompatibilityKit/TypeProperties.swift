import Foundation

// @available on method level needed to avoid "`Ambiguous use of ..." compiler error as added function/property does match upcoming API
public extension URL {
    /// Supported applications (/Applications).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var applicationDirectory: URL {
        FileManager.default.urls(for: .applicationDirectory, in: .userDomainMask).first!
    }

    /// Application support files (Library/Application Support).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var applicationSupportDirectory: URL {
        FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
    }

    /// Discardable cache files (Library/Caches).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var cachesDirectory: URL {
        FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }

    /// The user’s desktop directory.
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var desktopDirectory: URL {
        FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first!
    }

    /// Document directory.
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var documentsDirectory: URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    /// The user’s downloads directory.
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var downloadsDirectory: URL {
        FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first!
    }

    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var homeDirectory: URL {
        URL(fileURLWithPath: NSHomeDirectory())
    }

    /// Various user-visible documentation, support, and configuration files (/Library).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var libraryDirectory: URL {
        FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!
    }

    /// The user’s Movies directory (~/Movies).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var moviesDirectory: URL {
        FileManager.default.urls(for: .moviesDirectory, in: .userDomainMask).first!
    }

    /// The user’s Music directory (~/Music).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var musicDirectory: URL {
        FileManager.default.urls(for: .musicDirectory, in: .userDomainMask).first!
    }

    /// The user’s Pictures directory (~/Pictures).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var picturesDirectory: URL {
        FileManager.default.urls(for: .picturesDirectory, in: .userDomainMask).first!
    }

    /// The user’s Public sharing directory (~/Public).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var sharedPublicDirectory: URL {
        FileManager.default.urls(for: .sharedPublicDirectory, in: .userDomainMask).first!
    }

    /// The temporary directory for the current user.
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var temporaryDirectory: URL {
        URL(fileURLWithPath: NSTemporaryDirectory())
    }

    #if os(macOS)
        /// The trash directory.
        @available(iOS, introduced: 11.0, obsoleted: 16.0)
        @available(macOS, introduced: 10.12, obsoleted: 13.0)
        @available(tvOS, introduced: 10.0, obsoleted: 16.0)
        @available(watchOS, introduced: 3.0, obsoleted: 9.0)
        static var trashDirectory: URL {
            FileManager.default.urls(for: .trashDirectory, in: .localDomainMask).first!
        }
    #endif

    /// User home directories (/Users).
    @available(iOS, introduced: 11.0, obsoleted: 16.0)
    @available(macOS, introduced: 10.12, obsoleted: 13.0)
    @available(tvOS, introduced: 10.0, obsoleted: 16.0)
    @available(watchOS, introduced: 3.0, obsoleted: 9.0)
    static var userDirectory: URL {
        FileManager.default.urls(for: .userDirectory, in: .localDomainMask).first!
    }
}
