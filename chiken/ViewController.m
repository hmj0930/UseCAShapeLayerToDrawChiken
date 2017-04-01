//
//  ViewController.m
//  chiken
//
//  Created by MJ on 2017/3/17.
//  Copyright © 2017年 韩明静. All rights reserved.
//

#import "ViewController.h"
#define yellow [UIColor colorWithRed:185/255.0 green:178/255.0 blue:99/255.0 alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 500, [UIScreen mainScreen].bounds.size.width, 100)];
    [self.view addSubview:label];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor colorWithRed:21/255.0 green:159/255.0 blue:237/255.0 alpha:1];
    label.text = @"Hello";
    label.font = [UIFont fontWithName:@"Chalkduster" size:80];
    
    [self draw];
}

-(void)draw{
    
    UIBezierPath *path=[UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(280, 250)];
    [path addArcWithCenter:CGPointMake(255, 250) radius:25 startAngle:0 endAngle:M_PI*5/6 clockwise:YES];
    [path addQuadCurveToPoint:CGPointMake(170, 250+12.5) controlPoint:CGPointMake(200, 320)];
    [path addArcWithCenter:CGPointMake(120+25, 250) radius:25 startAngle:M_PI/6 endAngle:M_PI clockwise:YES];
    [path addLineToPoint:CGPointMake(120, 200)];
    [path addArcWithCenter:CGPointMake(200, 200) radius:80 startAngle:M_PI endAngle:2*M_PI clockwise:YES];
    [path addLineToPoint:CGPointMake(280, 250)];
    CAShapeLayer *layer=[CAShapeLayer layer];
    layer.path=path.CGPath;
    layer.lineWidth=2;
//    layer.strokeColor=[UIColor yellowColor].CGColor;
    layer.fillColor=[UIColor yellowColor].CGColor;
    [self.view.layer addSublayer:layer];
    
    UIBezierPath *path1=[UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(120, 250)];
//    [path1 addLineToPoint:CGPointMake(120, 250)];
    [path1 addQuadCurveToPoint:CGPointMake(120, 450) controlPoint:CGPointMake(50, 400)];
    [path1 addQuadCurveToPoint:CGPointMake(280, 450) controlPoint:CGPointMake(200, 480)];
    [path1 addQuadCurveToPoint:CGPointMake(280, 250) controlPoint:CGPointMake(350, 400)];
//    [path1 addLineToPoint:CGPointMake(280, 200)];
    [path1 addArcWithCenter:CGPointMake(255, 250) radius:25 startAngle:0 endAngle:M_PI*5/6 clockwise:YES];
    [path1 addQuadCurveToPoint:CGPointMake(170, 250+12.5) controlPoint:CGPointMake(200, 320)];
    [path1 addArcWithCenter:CGPointMake(120+25, 250) radius:25 startAngle:M_PI/6 endAngle:M_PI clockwise:YES];
    
    CAShapeLayer *layer1=[CAShapeLayer layer];
    layer1.path=path1.CGPath;
    layer1.strokeColor=[UIColor orangeColor].CGColor;
    layer1.lineWidth=2;
    layer1.fillColor=[UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer1];
    
    UIBezierPath *path3=[UIBezierPath bezierPath];
    [path3 moveToPoint:CGPointMake(200, 150)];
    [path3 addQuadCurveToPoint:CGPointMake(200, 80) controlPoint:CGPointMake(240, 120)];
    [path3 addQuadCurveToPoint:CGPointMake(200, 150) controlPoint:CGPointMake(160, 120)];
    CAShapeLayer *layer3=[CAShapeLayer layer];
    layer3.path=path3.CGPath;
    layer3.strokeColor=[UIColor redColor].CGColor;
    layer3.lineWidth=2;
    layer3.fillColor=[UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer3];
    
    UIBezierPath *lefteyepath=[UIBezierPath bezierPathWithArcCenter:CGPointMake(160, 200) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *lefteyelayer=[CAShapeLayer layer];
    lefteyelayer.path=lefteyepath.CGPath;
    lefteyelayer.fillColor=[UIColor whiteColor].CGColor;
    lefteyelayer.strokeColor=[UIColor redColor].CGColor;
    lefteyelayer.lineWidth=2;
    [self.view.layer addSublayer:lefteyelayer];

    UIBezierPath *eye2=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(145, 175, 40, 40) cornerRadius:20];
    CAShapeLayer *eye2layer=[CAShapeLayer layer];
    eye2layer.path=eye2.CGPath;
    eye2layer.fillColor=[UIColor blackColor].CGColor;
    [self.view.layer addSublayer:eye2layer];
    //-5
    UIBezierPath *eye3=[UIBezierPath bezierPathWithArcCenter:CGPointMake(170, 190) radius:7 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *eye3layer=[CAShapeLayer layer];
    eye3layer.path=eye3.CGPath;
    eye3layer.fillColor=[UIColor whiteColor].CGColor;
    [self.view.layer addSublayer:eye3layer];
    
    UIBezierPath *eye4=[UIBezierPath bezierPathWithArcCenter:CGPointMake(170, 190+7+3) radius:3 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *eye4layer=[CAShapeLayer layer];
    eye4layer.path=eye4.CGPath;
    eye4layer.fillColor=[UIColor whiteColor].CGColor;
    [self.view.layer addSublayer:eye4layer];
    
    UIBezierPath *righteyepath=[UIBezierPath bezierPathWithArcCenter:CGPointMake(240, 200) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *righteyelayer=[CAShapeLayer layer];
    righteyelayer.path=righteyepath.CGPath;
    righteyelayer.fillColor=[UIColor whiteColor].CGColor;
    righteyelayer.strokeColor=[UIColor redColor].CGColor;
    righteyelayer.lineWidth=2;
    [self.view.layer addSublayer:righteyelayer];
    
    UIBezierPath *eye5=[UIBezierPath bezierPathWithRoundedRect:CGRectMake(217, 175, 40, 40) cornerRadius:20];
    CAShapeLayer *eye5layer=[CAShapeLayer layer];
    eye5layer.path=eye5.CGPath;
    eye5layer.fillColor=[UIColor blackColor].CGColor;
    [self.view.layer addSublayer:eye5layer];
    
    UIBezierPath *eye6=[UIBezierPath bezierPathWithArcCenter:CGPointMake(235, 190) radius:7 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *eye6layer=[CAShapeLayer layer];
    eye6layer.path=eye6.CGPath;
    eye6layer.fillColor=[UIColor whiteColor].CGColor;
    [self.view.layer addSublayer:eye6layer];
    
    UIBezierPath *eye7=[UIBezierPath bezierPathWithArcCenter:CGPointMake(235, 190+7+3) radius:3 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *eye7layer=[CAShapeLayer layer];
    eye7layer.path=eye7.CGPath;
    eye7layer.fillColor=[UIColor whiteColor].CGColor;
    [self.view.layer addSublayer:eye7layer];
    
    UIBezierPath *mouthpath=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(190, 210, 20, 40)];
    CAShapeLayer *monthLayer=[CAShapeLayer layer];
    monthLayer.path=mouthpath.CGPath;
    monthLayer.fillColor=[UIColor redColor].CGColor;
    [self.view.layer addSublayer:monthLayer];
    
    UIBezierPath *leftarmpath=[UIBezierPath bezierPath];
    [leftarmpath moveToPoint:CGPointMake(100, 300)];
    [leftarmpath addQuadCurveToPoint:CGPointMake(30, 250) controlPoint:CGPointMake(65, 305)];
    [leftarmpath addQuadCurveToPoint:CGPointMake(30, 300) controlPoint:CGPointMake(10, 275)];
    [leftarmpath addQuadCurveToPoint:CGPointMake(45, 360) controlPoint:CGPointMake(10, 330)];
    [leftarmpath addQuadCurveToPoint:CGPointMake(83, 380) controlPoint:CGPointMake(30, 420)];
    [leftarmpath addQuadCurveToPoint:CGPointMake(100, 300) controlPoint:CGPointMake(85, 340)];
    CAShapeLayer *leftarmlayer=[CAShapeLayer layer];
    leftarmlayer.path=leftarmpath.CGPath;
//    leftarmlayer.strokeColor=yellow.CGColor;
    leftarmlayer.fillColor=[UIColor yellowColor].CGColor;
    [self.view.layer addSublayer:leftarmlayer];
    
    UIBezierPath *rightarmpath=[UIBezierPath bezierPath];
    [rightarmpath moveToPoint:CGPointMake(300, 300)];
    [rightarmpath addQuadCurveToPoint:CGPointMake(370, 250) controlPoint:CGPointMake(335, 305)];
    [rightarmpath addQuadCurveToPoint:CGPointMake(370, 300) controlPoint:CGPointMake(390, 275)];
    [rightarmpath addQuadCurveToPoint:CGPointMake(355, 360) controlPoint:CGPointMake(390, 330)];
    [rightarmpath addQuadCurveToPoint:CGPointMake(317, 380) controlPoint:CGPointMake(370, 420)];
    [rightarmpath addQuadCurveToPoint:CGPointMake(300, 300) controlPoint:CGPointMake(315, 340)];
    CAShapeLayer *rightArmlayer=[CAShapeLayer layer];
    rightArmlayer.path=rightarmpath.CGPath;
//    rightArmlayer.strokeColor=yellow.CGColor;
    rightArmlayer.fillColor=[UIColor yellowColor].CGColor;
    [self.view.layer addSublayer:rightArmlayer];
    
//    UIBezierPath *leftlegpath=[UIBezierPath bezierPath];
//    [leftlegpath moveToPoint:CGPointMake(120, 450)];
//    [leftlegpath addLineToPoint:CGPointMake(90, 400)];
//    CAShapeLayer *leftleglayer=[CAShapeLayer layer];
//    leftleglayer.path=leftlegpath.CGPath;
//    leftleglayer.lineWidth=2;
//    leftleglayer.fillColor=[UIColor clearColor].CGColor;
//    leftleglayer.strokeColor=[UIColor blackColor].CGColor;
//    [self.view.layer addSublayer:leftleglayer];
    
}



@end
