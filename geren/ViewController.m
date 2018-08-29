//
//  ViewController.m
//  geren
//
//  Created by ios on 2018/8/27.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()
@property (nonatomic,weak) UIImageView *logoImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self initsubviews];
}

- (void)initsubviews{
    
    CGFloat screenH = self.view.frame.size.height;
    CGFloat screenW = self.view.frame.size.width;
    CGFloat space = 10.10;
    CGFloat subviewH = (screenH - 3 * space)/3;
    
    UIImageView *logoImageView = [[UIImageView alloc] init];
    self.logoImageView = logoImageView;
    logoImageView.image = [UIImage imageNamed:@"背景"];
    [self.view addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(screenW, subviewH));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
