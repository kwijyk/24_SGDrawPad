//
//  SGSettingsViewController.m
//  24_SGDrawPad
//
//  Created by Sergey on 7/28/16.
//  Copyright © 2016 Gaponov. All rights reserved.
//

#import "SGSettingsViewController.h"

@implementation SGSettingsViewController

- (void)viewWillAppear:(BOOL)animated {
    
    int redIntValue = self.red * 255.0;
    self.redControl.value = redIntValue;
    [self sliderChanged:self.redControl];
    
    int greenIntValue = self.green * 255.0;
    self.greenControl.value = greenIntValue;
    [self sliderChanged:self.greenControl];
    
    int blueIntValue = self.blue * 255.0;
    self.blueControl.value = blueIntValue;
    [self sliderChanged:self.blueControl];
    
    self.brushControl.value = self.brush;
    [self sliderChanged:self.brushControl];
    
    self.opacityControl.value = self.opacity;
    [self sliderChanged:self.opacityControl];
}

- (IBAction)closeSettings:(id)sender {
    
    [self.delegate closeSettings:self];
}

- (IBAction)sliderChanged:(id)sender {

    UISlider * changedSlider = (UISlider*)sender;
    
    if(changedSlider == self.brushControl) {
        
        self.brush = self.brushControl.value;
        self.brushValueLabel.text = [NSString stringWithFormat:@"%.1f", self.brush];
        
    } else if(changedSlider == self.opacityControl) {
        
        self.opacity = self.opacityControl.value;
        self.opacityValueLabel.text = [NSString stringWithFormat:@"%.1f", self.opacity];
        
    } else if(changedSlider == self.redControl) {
        
        self.red = self.redControl.value/255.0;
        self.redLabel.text = [NSString stringWithFormat:@"Red:%7.1d", (int)self.redControl.value];
        
    } else if(changedSlider == self.greenControl){
        
        self.green = self.greenControl.value/255.0;
        self.greenLabel.text = [NSString stringWithFormat:@"Green:%3.1d", (int)self.greenControl.value];
        
    } else if (changedSlider == self.blueControl){
        
        self.blue = self.blueControl.value/255.0;
        self.blueLabel.text = [NSString stringWithFormat:@"Blue:%6.1d", (int)self.blueControl.value];
    }
    
    UIGraphicsBeginImageContext(self.preview.frame.size);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(),self.brush);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), self.red, self.green, self.blue, self.opacity);
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(),80, 80);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(),80, 80);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    self.preview.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();    
}

@end







