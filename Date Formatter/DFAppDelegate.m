//
//  DFAppDelegate.m
//  Date Formatter
//
//  Created by Red Davis on 30/11/2012.
//  Copyright (c) 2012 Red Davis. All rights reserved.
//

#import "DFAppDelegate.h"
#import "DFMainWindowController.h"


@interface DFAppDelegate ()

@property (strong, nonatomic) DFMainWindowController *mainWindowController;

@end


@implementation DFAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.mainWindowController = [[DFMainWindowController alloc] initWithWindowNibName:kDFMainWindowControllerXibName];
    [self.mainWindowController showWindow:nil];
}

@end
