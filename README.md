# Iconfont.swift

[![Build status][ci-image]][ci-url]
[![Carthage compatible][carthage-image]][carthage-url]

[ci-image]: https://travis-ci.org/jsw0528/Iconfont.swift.svg?branch=master
[ci-url]: https://travis-ci.org/jsw0528/Iconfont.swift
[carthage-image]: https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat
[carthage-url]: https://github.com/Carthage/Carthage

## Requirements

- iOS 7.0
- Xcode 7.2 (Swift 2.1)

## Installation

### Using [Carthage](https://github.com/Carthage/Carthage)

Add `github "jsw0528/Iconfont.swift"` to your `Cartfile` and run `carthage update --platform iOS`. If unfamiliar with Carthage then checkout their [Getting Started section](https://github.com/Carthage/Carthage#getting-started) or this [sample app](https://github.com/ankurp/DollarCarthageApp)

Then add `import Iconfont` to the top of the files using Iconfont.swift.

## Usage

```swift
// Register
UIFont.register("Assets/Fonts/FontAwesome.otf")

// Working with UILabel
let label = UILabel(frame: CGRectMake(100, 100, 100, 100))
label.font = UIFont(name: "FontAwesome", size: 100)
label.text = "\u{f09b}" // Unicode

// Working with UIButton
let btn = UIButton(frame: CGRectMake(100, 300, 100, 40))
btn.titleLabel!.font = UIFont(name: "FontAwesome", size: 40)
btn.setTitle("\u{f09b}", forState: .Normal)
btn.setTitleColor(UIColor.blackColor(), forState: .Normal)

// Working with UIImage
let img = UIImage.iconfont("\u{f09b}", familyName: "FontAwesome", size: 100)
let imgView = UIImageView()
imgView.image = img
imgView.frame = CGRectMake(100, 400, img.size.width, img.size.height)
```

## License

Iconfont.swift is released under an MIT license. See the LICENSE file for more information.
