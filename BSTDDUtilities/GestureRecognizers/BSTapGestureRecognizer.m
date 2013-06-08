//
//  BSTapGestureRecognizer.m
//  BSTDDUtilities
//
//  Created by Ben Smith on 6/8/13.
//  Copyright (c) 2013 Ben Smith. All rights reserved.
//

#import "BSTapGestureRecognizer.h"

/******************************************************************************
 *  Private Class Extension                                                   *
 ******************************************************************************/

#pragma mark -

@interface BSTapGestureRecognizer ()

#pragma mark - Property Declarations

@property (nonatomic, readwrite, assign) id target;
@property (nonatomic, readwrite, assign) SEL action;

@end

/******************************************************************************
 *  Interface                                                                 *
 ******************************************************************************/

#pragma mark -

@implementation BSTapGestureRecognizer

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
