//
//  ViewController.m
//  RNFBAppInvites
//
//  Created by TMA-MACMINI on 1/9/18.
//  Copyright © 2018 TMA. All rights reserved.
//

#import "RNFBAppInvites.h"

@interface RNFBAppInvites ()

@end

@implementation ViewController

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCTResponseSenderBlock callback;

RCT_EXPORT_METHOD(shareAppInvites: (NSString) appUrl appAvatarUrl:(NSString) appAvatarUrl)
{
    FBSDKAppInviteContent *content =[[FBSDKAppInviteContent alloc] init];
    content.appLinkURL = [NSURL URLWithString: appUrl];
    //optionally set previewImageURL
    content.appInvitePreviewImageURL = [NSURL URLWithString: appAvatarUrl];
    
    
//    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [delegate.window.rootViewController presentViewController:picker animated:YES completion:NULL];
//    });
    
    // Present the dialog. Assumes self is a view controller
    // which implements the protocol `FBSDKAppInviteDialogDelegate`.
    [FBSDKAppInviteDialog showFromViewController:AppDelegate
                                     withContent:content
                                        delegate:AppDelegate];
    
    
}
@end
