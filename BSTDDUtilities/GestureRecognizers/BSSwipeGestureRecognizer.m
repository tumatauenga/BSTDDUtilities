//
//  BSSwipeGestureRecognizer.m
//  BSTDDUtilities
//
//  Created by Ben Smith on 5/26/13.
//  Copyright (c) 2013 Ben Smith. All rights reserved.
//

#import "BSSwipeGestureRecognizer.h"

/******************************************************************************
 *  Private Class Extension                                                   *
 ******************************************************************************/

#pragma mark -

@interface BSSwipeGestureRecognizer ()

#pragma mark - Property Declarations

@property (nonatomic, readwrite, assign) id target;
@property (nonatomic, readwrite, assign) SEL action;

@end

/******************************************************************************
 *  Interface                                                                 *
 ******************************************************************************/

#pragma mark -

@implementation BSSwipeGestureRecognizer

#pragma mark - Instance Methods

- (id)initWithTarget:(id)target action:(SEL)action
{
    self = [super initWithTarget:target action:action];
    if (self) {
        self.target = target;
        self.action = action;
    }
    return self;
}

@end
