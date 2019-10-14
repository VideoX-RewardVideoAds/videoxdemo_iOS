


//
//  GDPRViewController.m
//  VideoXDemo_iOS
//
//  Created by 乔岩 on 2019/9/16.
//  Copyright © 2019 乔岩. All rights reserved.
//

#import "GDPRViewController.h"

#import <VideoXSDK/VideoXSDK.h>

@interface GDPRViewController ()

@end

@implementation GDPRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)showTips:(id)sender {
    [VideoXSDK showConsentInfoTips:^(BOOL consentStatus, NSError * _Nullable error) {
        
        [VideoXSDK setGDPRConsentStatus:consentStatus];
        
        //
       // [VideoXSDK initWithAppID:@"YOUR APPID" pubKey:@"YOUR PUBKEY"];
    }];
}

@end



