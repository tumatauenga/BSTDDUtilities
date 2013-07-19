//
//  BSPanGestureRecognizerSpec.m
//  BSTDDUtilities
//
//  Created by Ben Smith on 7/18/13.
//  Copyright (c) 2013 Ben Smith. All rights reserved.
//

#import "Kiwi.h"

#import "BSPanGestureRecognizer.h"

SPEC_BEGIN(BSPanGestureRecognizerSpec)

describe(@"BSPanGestureRecognizer", ^{
	context(@"inspecting the target / action of a pan gesture recognizer.", ^{
        __block BSPanGestureRecognizer *sut;
        __block id target;
        __block SEL action;
        
        beforeEach(^{
            target = [NSObject nullMock];
            action = @selector(handleSwipeGesture:);
            [target stub:action];
            sut = [[BSPanGestureRecognizer alloc] initWithTarget:target action:action];
        });
        
        afterEach(^{
            sut = nil;
            target = nil;
            action = nil;
        });
        
        it(@"should have a target attribute that corresponds with the target that was sent with initWithTarget:action:.", ^{
            [[sut.target should] equal:target];
        });
        
        it(@"should have an action attribute that corresponds with the acton that was sent with initWithTarget:action:", ^{
            [[theValue(sut.action) should] equal:theValue(action)];
        });
    });
});

SPEC_END