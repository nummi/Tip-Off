//
//  AppDelegate.h
//  Tip Off
//
//  Created by Jerry Nummi on 11/30/11.
//  Copyright (c) 2011 No Spoon Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDelegate, NSTableViewDataSource> {  
  IBOutlet NSTableView *tableView;
}
- (void)loadImages;

@property (assign) IBOutlet NSWindow *window;
@property (assign) NSMutableArray *images;

@end