//
//  DFMainWindowController.m
//  Date Formatter
//
//  Created by Red Davis on 30/11/2012.
//  Copyright (c) 2012 Red Davis. All rights reserved.
//

#import "DFMainWindowController.h"
#import "DFDateFormatterViewController.h"


@interface DFMainWindowController ()

@property (strong, nonatomic) DFDateFormatterViewController *dateFormatterViewController;

@end


NSString *const kDFMainWindowControllerXibName = @"DFMainWindowController";


@implementation DFMainWindowController

#pragma mark - Window Lifecycle

- (void)windowDidLoad {
    
    [super windowDidLoad];
    
    self.window.title = NSLocalizedString(@"Date Formatter", @"Window title");
    
    self.dateFormatterViewController = [[DFDateFormatterViewController alloc] initWithNibName:nil bundle:nil];
    self.dateFormatterViewController.view.frame = self.view.bounds;
    self.dateFormatterViewController.view.autoresizingMask = NSViewHeightSizable | NSViewWidthSizable;
    [self.view addSubview:self.dateFormatterViewController.view];
}

@end
