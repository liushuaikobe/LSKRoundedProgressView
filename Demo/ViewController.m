//
//  ViewController.m
//  LSKRoundedProgressView
//
//  Created by Shuai Liu on 15/3/19.
//  Copyright (c) 2015年 vars.me. All rights reserved.
//

#import "ViewController.h"
#import "LSKRoundedProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LSKRoundedProgressView *progressView;
@property (weak, nonatomic) IBOutlet UISlider *progressSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.progressView.progress = self.progressSlider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)progressUpdate:(UISlider *)sender {
    self.progressView.progress = sender.value;
}

@end
