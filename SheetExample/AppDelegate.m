//
//  AppDelegate.m
//  SheetExample
//
//  Created by Daniel Farrell on 18/12/2014.
//  Copyright (c) 2014 Daniel Farrell. All rights reserved.
//

#import "AppDelegate.h"
#import "DFSheetWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (strong) DFSheetWindowController *sheetWindowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.sheetWindowController = [[DFSheetWindowController alloc] initWithWindowNibName:@"DFSheetWindowController"];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)showSheetButtonAction:(id)sender {
    
    [[self window] beginSheet:self.sheetWindowController.window completionHandler:^(NSModalResponse returnCode) {
        
        switch (returnCode) {
                
            case NSModalResponseCancel:
                NSLog(@"%@", @"NSModalResponseCancel");
                break;
                
            case NSModalResponseOK:
                NSLog(@"%@", @"NSModalResponseOK");
                break;
                
            default:
                break;
        }
    }];
}


@end
