//
//  ViewController.m
//  TouchesMoved
//
//  Created by Matej Knopp on 31/03/2018.
//  Copyright © 2018 Matej Knopp. All rights reserved.
//

#import "ViewController.h"

@interface View : UIView

@end

@implementation View

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    UITouch *t = [touches anyObject];
    CGPoint loc = [t locationInView:self];
    CGPoint prev = [t previousLocationInView:self];
    NSLog(@"Delta %f %f", loc.x - prev.x, loc.y - prev.y);
}

@end

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView
{
    self.view = [[View alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
