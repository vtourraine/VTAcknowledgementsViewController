//
// VTAcknowledgementsViewController.h
//
// Copyright (c) 2013-2014 Vincent Tourraine (http://www.vtourraine.net)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

// Only available with Xcode 6+, so we need to handle older versions too.
#ifndef IBInspectable
#define IBInspectable
#endif


/**
 `VTAcknowledgementsViewController` is a subclass of `UITableViewController` that displays
 a list of acknowledgements.
 */
@interface VTAcknowledgementsViewController : UITableViewController

/**
 Custom font for the license main text view. If `nil` (default), the system font (size 17) is used.
 */
@property (nonatomic, strong) UIFont *licenseTextViewFont;

/**
 Array of `VTAcknowledgement`.
 */
@property (nonatomic, strong) NSArray *acknowledgements;

/**
 Header text to be displayed above the list of the acknowledgements. 
 It needs to get set before `viewDidLoad` gets called.
 */
@property (nonatomic, copy) IBInspectable NSString *headerText;

/**
 Acknowledgements plist file name whose contents to be loaded.
 It expects to get set by "User Defined Runtime Attributes" in Interface Builder.
 */
@property (nonatomic, copy) IBInspectable NSString *acknowledgementsPlistName;

/**
 Creates a new acknowledgements view controller

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
+ (instancetype)acknowledgementsViewController;

/**
 The localized version of “Acknowledgements”.
 You can use this value for the button presenting the `VTAcknowledgementsViewController`, for instance.

 @return The localized title.
 */
+ (NSString *)localizedTitle;

/**
 Initializes an acknowledgements view controller with the content of the `Pods-acknowledgements.plist`.

 @param acknowledgementsPlistPath The path to the `Pods-acknowledgements.plist`.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithAcknowledgementsPlistPath:(NSString *)acknowledgementsPlistPath;

@end
