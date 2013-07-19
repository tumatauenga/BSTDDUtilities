//
//  BSPanGestureRecognizer.h
//  BSTDDUtilities
//
//  Created by Ben Smith on 7/18/13.
//  Copyright (c) 2013 Ben Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

/******************************************************************************
 *  Interface                                                                 *
 ******************************************************************************/

#pragma mark -

@interface BSPanGestureRecognizer : UIPanGestureRecognizer

#pragma mark - Property Declarations

@property (nonatomic, readonly, assign) id target;
@property (nonatomic, readonly, assign) SEL action;

@end
