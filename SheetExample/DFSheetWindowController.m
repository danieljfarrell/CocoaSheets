//
//  DFSheetWindowController.m
//  SheetExample
//
//  Created by Daniel Farrell on 18/12/2014.
//  Copyright (c) 2014 Daniel Farrell. All rights reserved.
//

#import "DFSheetWindowController.h"

@interface DFSheetWindowController ()

@end

@implementation DFSheetWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)cancelButtonAction:(id)sender {
    [[[self window] sheetParent] endSheet:self.window returnCode:NSModalResponseCancel];
}

- (IBAction)OKButtonAction:(id)sender {
    [[[self window] sheetParent] endSheet:self.window returnCode:NSModalResponseOK];
}

@end
