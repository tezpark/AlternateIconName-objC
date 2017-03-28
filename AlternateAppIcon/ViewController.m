//
//  ViewController.m
//  AlternateAppIcon
//
//  Created by TezPark on 2017. 3. 28..
//  Copyright © 2017년 Fly&Company. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onClickChangeIcon1:(id)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;
    
    [[UIApplication sharedApplication] setAlternateIconName:@"icon_type_1"
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
}
- (IBAction)onClickChangeIcon2:(id)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;

    [[UIApplication sharedApplication] setAlternateIconName:@"icon_type_2"
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
}

- (IBAction)onClickChangeIcon3:(id)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;

    [[UIApplication sharedApplication] setAlternateIconName:@"icon_type_3"
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
}

- (IBAction)onClickResetIcon:(id)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;
    
    [[UIApplication sharedApplication] setAlternateIconName:nil
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
