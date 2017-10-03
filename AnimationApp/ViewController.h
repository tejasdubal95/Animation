//
//  ViewController.h
//  AnimationApp
//
//  Created by Student P_10 on 29/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ballimg;
- (IBAction)animate:(id)sender;
@property (strong,nonatomic)NSString *databasepath;

@property CGFloat w,h;


@end

