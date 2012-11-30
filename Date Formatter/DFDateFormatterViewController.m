//
//  DFDateFormatterViewController.m
//  Date Formatter
//
//  Created by Red Davis on 30/11/2012.
//  Copyright (c) 2012 Red Davis. All rights reserved.
//

#import "DFDateFormatterViewController.h"


@interface DFDateFormatterViewController () <NSTextFieldDelegate>

@property (strong, nonatomic) NSDate *nowDate;
@property (strong, nonatomic) NSDateFormatter *dateFormatter;

- (void)setResultLabelDefaultStringValue;

@end


static NSString *const kDFPlaceholderFormat = @"EEE dd MMM YYYY";


@implementation DFDateFormatterViewController

#pragma mark - Initialization

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.dateFormatter = [[NSDateFormatter alloc] init];
        self.nowDate = [NSDate date];
    }
    
    return self;
}

#pragma mark -

- (void)awakeFromNib {
    
    self.formatTextField.delegate = self;
    [self.formatTextField.cell setPlaceholderString:kDFPlaceholderFormat];
    [self setResultLabelDefaultStringValue];
}

- (void)setResultLabelDefaultStringValue {
    
    self.dateFormatter.dateFormat = kDFPlaceholderFormat;
    self.resultLabel.stringValue = [self.dateFormatter stringFromDate:self.nowDate];
}

#pragma mark -

- (void)controlTextDidChange:(NSNotification *)obj {
    
    NSTextField *textField = (NSTextField *)obj.object;
    
    if (textField == self.formatTextField) {
                
        if (self.formatTextField.stringValue.length) {
            
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            dateFormatter.dateFormat = self.formatTextField.stringValue;
            
            NSString *dateString = [dateFormatter stringFromDate:self.nowDate];
            if (dateString.length) {
                self.resultLabel.stringValue = dateString;
            }
            else {
                self.resultLabel.stringValue = @"Invalid format";
            }
        }
        else {
            
            [self setResultLabelDefaultStringValue];
        }
    }
}

@end
