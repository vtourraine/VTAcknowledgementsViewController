//
// VTAcknowledgementViewControllerTests.m
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

@import UIKit;
@import XCTest;

#import <VTAcknowledgementViewController.h>

@interface VTAcknowledgementViewControllerTests : XCTestCase

@end


@implementation VTAcknowledgementViewControllerTests

- (void)testLoadTextViewAsMainViewWithTextContent {
    VTAcknowledgementViewController *viewController = [[VTAcknowledgementViewController alloc] initWithTitle:@"T1" text:@"text"];
    [viewController viewDidLoad];
    [viewController viewDidLayoutSubviews];

    XCTAssertNotNil(viewController.textView, @"should load a text view as the main view");
    XCTAssertEqualObjects(viewController.textView.text, @"text", @"should set the text view text with the text content value from the initializer");
    XCTAssertTrue(viewController.textView.isSelectable);
    XCTAssertTrue(viewController.textView.isScrollEnabled);
    XCTAssertFalse(viewController.textView.isEditable);
    XCTAssertEqual(viewController.textView.dataDetectorTypes, UIDataDetectorTypeLink);
}

- (void)testConfigureTitle {
    VTAcknowledgementViewController *viewController = [[VTAcknowledgementViewController alloc] initWithTitle:@"T2" text:@"text"];
    XCTAssertEqualObjects(viewController.title, @"T2", @"should set its title with the value from the initializer");
}

@end
