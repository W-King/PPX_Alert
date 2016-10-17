//
//  ViewController.m
//  PPX_Alert
//
//  Created by pipixia on 16/10/17.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "ViewController.h"
#import "PPX_Alert.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *titleAry = @[@"Alert",@"Sheet",@"确定",@"Alert>=3"];
    
    NSArray *selectAry = @[@"Alert:",@"Sheet:",@"Confirm:",@"AlertThree:"];
    
    for (int i = 0; i < titleAry.count; i ++) {
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(140, 100 + i * 60, 90, 40)];
        
        [btn setTitle:titleAry[i] forState:UIControlStateNormal];
        
        btn.backgroundColor = [UIColor blueColor];
        
        [btn addTarget:self action:NSSelectorFromString(selectAry[i]) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
        
    }

    
}

-(void)Alert:(id)sender{
    
    PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"这是一些信息"];
    
    [PPXAlert addBtnAlertTitle:@"确定" action:^{
        
        NSLog(@"确定");
        
    }];
    
    [PPXAlert addBtnAlertTitle:@"取消" action:^{
        
        NSLog(@"取消");
        
    }];
    
    [PPXAlert showAlertWithSender:self];
    
    
}

-(void)Sheet:(id)sender{
    
    PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
    
    [PPXAlert addBtnSheetTitle:@"相机" action:^{
        
        NSLog(@"相机");
        
    }];
    
    [PPXAlert addBtnSheetTitle:@"相册" action:^{
        
        NSLog(@"相册");
        
    }];
    
    [PPXAlert addBtnSheetTitle:@"取消" action:^{
        
        NSLog(@"取消");
        
    }];
    
    [PPXAlert showActionSheetWithSender:self];
    
    
}

-(void)Confirm:(id)sender{
    
    
    [PPX_Alert showAlertViewCertainWithTitle:@"拍照" message:@"lalala" WithUIViewController:self];
    
    
}

-(void)AlertThree:(id)sender{
    
    PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
    
    [PPXAlert addBtnAlertTitle:@"相机" action:^{
        
        NSLog(@"相机");
        
    }];
    
    [PPXAlert addBtnAlertTitle:@"相册" action:^{
        
        NSLog(@"相册");
        
    }];
    
    [PPXAlert addBtnAlertTitle:@"取消" action:^{
        
        NSLog(@"取消");
        
    }];
    
    [PPXAlert showAlertWithSender:self];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
