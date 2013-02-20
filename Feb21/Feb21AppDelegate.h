//
//  Feb21AppDelegate.h
//  Feb21
//
//  Created by Eric Unvert on 2/20/13.
//  Copyright (c) 2013 Eric Unvert. All rights reserved.
//


#import <UIKit/UIKit.h>
@class View;

@interface Feb21AppDelegate : UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end
