# KHLoadingView

[![CI Status](http://img.shields.io/travis/mkhglab@gmail.com/KHLoadingView.svg?style=flat)](https://travis-ci.org/mkhglab@gmail.com/KHLoadingView)
[![Version](https://img.shields.io/cocoapods/v/KHLoadingView.svg?style=flat)](http://cocoapods.org/pods/KHLoadingView)
[![License](https://img.shields.io/cocoapods/l/KHLoadingView.svg?style=flat)](http://cocoapods.org/pods/KHLoadingView)
[![Platform](https://img.shields.io/cocoapods/p/KHLoadingView.svg?style=flat)](http://cocoapods.org/pods/KHLoadingView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

KHLoadingView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KHLoadingView"
```

## Usage

`import KHLoadingView` to your project. And then follow the example-

```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    let loading = KHLoading()
    loading.showLoadingView(parentView:self.view)
}
```

## Author

MKHGLab, mkhglab@gmail.com

## License

KHLoadingView is available under the MIT license. See the LICENSE file for more info.
