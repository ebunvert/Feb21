//
//  View.m
//  Hello
//
//  Created by Eric Unvert on 2/18/13.
//  Copyright (c) 2013 Eric Unvert. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor orangeColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	NSString *string = @"About this iPhone";
	UIFont *font = [UIFont systemFontOfSize: 36.0];
 	CGSize size = [string sizeWithFont: font];
	CGRect b = self.bounds;
	CGFloat x = b.origin.x + (b.size.width - size.width) / 2;
	CGFloat y = b.origin.y + (b.size.height - size.height) / 2;  //will be used in the next section
	CGPoint point = CGPointMake(x, 0);
    [string drawAtPoint: point withFont: font];
   
    
    int fontSize = 16;  //font size for line spacing too
    
    UIDevice *device = [UIDevice currentDevice];
	point = CGPointMake(0, y);
    [device.model drawAtPoint: point withFont: [UIFont systemFontOfSize:fontSize]];
    point = CGPointMake(0, y+fontSize);
    [device.uniqueIdentifier drawAtPoint: point withFont: [UIFont systemFontOfSize:fontSize]];
    point = CGPointMake(0, y+(fontSize*2));
    [device.systemName drawAtPoint: point withFont: [UIFont systemFontOfSize:fontSize]];
    point = CGPointMake(0, y+(fontSize*3));
    [device.systemVersion drawAtPoint: point withFont: [UIFont systemFontOfSize:fontSize]];

    
    
    
 }


@end
