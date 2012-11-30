//
//  DFMainWindowController.h
//  Date Formatter
//
//  Created by Red Davis on 30/11/2012.
//  Copyright (c) 2012 Red Davis. All rights reserved.
//

#import <Cocoa/Cocoa.h>


extern NSString *const kDFMainWindowControllerXibName;


@interface DFMainWindowController : NSWindowController

@property (weak, nonatomic) IBOutlet NSView *view;

@end
