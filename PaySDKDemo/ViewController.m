//
//  ViewController.m
//  PaySDKDemo
//
//  Created by Crland on 2018/5/9.
//  Copyright © 2018年 Crland. All rights reserved.
//

#import "ViewController.h"
#import <CrlandPaySDK/CrlandPayApi.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonClicked:(UIButton *)sender {
    
    NSDictionary *param1 = @{
                             @"communityUuid" : @"47734f87-3a2f-478c-adeb-8be436685b97",
                             @"houseUuid" : @"b3a7f9ca-6b7a-4b32-837d-3da741efe524",
                             @"userId" : @"e9ab59e9-c1ac-4ef2-8f6d-7bb291b2fd35",
                             @"userName" : @"刘曦"
                             };
    NSDictionary *param2 = @{
                             @"communityUuid" : @"47734f87-3a2f-478c-adeb-8be436685b97",
                             @"houseUuid" : @"35ee15ba-e220-4861-855b-99c27d564cd6",
                             @"userId" : @"39018f40-bfcb-4084-a5cc-8f13050c23e7",
                             @"userName" : @"王羽飞"
                             };
    NSDictionary *param3 = @{
                             @"payId" : @"e484c8ca-c2cb-43c3-9196-56ad1cff1f72",
                             @"userId" : @"39018f40-bfcb-4084-a5cc-8f13050c23e7",
                             @"userName" : @"王羽飞"
                             };
    self.resultTextView.text = @"";
    switch (sender.tag) {
        case 10:
        {
            [CrlandPayApi getHousePayItemList:param1 success:^(__kindof NSDictionary *result) {
                NSError *error = nil;
                NSData *rData = [NSJSONSerialization dataWithJSONObject:result options:NSJSONWritingPrettyPrinted error:&error];
                NSString *resultStr = [[NSString alloc] initWithData:rData encoding:NSUTF8StringEncoding];
                self.resultTextView.text = resultStr;
                
            } failure:^(__kindof NSError *error) {
                NSLog(@"%@", error);
            }];
        }
            break;
        case 11:
        {
            [CrlandPayApi getBillList:param2 success:^(__kindof NSDictionary *result) {
                NSError *error = nil;
                NSData *rData = [NSJSONSerialization dataWithJSONObject:result options:NSJSONWritingPrettyPrinted error:&error];
                NSString *resultStr = [[NSString alloc] initWithData:rData encoding:NSUTF8StringEncoding];
                self.resultTextView.text = resultStr;
            } failure:^(__kindof NSError *error) {
                NSLog(@"%@", error);
            }];
        }
            break;
        case 12:
        {
            [CrlandPayApi getBillDetail:param3 success:^(__kindof NSDictionary *result) {
                NSError *error = nil;
                NSData *rData = [NSJSONSerialization dataWithJSONObject:result options:NSJSONWritingPrettyPrinted error:&error];
                NSString *resultStr = [[NSString alloc] initWithData:rData encoding:NSUTF8StringEncoding];
                self.resultTextView.text = resultStr;
            } failure:^(__kindof NSError *error) {
                NSLog(@"%@", error);
            }];
        }
            break;
        case 14:
        {
            self.resultTextView.text = @"";
        }
            break;
            
        default:
            break;
    }
    
}


@end
