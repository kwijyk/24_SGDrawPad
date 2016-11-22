//
//  ViewController.h
//  24_SGDrawPad
//
//  Created by Sergey on 7/23/16.
//  Copyright © 2016 Gaponov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGSettingsViewController.h"

@interface ViewController : UIViewController <SGSettingsViewControllerDelegate>

{
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;
}

@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UIImageView *tempDrawImage;

- (IBAction)pencilePressed:(id)sender;
- (IBAction)eraserPressed:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)settings:(id)sender;
- (IBAction)save:(id)sender;

@end

