//
//  LSKRoundedProgressView.m
//  LSKRoundedProgressView
//
//  Created by Shuai Liu on 15/3/19.
//  Copyright (c) 2015年 vars.me. All rights reserved.
//

#import "LSKRoundedProgressView.h"

@implementation LSKRoundedProgressView {
    CGFloat _startDegree;
    CGFloat _endDegree;
}

#pragma mark - initialization

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.progressColor = [UIColor colorWithRed:230/255.0f green:46/255.0f blue:4/255.0f alpha:1.0f];
    self.trackColor = [UIColor colorWithRed:0.9686 green:0.9686 blue:0.9647 alpha:1];
    self.progressWidth = 2.0f;
    self.clockWise = YES;
}

#pragma mark - draw rect

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    [self drawProgressCircleInRect:rect];
}

#pragma mark - accessors

- (void)setProgress:(CGFloat)progress {
    if (progress != _progress) {
        if (progress > 1.0f) {
            _progress = 1.0f;
            _endDegree = 2 * M_PI - M_PI_2;
        } else {
            _progress = progress;
            _endDegree = progress * 2 * M_PI - M_PI_2;
        }
        _startDegree = 0.0f - M_PI_2;
        [self setNeedsDisplay];
    }
}

#pragma mark - draw progress

- (void)drawProgressCircleInRect:(CGRect)rect {
    CGRect circleRect = [self rectForCircle:rect];
    
    CGFloat archXPos = CGRectGetWidth(rect) / 2.0f;
    CGFloat archYPos = CGRectGetHeight(rect) / 2.0f;
    CGFloat archRadius = CGRectGetWidth(circleRect) / 2.0f;
    int clockWise = (self.clockWise) ? 0 : 1;
    
    CGFloat trackStartAngle = 0;
    CGFloat trackEndAngle = M_PI * 2;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, self.progressWidth);
    
    // Track
    CGContextSetStrokeColorWithColor(context, self.trackColor.CGColor);
    CGContextAddArc(context, archXPos, archYPos, archRadius, trackStartAngle, trackEndAngle, 1);
    CGContextStrokePath(context);
    
    // Progress
    CGContextSetStrokeColorWithColor(context, self.progressColor.CGColor);
    CGContextAddArc(context, archXPos, archYPos, archRadius, _startDegree, _endDegree, clockWise);
    CGContextStrokePath(context);
}

#pragma mark - helper methods

- (CGRect)rectForCircle:(CGRect)rect {
    CGFloat minDim = MIN(self.bounds.size.width, self.bounds.size.height);
    CGFloat circleRadius = (minDim / 2) - (self.progressWidth);
    CGPoint circleCenter = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    return CGRectMake(circleCenter.x - circleRadius, circleCenter.y - circleRadius, 2 * circleRadius, 2 * circleRadius);
}


@end
