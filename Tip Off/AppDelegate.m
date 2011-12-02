//
//  AppDelegate.m
//  Tip Off
//
//  Created by Jerry Nummi on 11/30/11.
//  Copyright (c) 2011 No Spoon Software. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTableCellView.h"

@implementation AppDelegate
@synthesize images;
@synthesize window = _window;

- (void)applicationWillFinishLaunching:(NSNotification *)aNotification { 
//  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
//    [self loadImages];
//  });
  [self loadImages];
}


- (void)loadImages {
  NSMutableArray *tempImages = [NSMutableArray arrayWithCapacity:0];
  NSURL  *url  = [[NSURL alloc] initWithString:@"http://api.dribbble.com/shots/popular"];
  NSData *data = [NSData dataWithContentsOfURL:url];
  
  NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
  
  for(NSDictionary *item in [json objectForKey:@"shots"]) {
    NSURL   *url   = [[NSURL alloc] initWithString:[item objectForKey:@"image_url"]];
    NSData  *data  = [NSData dataWithContentsOfURL:url];
    NSImage *image = [[NSImage alloc] initWithData:data];
    [tempImages addObject:image];
  }
//  dispatch_async(dispatch_get_main_queue(), ^{
//    self.images = tempImages;
//    [tableView reloadData];  
//  });
  self.images = tempImages;
  [tableView reloadData];  
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
  return (self.images) ? [self.images count] : 0;
}


- (NSView *)tableView:(NSTableView *)tv viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
  NSString        *identifier = [tableColumn identifier];
  MyTableCellView *cellView   = (MyTableCellView *)[tableView makeViewWithIdentifier:identifier owner:self];
  cellView.imageView.objectValue = [self.images objectAtIndex:row];
  return cellView;
}

@end
