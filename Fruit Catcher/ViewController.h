//
//  ViewController.h
//  Fruit Catcher
//
//  Created by Song, Tianyi | RASIA on 24/3/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UIImageView *Fruit1;
    IBOutlet UIImageView *Fruit2;
    IBOutlet UIImageView *Fruit3;
    IBOutlet UIImageView *Fruit4;
    IBOutlet UIImageView *Fruit5;
    
    IBOutlet UIImageView *BottomBorder;
    
    NSTimer *FruitMovementTimer;
    
}

-(void)FruitMovement;


@end

