//
// VTAcknowledgementViewController.h
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

/**
 `VTAcknowledgementViewController` is a subclass of `UIViewController` that displays
 a single acknowledgement.
 */
@interface VTAcknowledgementViewController : UIViewController

/**
 Custom font for the main text view. If `nil` (default), the system font (size 17) is used.
 */
@property (nonatomic, strong) UIFont *textViewFont;

/**
 A block which is used to custom the style of the `UITextView`.
 It will be called when the view controller is loading its `UITextView`
 
 Also, when `VTAcknowledgementsViewController` is instantiating a `VTAcknowledgementViewController`
 it copies its `licenseTextViewSetup` block to the `textViewSetup` of the new created `VTAcknowledgementViewController`
 */
@property (nonatomic, copy) void(^textViewSetup)(UITextView *textView);

/**
 Initializes an acknowledgement view controller with a title and a body text.

 @param title The acknowledgement title.
 @param text The acknowledgement body text.

 @return A newly created `VTAcknowledgementViewController` instance.
 */
- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end
