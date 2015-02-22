//
// VTAcknowledgementsViewControllerTests.m
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

@import UIKit;
@import XCTest;

#import <VTAcknowledgementsViewController.h>
#import <VTAcknowledgement.h>

@interface VTAcknowledgementsViewControllerTests : XCTestCase

@end


@implementation VTAcknowledgementsViewControllerTests

- (void)testLoadAcknowledgementsWithDefaultFileName {
    VTAcknowledgementsViewController *viewController = [VTAcknowledgementsViewController acknowledgementsViewController];
    XCTAssertEqual(viewController.acknowledgements.count, 1,
                         @"should have loaded the one acknowledgement from the default file (Pods-acknowledgements.plist)");
}

- (void)testConfigureTableViewBasedOnAcknowledgements {
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] init];

    VTAcknowledgement *ack1 = [VTAcknowledgement new];
    VTAcknowledgement *ack2 = [VTAcknowledgement new];
    viewController.acknowledgements = @[ack1, ack2];

    XCTAssertEqual([viewController tableView:nil numberOfRowsInSection:0], 2,
                   @"should have a table view row for each acknowledgement");
}

@end
