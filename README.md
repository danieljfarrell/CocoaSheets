CocoaSheets
===========

How to use sheets on Yosmite 10.10 and above.

![NSWindow which will appear as an sheet.](http://i.stack.imgur.com/Io0yY.png)

Sheets are easy to use. However, it wasn't initially obvious how.

Launch the sheet and control the repsonse using the following code:

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

Dismiss the sheet with one of the following model responses, you might want to do this using action methods assigned to your OK and Cancel buttons,

    - (IBAction)cancelButtonAction:(id)sender {
        [[[self window] sheetParent] endSheet:self.window returnCode:NSModalResponseCancel];
    }
    
    - (IBAction)OKButtonAction:(id)sender {
        [[[self window] sheetParent] endSheet:self.window returnCode:NSModalResponseOK];
    }
