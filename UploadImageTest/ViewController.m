//
//  ViewController.m
//  UploadImageTest
//
//  Created by ksnowlv on 15/5/9.
//  Copyright (c) 2015年 yinker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) IBOutlet UIView *maskView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    CALayer *mask = [CALayer layer];
    mask.frame = self.maskView.bounds;
    mask.contents = (id)[[UIImage imageNamed:@"mask"] CGImage];
    _maskView.layer.mask = mask;
    _maskView.layer.masksToBounds = YES;
}

@end
