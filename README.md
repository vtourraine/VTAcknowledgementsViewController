# VTAcknowledgementsViewController

_Ready to use “Acknowledgements”/“Licenses”/“Credits” view controller for [CocoaPods](http://cocoapods.org/)._

![iPhone screenshot 1](http://vtourraine.github.io/VTAcknowledgementsViewController/screenshots/iPhone-300-01.png)
![iPhone screenshot 2](http://vtourraine.github.io/VTAcknowledgementsViewController/screenshots/iPhone-300-02.png)

## How to Install

This project is only useful if you use CocoaPods, so let’s assume that you’re indeed using CocoaPods. 

1. Add `pod 'VTAcknowledgementsViewController'` in your `Podfile`.
2. Import the `Pods-acknowledgements.plist` file from the generated `Pods` folder to your main app project (so you need to run `pod install` at least once before using this pod; don’t copy the file itself, just add a reference). 

**Note: if you know how to import this file automatically, as part of the `pod install` process, please let me know.**

## How to Use

The `VTAcknowledgementsViewController` instance is usually pushed to an existing `UINavigationController`.

``` objc
UIViewController *viewController = [VTAcknowledgementsViewController acknowledgementsViewController];
[self.navigationController pushViewController:viewController animated:YES];
```


### Info text in acknowledgements table header
##### Variant 1 - in code 

``` objc
viewController.acknowledgementsInfoText = @"We love open source software."
```
_This need to be done befor pushing the view controller._

##### Variant 2 - Localizable.strings
Add the following to the default `Localizable.strings` files:

``` objc
// info text above the list of acknowledgements
VTAckAcknowledgementsInfoText = "We love open source software.";
```


## Requirements

VTAcknowledgementsViewController requires iOS 5.0 and above, and uses ARC.

## Credits

VTAcknowledgementsViewController was created by [Vincent Tourraine](http://www.vtourraine.net).

## License

VTAcknowledgementsViewController is available under the MIT license. See the LICENSE file for more info.
