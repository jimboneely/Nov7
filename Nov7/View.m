//
//  View.m
//  Nov7
//
//  Created by James Neely on 12/11/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "View.h"
#import "Nov7AppDelegate.h"	//so we can mention touchUpInside:

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		button = [UIButton buttonWithType: UIButtonTypeSystem];
        
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  b.origin.y + (b.size.height - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        
		button.backgroundColor = [UIColor greenColor];
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Play that funky music" forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
	}
    
	return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
