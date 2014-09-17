//
//  ViewController.m
//  transform
//
//  Created by user on 14-9-17.
//  Copyright (c) 2014年 giant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(110, 100, 100, 100)];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor grayColor];
    
    CGAffineTransform transT = CGAffineTransformMakeTranslation(20, 0);
    CGAffineTransform transS = CGAffineTransformMakeScale(3, 3);
    CGAffineTransform transC = CGAffineTransformConcat(transT, transS);
 
    [UIView animateWithDuration:5 animations:^{
        view.transform = transC;
    } completion:^(BOOL finished) {
        // Scale放大3倍， Translation放大3倍
        NSLog(@"%@", view);
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
