//
//  GameCode.h
//  Fruit Catcher
//
//  Created by Song, Tianyi | RASIA on 25/3/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

BOOL Start;
int BasketMove;
int LivesDecrease;
int ScoreIncrease;

@interface GameCode : UIViewController {
    
    IBOutlet UILabel *Scoring;
    IBOutlet UILabel *LivesLeft;
    IBOutlet UILabel *Goal;
    IBOutlet UIImageView *Basket;
    IBOutlet UIImageView *Ground;
    
    IBOutlet UIImageView *Fruit1;
    IBOutlet UIImageView *Fruit2;
    IBOutlet UIImageView *Fruit3;
    IBOutlet UIImageView *Fruit4;
    IBOutlet UIImageView *Fruit5;
    IBOutlet UIImageView *Fruit6;
    IBOutlet UIImageView *Fruit7;
    
    IBOutlet UIImageView *CoinPowerup;
    
    IBOutlet UIImageView *BorderMoveLeft;
    IBOutlet UIImageView *BorderMoveRight;
    
    IBOutlet UILabel *GameOverLabel;
    IBOutlet UIButton *GameOverButton;
    
    NSTimer *TimerFruitMovement;
    NSTimer *TimerMovementBasket;

    
}

-(void)BasketMethod;
-(void)FruitMovement;
-(void)LivesDecreaseMethod;
-(void)GameOver;
-(void)ScoresIncreaseMethod;

@end

NS_ASSUME_NONNULL_END
