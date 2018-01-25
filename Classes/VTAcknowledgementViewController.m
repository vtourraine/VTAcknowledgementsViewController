//
// VTAcknowledgementViewController.m
//
// Copyright (c) 2013-2018 Vincent Tourraine (http://www.vtourraine.net)
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

#import "VTAcknowledgementViewController.h"

@interface VTAcknowledgementViewController ()

@property (nonatomic, copy) NSString *text;

@end


@implementation VTAcknowledgementViewController

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text {
    self = [super init];

    if (self) {
        self.title = title;
        self.text  = text;
    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UITextView *textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    else {
        textView.font = [UIFont systemFontOfSize:17];
    }
    textView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    textView.alwaysBounceVertical = YES;
#if !TARGET_OS_TV
    textView.editable = NO;
    textView.dataDetectorTypes = UIDataDetectorTypeLink;
#else
    // Allow scrolling on tvOS
    textView.userInteractionEnabled = YES;
    textView.selectable = YES;
    textView.panGestureRecognizer.allowedTouchTypes = @[@(UITouchTypeIndirect)];
#endif

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textView];

    self.textView = textView;

    if (@available(iOS 9.0, *)) {
        textView.translatesAutoresizingMaskIntoConstraints = NO;

        UILayoutGuide *marginsGuide = self.view.readableContentGuide;
        [NSLayoutConstraint activateConstraints:@[[textView.topAnchor constraintEqualToAnchor:marginsGuide.topAnchor], [textView.bottomAnchor constraintEqualToAnchor:marginsGuide.bottomAnchor], [textView.leadingAnchor constraintEqualToAnchor:marginsGuide.leadingAnchor], [textView.trailingAnchor constraintEqualToAnchor:marginsGuide.trailingAnchor]]];
    }
    else {
        textView.textContainerInset = UIEdgeInsetsMake(12, 10, 12, 10);
    }
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    // Need to set the textView text after the layout is completed, so that the content inset and offset properties can be adjusted automatically.
    self.textView.text = self.text;
}

#if TARGET_OS_TV
- (UIView *)preferredFocusedView {
    return self.textView;
}
#endif

@end
