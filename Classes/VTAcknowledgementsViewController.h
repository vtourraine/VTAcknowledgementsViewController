//
// VTAcknowledgementsViewController.h
//
// Copyright (c) 2013-2015 Vincent Tourraine (http://www.vtourraine.net)
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

extern NSString *const VTHeaderLabelFontKey;
extern NSString *const VTFooterLabelFontKey;
extern NSString *const VTHeaderLabelTextColorKey;
extern NSString *const VTFooterLabelTextColorKey;
extern NSString *const VTCellTextLabelFontKey;
extern NSString *const VTCellTextLabelColorKey;
extern NSString *const VTCellDetailTextLabelFontKey;
extern NSString *const VTCellDetailTextLabelColorKey;
extern NSString *const VTTextViewFontKey;
extern NSString *const VTTextViewColorKey;
extern NSString *const VTTextViewBackgroundColorKey;

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
 Array of `VTAcknowledgement`.
 */
@property (nonatomic, strong) NSArray *acknowledgements;

/**
 Header text to be displayed above the list of the acknowledgements.
 It needs to get set before `viewDidLoad` gets called.
 Its value can be defined in the header of the plist file.
 */
@property (nonatomic, copy) IBInspectable NSString *headerText;

/**
 Footer text to be displayed below the list of the acknowledgements.
 It needs to get set before `viewDidLoad` gets called.
 Its value can be defined in the header of the plist file.
 */
@property (nonatomic, copy) IBInspectable NSString *footerText;

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
 Creates a new acknowledgements view controller configured with a settings dictionary.
 
 @return A newly created `VTAcknowledgementsViewController` instance configured with settings dictionary.
 */
+ (instancetype)acknowledgementsViewControllerWithSettings:(NSDictionary *)settings;

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
