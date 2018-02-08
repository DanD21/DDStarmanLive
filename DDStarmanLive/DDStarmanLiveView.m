//
//  DDStarmanLiveView.m
//  DDStarmanLive
//
//  Created by Dan Danilescu on 2/7/18.
//  Copyright © 2018 Dan Danilescu. All rights reserved.
//

#import "DDStarmanLiveView.h"
#import <WebKit/WebKit.h>


@implementation DDStarmanLiveView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        webView = [[WebView alloc] initWithFrame:[self bounds] frameName:nil groupName:nil];
        
        [webView setMainFrameURL:[NSString stringWithFormat:@"file://%@/index.html", [[NSBundle bundleForClass:[self class]] resourcePath]]];
        
        [self addSubview:webView];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
