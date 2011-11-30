//
//  ImageController.m
//  Tip Off
//
//  Created by Jerry Nummi on 11/30/11.
//  Copyright (c) 2011 No Spoon Software. All rights reserved.
//

#import "ImageController.h"

@implementation ImageController
-(IBAction)loadImage:(id)sender {
  NSURL   *url   = [NSURL URLWithString:@"http://dribbble.com/system/users/1/screenshots/21603/shot_1274474082.png"];
  NSImage *image = [[NSImage alloc] initWithContentsOfURL:url];
  [imageView setImage: image];
}
@end
