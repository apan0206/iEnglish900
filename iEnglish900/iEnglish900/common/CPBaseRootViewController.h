//
//  CPBaseRootViewController.h
//  iEnglish900
//
//  Created by  Panda on 12/11/13.
//  Copyright (c) 2013  Panda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPBaseRootViewController : UIViewController

@property(nonatomic, weak) NSArray *arrayData;

-(void)initializeData;
-(void)dealRemoteControlReceivedWithEvent:(UIEvent*)event;

-(void)saveLastPlayAudioInfo;

-(void)remotePlayPre;
-(void)remotePlayOrPause;
-(void)remotePlayNext;

@end
