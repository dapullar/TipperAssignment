//
//  TextViewDelegate.m
//  TipperAssignment
//
//  Created by David Pullar on 3/2/2014.
//  Copyright (c) 2014 David Pullar. All rights reserved.
//

#import "TextViewDelegate.h"

@implementation TextViewDelegate

- (id)initWithFrame:(CGRect)frame
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:NSControlTextDidChangeNotification object:nil];
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
