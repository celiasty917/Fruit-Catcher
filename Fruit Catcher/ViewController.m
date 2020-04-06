//
//  ViewController.m
//  Fruit Catcher
//
//  Created by Song, Tianyi | RASIA on 24/3/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)FruitMovement{
    
    Fruit1.center = CGPointMake(Fruit1.center.x, Fruit1.center.y + 3);
    Fruit2.center = CGPointMake(Fruit2.center.x, Fruit2.center.y + 3);
    Fruit3.center = CGPointMake(Fruit3.center.x, Fruit3.center.y + 3);
    Fruit4.center = CGPointMake(Fruit4.center.x, Fruit4.center.y + 3);
    Fruit5.center = CGPointMake(Fruit5.center.x, Fruit5.center.y + 3);
    
    if (CGRectIntersectsRect(Fruit1.frame, BottomBorder.frame)) {
        Fruit1.center = CGPointMake(60, -77);
    }
    
    if (CGRectIntersectsRect(Fruit2.frame, BottomBorder.frame)) {
        Fruit2.center = CGPointMake(167, -100);
    }
    
    if (CGRectIntersectsRect(Fruit3.frame, BottomBorder.frame)) {
        Fruit3.center = CGPointMake(306, -210);
    }
    
    if (CGRectIntersectsRect(Fruit4.frame, BottomBorder.frame)) {
        Fruit4.center = CGPointMake(450, -89);
    }
    
    if (CGRectIntersectsRect(Fruit5.frame, BottomBorder.frame)) {
        Fruit5.center = CGPointMake(557, -230);
    }
    
};

- (void)viewDidLoad {
    
    FruitMovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(FruitMovement) userInfo:nil repeats:YES];
    
    Fruit1.center = CGPointMake(60, -77);
    Fruit2.center = CGPointMake(167, -100);
    Fruit3.center = CGPointMake(306, -210);
    Fruit4.center = CGPointMake(450, -89);
    Fruit5.center = CGPointMake(557, -230);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
