//
//  ImageController.h
//  Tip Off
//
//  Created by Jerry Nummi on 11/30/11.
//  Copyright (c) 2011 No Spoon Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageController : NSObject {
  IBOutlet NSImageView *imageView;
  IBOutlet NSButton *goButton;
}
- (IBAction)loadImage:(id)sender;
@end
