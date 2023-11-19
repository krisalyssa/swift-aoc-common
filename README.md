# swift-aoc-common

**swift-aoc-common** contains common code for Swift solutions for Advent of Code.

## Overview

## Documentation

## Adding swift-aoc-common as a Dependency

To use the `swift-aoc-common` library in the solutions for an Advent of Code project,
add the following line to the dependencies in your `Package.swift` file.

```swift
.package(url: "https://github.com/CraigCottingham/swift-aoc-common", from: "1.0.0"),
```

Then include `"Common"` as a dependency for your executable target.

```swift
.target(name: "<target>", dependencies: [
    .product(name: "Common", package: "swift-aoc-common"),
]),
```

Finally, add `import Common` to your source code.

## License

MIT License

Copyright (c) 2023 Craig S. Cottingham

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
