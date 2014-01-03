//
// VTAcknowledgementsViewController.m
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

#import "VTAcknowledgementsViewController.h"
#import "VTAcknowledgementViewController.h"
#import "VTAcknowledgement.h"

@interface VTAcknowledgementsViewController ()

@end


@implementation VTAcknowledgementsViewController

+ (instancetype)acknowledgementsViewController
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Pods-acknowledgements" ofType:@"plist"];
    return [[VTAcknowledgementsViewController alloc] initWithAcknowledgementsPlistPath:path];
}

- (id)initWithAcknowledgementsPlistPath:(NSString *)acknowledgementsPlistPath
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:acknowledgementsPlistPath];
        NSArray *preferenceSpecifiers = root[@"PreferenceSpecifiers"];
        if (preferenceSpecifiers.count >= 2) {
            // Remove the header and footer
            NSRange range = NSMakeRange(1, preferenceSpecifiers.count - 2);
            preferenceSpecifiers = [preferenceSpecifiers subarrayWithRange:range];
        }
        
        NSMutableArray *acknowledgements = [NSMutableArray array];
        for (NSDictionary *preferenceSpecifier in preferenceSpecifiers) {
            VTAcknowledgement *acknowledgement = [VTAcknowledgement new];
            acknowledgement.title = preferenceSpecifier[@"Title"];
            acknowledgement.text  = preferenceSpecifier[@"FooterText"];
            [acknowledgements addObject:acknowledgement];
        }
        self.acknowledgements = acknowledgements;
    }
    
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"VTAckAcknowledgements", nil);
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.text             = [NSLocalizedString(@"VTAckGeneratedByCocoaPods", nil) stringByAppendingString:@" - http://cocoapods.org\n \n "];
    label.font             = [UIFont systemFontOfSize:12];
    label.textColor        = [UIColor grayColor];
    label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [label sizeToFit];
    
    CGRect footerFrame = CGRectMake(0, 0, CGRectGetWidth(label.frame), 80);
    UIView *footerView = [[UIView alloc] initWithFrame:footerFrame];
    [footerView addSubview:label];
    label.frame = CGRectMake(0, 22, CGRectGetWidth(label.frame), CGRectGetHeight(label.frame));
    self.tableView.tableFooterView = footerView;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    if (self.acknowledgements.count == 0) {
        NSLog(@"** VTAcknowledgementsViewController Warning **");
        NSLog(@"No acknowledgements found.");
        NSLog(@"This probably means that you didn’t import the `Pods-acknowledgements.plist` to your main target.");
        NSLog(@"Please take a look at https://github.com/vtourraine/VTAcknowledgementsViewController for instructions.");
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.acknowledgements.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    VTAcknowledgement *acknowledgement = self.acknowledgements[indexPath.row];
    cell.textLabel.text = acknowledgement.title;
    cell.accessoryType  = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    VTAcknowledgement *acknowledgement = self.acknowledgements[indexPath.row];
    VTAcknowledgementViewController *viewController = [[VTAcknowledgementViewController alloc] initWithTitle:acknowledgement.title text:acknowledgement.text];
    viewController.textViewFont = self.licenseTextViewFont;
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
