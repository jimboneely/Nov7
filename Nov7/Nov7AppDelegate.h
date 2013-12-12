//
//  Nov7AppDelegate.h
//  Nov7
//
//  Created by James Neely on 12/11/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class View;

@interface Nov7AppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	SystemSoundID sid;
    View *sliderview;
}

- (void) touchUpInside: (id) sender;
@property (strong, nonatomic) UIWindow *window;
@end