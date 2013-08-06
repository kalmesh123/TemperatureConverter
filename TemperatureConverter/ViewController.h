//
//  ViewController.h
//  TemperatureConverter
//
//  Created by Kalmesh Nyamagoudar on 06/08/13.
//  Copyright (c) 2013 Kalmesh Nyamagoudar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtFahrenheit;
@property (weak, nonatomic) IBOutlet UITextField *txtCelsius;
- (IBAction)buttonConvertClicked:(id)sender;
- (IBAction)txtFahrenheitEditingEnded:(id)sender;
- (IBAction)txtCelsiusEditingEnded:(id)sender;

@end
