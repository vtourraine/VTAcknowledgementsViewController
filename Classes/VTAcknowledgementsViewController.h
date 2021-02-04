//
// VTAcknowledgementsViewController.h
//
// Copyright (c) 2013-2021 Vincent Tourraine (http://www.vtourraine.net)
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

#if __has_feature(modules)
@import UIKit;
#else
#import <UIKit/UIKit.h>
#endif

#import <VTParser.h>
#import <VTAcknowledgement.h>

NS_ASSUME_NONNULL_BEGIN

/**
 `VTAcknowledgementsViewController` is a subclass of `UITableViewController` that displays a list of acknowledgements.
 */
@interface VTAcknowledgementsViewController : UITableViewController

/// Array of `VTAcknowledgement`.
@property (nonatomic, strong, nullable) NSArray <VTAcknowledgement *> *acknowledgements;

/**
 Header text to be displayed above the list of the acknowledgements.

 It needs to get set before `viewDidLoad` gets called. Its value can be defined in the header of the plist file.
 */
@property (nonatomic, copy, nullable) IBInspectable NSString *headerText;

/**
 Footer text to be displayed below the list of the acknowledgements.

 It needs to get set before `viewDidLoad` gets called. Its value can be defined in the header of the plist file.
 */
@property (nonatomic, copy, nullable) IBInspectable NSString *footerText;

/**
 Acknowledgements plist file name whose contents to be loaded.

 It expects to get set by "User Defined Runtime Attributes" in Interface Builder.
 */
@property (nonatomic, copy, nullable) IBInspectable NSString *acknowledgementsPlistName;

/**
 Creates an acknowledgements view controller with the content of the `Pods-#target#-acknowledgements.plist`.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
+ (instancetype)acknowledgementsViewController NS_SWIFT_NAME(acknowledgementsViewController());

/**
 Initializes an acknowledgements view controller with an array of acknowledgements.

 @param acknowledgements The array of `VTAcknowledgement`.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithAcknowledgements:(NSArray <VTAcknowledgement *> *)acknowledgements;

/**
 Initializes an acknowledgements view controller with an array of acknowledgements and a custom table view style.

 @param acknowledgements The array of `VTAcknowledgement`.
 @param style A constant that specifies the style of table view that the controller object is to manage.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithAcknowledgements:(NSArray <VTAcknowledgement *> *)acknowledgements style:(UITableViewStyle)style NS_DESIGNATED_INITIALIZER;

/**
 Initializes an acknowledgements view controller with the content of an acknowledgements file (by its path).

 @param acknowledgementsPlistPath The path to the acknowledgements `.plist` file.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithPath:(nullable NSString *)acknowledgementsPlistPath;

/**
 Initializes an acknowledgements view controller with the content of an acknowledgements file (by its path) and a custom table view style.

 @param acknowledgementsPlistPath The path to the acknowledgements `.plist` file.
 @param style A constant that specifies the style of table view that the controller object is to manage.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithPath:(nullable NSString *)acknowledgementsPlistPath style:(UITableViewStyle)style;

/**
 Initializes an acknowledgements view controller with the content of an acknowledgements file (by its name).

 @param acknowledgementsFileName The file name for the acknowledgements `.plist` file from the main bundle.

 @return A newly created `VTAcknowledgementsViewController` instance.
 */
- (instancetype)initWithFileNamed:(NSString *)acknowledgementsFileName;

@end

NS_ASSUME_NONNULL_END
