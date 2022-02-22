# SwiftyMasonry

[![CI Status](https://img.shields.io/travis/Pircate/SwiftyMasonry.svg?style=flat)](https://travis-ci.org/Pircate/SwiftyMasonry)
[![Version](https://img.shields.io/cocoapods/v/SwiftyMasonry.svg?style=flat)](https://cocoapods.org/pods/SwiftyMasonry)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/SwiftyMasonry.svg?style=flat)](https://cocoapods.org/pods/SwiftyMasonry)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyMasonry.svg?style=flat)](https://cocoapods.org/pods/SwiftyMasonry)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SwiftyMasonry is available through [CocoaPods](https://cocoapods.org) or [Carthage](https://github.com/Carthage/Carthage). To install
it, simply add the following line to your Podfile or Cartfile:

### CocoaPods

```ruby
pod 'SwiftyMasonry'
```

### Carthage

```ruby
github "Pircate/SwiftyMasonry"
```

## Usage

```swift
view.mas.makeConstraints {
    $0.top.equalTo(mas.topLayoutGuide)
    $0.left.right.equalTo(superView)
    $0.bottom.equalTo(superView).inset(49)
}

view.mas.makeConstraints {
    $0.edges.equalTo(superView).insets(UIEdgeInsets(top: 10, left: 20, bottom: 30, right: 40))
}

view.mas.makeConstraints {
    $0.center.equalTo(superView)
    $0.size.mas.equalTo(CGSize(width: 100, height: 100)) // mas.equalTo代替mas_equalTo
}

view.mas.makeConstraints {
    $0.top.equalTo(otherView.mas.bottom).offset(20)
    $0.left.equalTo(superView).inset(15)
}
```

## Author

Pircate, gao497868860@163.com

## License

SwiftyMasonry is available under the MIT license. See the LICENSE file for more info.
