//
//  ViewController.m
//  TemperatureConverter
//
//  Created by Kalmesh Nyamagoudar on 06/08/13.
//  Copyright (c) 2013 Kalmesh Nyamagoudar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *isCelsiusSelected;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    self.txtCelsius.delegate = self;
    self.txtFahrenheit.delegate = self;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonConvertClicked:(id)sender {

    if ([isCelsiusSelected isEqualToString:@"C"]) {
        float celsiusValue = [self.txtCelsius.text floatValue];
        NSString *myString = [NSString stringWithFormat:@"%f", (9.0/5.0)* celsiusValue + 32];
        [self.txtFahrenheit setText:myString];
    }
    if ([isCelsiusSelected isEqualToString:@"F"]) {
        float fahValue = [self.txtFahrenheit.text floatValue];
        NSString *myString = [NSString stringWithFormat:@"%f", (5.0/9.0)* (fahValue - 32)];
        [self.txtCelsius setText:myString];
    }
}

- (IBAction)txtFahrenheitEditingEnded:(id)sender {
    isCelsiusSelected = @"F";
}

- (IBAction)txtCelsiusEditingEnded:(id)sender {
    isCelsiusSelected = @"C";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
