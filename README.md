# URLCompatibilityKit

**URLCompatibilityKit** is a lightweight Swift package that adds compatible backports of commonly used type properties, type and instance properties for `URL` that are only available from iOS 16.0+ / macOS 13.0+ / tvOS 16.0+ / watchOS 9.0+.

Avoid conditional compiler directives in your code!

<table>
<thead>
  <tr>
    <th>Without URLCompatibilityKit</th>
    <th>With URLCompatibilityKit</th>
  </tr>
</thead>
<tbody>
<tr>
<td>

```swift
let fileURL: URL

if #available(iOS 16.0, *) {
    fileURL = URL
        .documentsDirectory
        .appending(path: "myfile")
} else {
    fileURL = try FileManager.default
        .url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false
        )
        .appendingPathComponent(
            "myfile", isDirectory: false
        )
}
```

</td>
<td>

```swift
import URLCompatibilityKit

let fileURL = URL
    .documentsDirectory
    .appending(path: "myfile")
```

</td>
</tr>
</tbody>
</table>

It currently includes backward-compatible versions of the following APIs:

**Type Properties**

- `URL.applicationDirectory`
- `URL.applicationSupportDirectory`
- `URL.cachesDirectory`
- `URL.desktopDirectory`
- `URL.documentsDirectory`
- `URL.downloadsDirectory`
- `URL.homeDirectory`
- `URL.libraryDirectory`
- `URL.moviesDirectory`
- `URL.musicDirectory`
- `URL.picturesDirectory`
- `URL.sharedPublicDirectory`
- `URL.temporaryDirectory`
- `URL.trashDirectory`
- `URL.userDirectory`

**Type Methods**

- `URL.currentDirectory() -> URL`
- `homeDirectory(forUser: String) -> URL?`

**Instance Methods**
- `append(path:)` //  equivalent to using URL.DirectoryHint = .inferFromPath
- `appending(path:)` //  equivalent to using URL.DirectoryHint = .inferFromPath


Once you're ready to make iOS 16 your minimum deployment target, you can safely unlink URLCompatibilityKit from your project without making any additional changes to your code base (besides removing all `import URLCompatibilityKit` statements).

URLCompatibilityKit marks its added APIs either as obsolete or as deprecated when integrated into an iOS 16-based project, so you'll get a reminder that it's no longer needed once you're able to use the matching system APIs directly.

## Installation

URLCompatibilityKit is distributed using the [Swift Package Manager](https://swift.org/package-manager). To install it, use Xcode’s `File > Add Packages...` menu command to add it to your iOS app project.

Then import URLCompatibilityKit wherever you’d like to use it:

```swift
import URLCompatibilityKit
```
