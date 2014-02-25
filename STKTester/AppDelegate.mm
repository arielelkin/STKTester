//
//  AppDelegate.m
//  STKTester
//
//  Created by Ariel Elkin on 23/02/2014.
//  Copyright (c) 2014 Ariel. All rights reserved.
//

#import "AppDelegate.h"
#import "SineWave.h"
//#import "Brass.h"
//#import "Mandolin.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //Test sine:
    stk::SineWave *mySine = new stk::SineWave();
    mySine->setFrequency(232);
    
    for (int i = 0 ; i < 5000; i++) {
        NSLog(@"sine: %f", mySine->tick());
    }
    
    
    //Test brass:
//    stk::Brass *brass = new stk::Brass(400);
//    brass->noteOn(400, 100);
//    
//    for (int i = 0 ; i < 5000; i++) {
//        NSLog(@"I got %f", brass->tick());
//    }
    

    //Test mandolin:
//    stk::Stk::setRawwavePath([[[NSBundle mainBundle] resourcePath] UTF8String]);
    
//    stk::Mandolin *mandolin = new stk::Mandolin(400);
//    mandolin->pluck(1);
//    
//    for (int i = 0 ; i < 5000; i++) {
//        NSLog(@"I got %f", mandolin->tick());
//    }
    
    return YES;
}

@end
