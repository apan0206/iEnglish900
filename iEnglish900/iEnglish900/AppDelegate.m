//
//  AppDelegate.m
//  iEnglish900
//
//  Created by  Panda on 12/11/13.
//  Copyright (c) 2013  Panda. All rights reserved.
//

#import "AppDelegate.h"
#import "PhoneRootViewController.h"

@interface AppDelegate()
{
    CPBaseRootViewController *m_rootViewController;
}

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    if ([[UIDevice currentDevice]userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        PhoneRootViewController *controller = nil;
        controller = [[PhoneRootViewController alloc]initWithNibName:@"PhoneRootViewController"
                                                              bundle:nil];
        self.navigationController = [[UINavigationController alloc]initWithRootViewController:controller];
        m_rootViewController = controller;
    }
    else
    {
        
    }
    
    [self.window setRootViewController:self.navigationController];
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [[UIApplication sharedApplication]beginReceivingRemoteControlEvents];
    [self becomeFirstResponder];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)remoteControlReceivedWithEvent:(UIEvent *)event
{
    if (m_rootViewController)
    {
        [m_rootViewController dealRemoteControlReceivedWithEvent:event];
    }
}


@end
