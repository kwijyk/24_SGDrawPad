//
//  SGSettingsViewController.h
//  24_SGDrawPad
//
//  Created by Sergey on 7/28/16.
//  Copyright © 2016 Gaponov. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SGSettingsViewControllerDelegate;

@interface SGSettingsViewController : UIViewController

@property (assign, nonatomic) CGFloat brush;
@property (assign, nonatomic) CGFloat opacity;
@property (assign, nonatomic) CGFloat red;
@property (assign, nonatomic) CGFloat green;
@property (assign, nonatomic) CGFloat blue;

@property (weak, nonatomic) IBOutlet UISlider *brushControl;
@property (weak, nonatomic) IBOutlet UISlider *opacityControl;
@property (weak, nonatomic) IBOutlet UISlider *redControl;
@property (weak, nonatomic) IBOutlet UISlider *greenControl;
@property (weak, nonatomic) IBOutlet UISlider *blueControl;

@property (weak, nonatomic) IBOutlet UIImageView *preview;

@property (weak, nonatomic) IBOutlet UILabel *brushValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *opacityValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@property (weak, nonatomic) id <SGSettingsViewControllerDelegate> delegate;

- (IBAction)closeSettings:(id)sender;
- (IBAction)sliderChanged:(id)sender;

@end

@protocol SGSettingsViewControllerDelegate <NSObject>

- (void)closeSettings:(id)sender;

@end































