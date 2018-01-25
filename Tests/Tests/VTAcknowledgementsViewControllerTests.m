//
// VTAcknowledgementsViewControllerTests.m
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

#import <VTAcknowledgementsViewController.h>
#import <VTAcknowledgement.h>

@interface VTAcknowledgementsViewControllerTests : XCTestCase

@end


@implementation VTAcknowledgementsViewControllerTests

- (void)testGeneralInitialization {
    VTAcknowledgementsViewController *viewController = [VTAcknowledgementsViewController acknowledgementsViewController];
    XCTAssertNotNil(viewController.title);
}

- (void)testInitializationWithFileName {
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] initWithFileNamed:@"Pods-acknowledgements"];
    XCTAssertNotNil(viewController.acknowledgements);
}

- (void)testInitializationWithFilePath {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Pods-acknowledgements" ofType:@"plist"];
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] initWithPath:path];
    XCTAssertNotNil(viewController.acknowledgements);
}

- (void)testLoadAcknowledgementsWithDefaultFileName {
    VTAcknowledgementsViewController *viewController = [VTAcknowledgementsViewController acknowledgementsViewController];
    XCTAssertEqual(viewController.acknowledgements.count, 1,
                         @"should load the one acknowledgement from the default file (Pods-acknowledgements.plist)");
}

- (void)testConfigureTableViewBasedOnAcknowledgements {
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] init];

    VTAcknowledgement *ack1 = [[VTAcknowledgement alloc] initWithTitle:@"ack1" text:@"" license:nil];
    VTAcknowledgement *ack2 = [[VTAcknowledgement alloc] initWithTitle:@"ack2" text:@"" license:nil];
    viewController.acknowledgements = @[ack1, ack2];

    XCTAssertEqual([viewController tableView:viewController.tableView numberOfRowsInSection:0], 2,
                   @"should have a table view row for each acknowledgement");

    UITableViewCell *cell1 = [viewController tableView:viewController.tableView
                                 cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    XCTAssertEqualObjects(cell1.textLabel.text, @"ack1",
                          @"should configure the cell text label with the acknowledgement title");
    XCTAssertEqual(cell1.accessoryType, UITableViewCellAccessoryDisclosureIndicator);

    UITableViewCell *cell2 = [viewController tableView:viewController.tableView
                                 cellForRowAtIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];
    XCTAssertEqualObjects(cell2.textLabel.text, @"ack2",
                          @"should configure the cell text label with the acknowledgement title");
    XCTAssertEqual(cell2.accessoryType, UITableViewCellAccessoryDisclosureIndicator);
}

- (void)testConfigureHeaderText {
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] init];
    viewController.headerText = @"bla";

    [viewController viewDidLoad];

    XCTAssertNotNil(viewController.tableView.tableHeaderView);

    UILabel *headerLabel;
    for (UIView *subview in viewController.tableView.tableHeaderView.subviews) {
        if ([subview isKindOfClass:UILabel.class]) {
            headerLabel = (UILabel *)subview;
            break;
        }
    }

    XCTAssertNotNil(headerLabel);
    XCTAssertEqualObjects(headerLabel.text, @"bla");
}

- (void)testConfigureFooterText {
    VTAcknowledgementsViewController *viewController = [[VTAcknowledgementsViewController alloc] init];
    viewController.footerText = @"123abc";

    [viewController viewDidLoad];

    XCTAssertNotNil(viewController.tableView.tableFooterView);

    UILabel *footerLabel;
    for (UIView *subview in viewController.tableView.tableFooterView.subviews) {
        if ([subview isKindOfClass:UILabel.class]) {
            footerLabel = (UILabel *)subview;
            break;
        }
    }

    XCTAssertNotNil(footerLabel);
    XCTAssertEqualObjects(footerLabel.text, @"123abc");
}

@end
