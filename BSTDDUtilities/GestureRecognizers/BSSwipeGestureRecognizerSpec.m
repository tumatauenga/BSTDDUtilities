//
//  BSSwipeGestureRecognizerSpec.m
//  BSTDDUtilities
//
//  Created by Ben Smith on 5/26/13.
//  Copyright (c) 2013 Ben Smith. All rights reserved.
//

#import "Kiwi.h"

#import "BSSwipeGestureRecognizer.h"

SPEC_BEGIN(BSSwipeGestureRecognizerSpec)

describe(@"BSSwipeGestureRecognizer", ^{
	context(@"inspecting the targe / action of a swipe gesture recognizer.", ^{
        __block BSSwipeGestureRecognizer *sut;
        __block id target;
        __block SEL action;
        
        beforeEach(^{
            target = [NSObject nullMock];
            action = @selector(handleSwipeGesture:);
            [target stub:action];
            sut = [[BSSwipeGestureRecognizer alloc] initWithTarget:target action:action];
        });
        
        afterEach(^{
            target = nil;
            action = nil;
        });
        
        it(@"should have a target attribute that corresponds with the target that was sent with initWithTarget:action:.", ^{
            [[sut.target should] equal:target];
        });
        
        it(@"should have an action attribute that corresponds with the target that was sent with initWithTarget:action:", ^{
            [[theValue(sut.action) should] equal:theValue(action)];
        });
    });
});

SPEC_END