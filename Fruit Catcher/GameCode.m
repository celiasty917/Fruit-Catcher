//
//  GameCode.m
//  Fruit Catcher
//
//  Created by Song, Tianyi | RASIA on 25/3/20.
//  Copyright © 2020 Song, Tianyi | RASIA. All rights reserved.
//

#import "GameCode.h"

@interface GameCode ()

@end

@implementation GameCode

-(void)ScoresIncreaseMethod{
    
    ScoreIncrease = ScoreIncrease + 1;
    Scoring.text = [NSString stringWithFormat:@"%i", ScoreIncrease];
    
}

-(void)GameOver {
    
    [TimerFruitMovement invalidate];
    [TimerMovementBasket invalidate];
    GameOverLabel.hidden = NO;
    GameOverButton.hidden = NO;
    Fruit1.hidden = YES;
    Fruit2.hidden = YES;
    Fruit3.hidden = YES;
    Fruit4.hidden = YES;
    Fruit5.hidden = YES;
    Fruit6.hidden = YES;
    Fruit7.hidden = YES;
    
}

-(void)LivesDecreaseMethod {
    
    LivesDecrease = LivesDecrease -1;
    LivesLeft.text = [NSString stringWithFormat:@"LIVES LEFT: %i", LivesDecrease];
    
    if (LivesDecrease == 0) {
        [self GameOver];
    }
    
}

-(void)FruitMovement {
    
    Fruit1.center = CGPointMake(Fruit1.center.x, Fruit1.center.y + 3);
    Fruit2.center = CGPointMake(Fruit2.center.x, Fruit2.center.y + 3);
    Fruit3.center = CGPointMake(Fruit3.center.x, Fruit3.center.y + 3);
    Fruit4.center = CGPointMake(Fruit4.center.x, Fruit4.center.y + 3);
    Fruit5.center = CGPointMake(Fruit5.center.x, Fruit5.center.y + 3);
    Fruit6.center = CGPointMake(Fruit6.center.x, Fruit6.center.y + 3);
    Fruit7.center = CGPointMake(Fruit7.center.x, Fruit7.center.y + 3);
    
    if (CGRectIntersectsRect(Fruit1.frame, Ground.frame)) {
        Fruit1.center = CGPointMake(70, -100);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit2.frame, Ground.frame)) {
        Fruit2.center = CGPointMake(131, -190);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit3.frame, Ground.frame)) {
        Fruit3.center = CGPointMake(229, -280);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit4.frame, Ground.frame)) {
        Fruit4.center = CGPointMake(329, -370);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit5.frame, Ground.frame)) {
        Fruit5.center = CGPointMake(397, -460);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit6.frame, Ground.frame)) {
        Fruit6.center = CGPointMake(485, -550);
        [self LivesDecreaseMethod];
    }
    
    if (CGRectIntersectsRect(Fruit7.frame, Ground.frame)) {
        Fruit7.center = CGPointMake(546, -640);
        [self LivesDecreaseMethod];
    }
    
    //when a basket hits a fruit
    
    if (CGRectIntersectsRect(Basket.frame, Fruit1.frame)){
        [self ScoresIncreaseMethod];
        Fruit1.center = CGPointMake(70, -100);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit2.frame)){
        [self ScoresIncreaseMethod];
        Fruit2.center = CGPointMake(131, -190);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit3.frame)){
        [self ScoresIncreaseMethod];
        Fruit3.center = CGPointMake(229, -280);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit4.frame)){
        [self ScoresIncreaseMethod];
        Fruit4.center = CGPointMake(329, -370);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit5.frame)){
        [self ScoresIncreaseMethod];
        Fruit5.center = CGPointMake(397, -460);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit6.frame)){
        [self ScoresIncreaseMethod];
        Fruit6.center = CGPointMake(485, -550);
    }
    if (CGRectIntersectsRect(Basket.frame, Fruit7.frame)){
        [self ScoresIncreaseMethod];
        Fruit7.center = CGPointMake(546, -640);
    }
    
}

- (void)BasketMethod {
    
    Basket.center = CGPointMake(Basket.center.x + BasketMove, Basket.center.y);
    
    if (CGRectIntersectsRect(Basket.frame, BorderMoveLeft.frame)){
        BasketMove = 0;
    }
    if (CGRectIntersectsRect(Basket.frame, BorderMoveRight.frame)){
        BasketMove = 0;
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if (Start == YES) {
        Scoring.hidden = NO;
        LivesLeft.hidden = NO;
        Basket.hidden = NO;
        Ground.hidden = YES;
        Goal.hidden = YES;
        Fruit1.hidden = NO;
        Fruit2.hidden = NO;
        Fruit3.hidden = NO;
        Fruit4.hidden = NO;
        Fruit5.hidden = NO;
        Fruit6.hidden = NO;
        Fruit7.hidden = NO;
        Fruit1.center = CGPointMake(70, -100);
        Fruit2.center = CGPointMake(131, -190);
        Fruit3.center = CGPointMake(229, -280);
        Fruit4.center = CGPointMake(329, -370);
        Fruit5.center = CGPointMake(397, -460);
        Fruit6.center = CGPointMake(485, -550);
        Fruit7.center = CGPointMake(546, -640);
        
        Start = NO;
        
        TimerFruitMovement = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(FruitMovement) userInfo:nil repeats:YES];
        
        TimerMovementBasket = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BasketMethod) userInfo:nil repeats:YES];
        
    }
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if (point.x < 284){
        BasketMove = -31;
    }
    else if (point.x > 297){
        BasketMove = 31;
    }
    
    if (CGRectIntersectsRect(Basket.frame, BorderMoveLeft.frame) && (point.x<284)){
        BasketMove = 0;
    }
    if (CGRectIntersectsRect(Basket.frame, BorderMoveRight.frame) && (point.x>297)){
        BasketMove = 0;
    }
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    BasketMove = 0;
}

- (void)viewDidLoad {
    
    Scoring.hidden = YES;
    LivesLeft.hidden = YES;
    Basket.hidden = NO;
    Ground.hidden = NO;
    Goal.hidden = NO;
    Fruit1.hidden = YES;
    Fruit2.hidden = YES;
    Fruit3.hidden = YES;
    Fruit4.hidden = YES;
    Fruit5.hidden = YES;
    Fruit6.hidden = YES;
    Fruit7.hidden = YES;
    LivesDecrease = 10;
    ScoreIncrease = 0;
    GameOverLabel.hidden = YES;
    GameOverButton.hidden = YES;
    
    Start = YES;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
