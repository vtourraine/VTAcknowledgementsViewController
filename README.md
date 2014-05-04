# VTAcknowledgementsViewController

_Ready to use “Acknowledgements”/“Licenses”/“Credits” view controller for [CocoaPods](http://cocoapods.org/)._

![iPhone screenshot 1](http://vtourraine.github.io/VTAcknowledgementsViewController/screenshots/iPhone-300-01.png)
![iPhone screenshot 2](http://vtourraine.github.io/VTAcknowledgementsViewController/screenshots/iPhone-300-02.png)

## How to Install

This project is only useful if you use CocoaPods, so let’s assume that you’re indeed using CocoaPods.

1. Add `pod 'VTAcknowledgementsViewController'` in your `Podfile`.
2. Import the `Pods-acknowledgements.plist` file from the generated `Pods` folder to your main app project (so you need to run `pod install` at least once before using this pod; don’t copy the file itself, just add a reference). You can automate that step from your Podfile, [as pointed out by @billyto](https://github.com/vtourraine/VTAcknowledgementsViewController/issues/20).

**Note: if you know how to import this file automatically, as part of the `pod install` process, please let me know.**

## How to Use

The `VTAcknowledgementsViewController` instance is usually pushed to an existing `UINavigationController`.

``` objc
VTAcknowledgementsViewController *viewController = [VTAcknowledgementsViewController acknowledgementsViewController];
viewController.headerText = NSLocalizedString(@"We love open source software.", nil); // optional
[self.navigationController pushViewController:viewController animated:YES];
```

If your `.plist` file is named something other than `Pods-acknowledgements.plist` (_e.g._ if you’re using fancy build targets), you can initialize the view controller with a custom path.

``` objc
NSString *path = [[NSBundle mainBundle] pathForResource:@"Pods-MyTarget-acknowledgements" ofType:@"plist"];
VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] initWithAcknowledgementsPlistPath:path];
```

## Requirements

VTAcknowledgementsViewController requires iOS 5.0 and above, and uses ARC.

## Credits

VTAcknowledgementsViewController was created by [Vincent Tourraine](http://www.vtourraine.net), with help from [our contributors](https://github.com/vtourraine/VTAcknowledgementsViewController/contributors).

## License

VTAcknowledgementsViewController is available under the MIT license. See the LICENSE file for more info.
