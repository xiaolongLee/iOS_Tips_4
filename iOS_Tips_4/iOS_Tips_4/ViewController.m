//
//  ViewController.m
//  iOS_Tips_4
//
//  Created by yuanshi on 2020/7/20.
//  Copyright © 2020 yuanshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *centerLab = [[UILabel alloc] initWithFrame:CGRectMake(20, 160, 200, 40)];
    [self.view addSubview:centerLab];
    //添加中划线
    NSDictionary *centerAttribtDic = @{NSStrikethroughStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle],NSForegroundColorAttributeName:[UIColor redColor]};
    NSMutableAttributedString * centerAttr = [[NSMutableAttributedString alloc] initWithString:@"12432" attributes:centerAttribtDic];
    centerLab.attributedText = centerAttr;
}



@end
