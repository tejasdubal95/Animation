//
//  ViewController.m
//  AnimationApp
//
//  Created by Student P_10 on 29/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _w = [UIScreen mainScreen].bounds.size.width;
    _h = [UIScreen mainScreen].bounds.size.height;
    
}


-(void)animatenorthwest
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x-20, self.ballimg.frame.origin.y-20, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatenorth
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x, self.ballimg.frame.origin.y-20, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatenortheast
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x+20, self.ballimg.frame.origin.y-20, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatewest
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x-30, self.ballimg.frame.origin.y, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animateeast
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x+30, self.ballimg.frame.origin.y, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatesouthwest
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x-30, self.ballimg.frame.origin.y+30, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatesouth
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x, self.ballimg.frame.origin.y+20, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];
}

-(void)animatesoutheast
{
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.ballimg.frame = CGRectMake(self.ballimg.frame.origin.x+20, self.ballimg.frame.origin.y+20, self.ballimg.frame.size.height, self.ballimg.frame.size.width);
        
        
    }completion:^(BOOL finished)
     {
         NSLog(@"animation finished");
     }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animate:(id)sender {
    CGFloat ballh = _ballimg.frame.size.height;
    CGFloat ballw = _ballimg.frame.size.width;

    UIButton *button = sender;
    switch (button.tag) {
        case 1:
            if(_ballimg.frame.origin.x > 0 && _ballimg.frame.origin.y > 0)
            {
                [self animatenorthwest];
            }
            
            break;
        case 2:
            if(_ballimg.frame.origin.y > 0)
            {
                [self animatenorth];
            }
                        break;
        case 3:
            if(_ballimg.frame.origin.y >0 && _ballimg.frame.origin.x < _w - ballw)
            {
                [self animatenortheast];
            }
            
            break;
        case 4:
            if(_ballimg.frame.origin.x > 0)
            {
                [self animatewest];
            }
            
            break;
        case 6:
            if(_ballimg.frame.origin.x <_w-ballw)
            {
                [self animateeast];
            }
            
            break;
        case 7:
            if(_ballimg.frame.origin.x > 0 && _ballimg.frame.origin.y < _h-ballh)
            {
                [self animatesouthwest];
            }
          
            break;
        case 8:

            if(_ballimg.frame.origin.y < _h-ballh)
            {
                NSLog(@"Image Y:%f",_ballimg.frame.origin.y);

                NSLog(@"ViewHeight:%f",_h);

                [self animatesouth];

                //[self animatenorth];
            }
            break;
        case 9:
            if(_ballimg.frame.origin.x < _w-ballw && _ballimg.frame.origin.y<_h-ballh)
            {
                [self animatesoutheast];
            }
            
            break;
        case 5:
        
            
        default:
            NSLog(@"Invalid Selection");
            break;
    }
    
}

    
@end
