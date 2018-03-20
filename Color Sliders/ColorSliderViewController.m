//
//  ColorSliderViewController.m
//  Color Sliders
//
//  Created by David Fisher on 3/20/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

#import "ColorSliderViewController.h"

@implementation ColorSliderViewController

- (void) viewDidLoad {
    [super viewDidLoad];
  self.redSlider.value = 0.5;
  self.greenSlider.value = 0.0;
  self.blueSlider.value = 0.0;
  self.alphaSlider.value = 1.0;
  [self updateView];
}

- (IBAction) sliderChanged:(id) sender {
//  NSLog(@"Slider changed");
  [self updateView];
}

- (void) updateView {
  self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
  self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
  self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];
  self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", self.alphaSlider.value];

  self.colorView.backgroundColor = [[UIColor alloc] initWithRed:self.redSlider.value
                                                          green:self.greenSlider.value
                                                           blue:self.blueSlider.value
                                                          alpha:self.alphaSlider.value];
}

@end
