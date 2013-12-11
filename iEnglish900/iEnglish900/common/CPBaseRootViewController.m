//
//  CPBaseRootViewController.m
//  iEnglish900
//
//  Created by  Panda on 12/11/13.
//  Copyright (c) 2013  Panda. All rights reserved.
//

#import "CPBaseRootViewController.h"

@interface CPBaseRootViewController ()
{
    
}

@end

@implementation CPBaseRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)initializeData
{
    //[CPHelper loadData];
    
    //self.m_arrayData = [CPHelper getTableOfContentsData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)remotePlayPre
{
    
}

- (void)remotePlayOrPause
{
    
}

- (void)remotePlayNext
{
    
}

- (void)dealRemoteControlReceivedWithEvent:(UIEvent*)event
{
    if (event.type == UIEventTypeRemoteControl)
    {
        switch (event.subtype)
        {
            case UIEventSubtypeRemoteControlTogglePlayPause:
                [self remotePlayOrPause];
                break;
            case UIEventSubtypeRemoteControlPreviousTrack:
                [self remotePlayPre];
                break;
            case UIEventSubtypeRemoteControlNextTrack:
                [self remotePlayNext];
                break;
            default:
                break;
        }
    }
    
}

- (void)saveLastPlayAudioInfo
{
    
}


@end
