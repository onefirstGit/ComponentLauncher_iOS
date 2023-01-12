//
//  ViewController.m
//  OnefirstComponentLauncher
//
//  Created by 윤상우 on 2018. 10. 4..
//  Copyright © 2018년 onefirst. All rights reserved.
//

#import "ViewController.h"
#import "OFPickerView.h"

@interface ViewController () <UITextFieldDelegate, OFPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UITextField *baseUrl;
@property (nonatomic, weak) IBOutlet UITextField *inputPhoneNumber;
@property (nonatomic, weak) IBOutlet OFPickerView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - OfPickerViewDelegate

- (void)successWithMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)failureWithMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - IBAction

- (IBAction)actionScan:(id)sender {
    NSString *url = self.baseUrl.text;
    NSString *phoneNumber = self.inputPhoneNumber.text;
    
    self.pickerView.pickerViewDelegate = self;
    [self.pickerView loadDoorListWithBaseUrl:url phoneNumber:phoneNumber];
}

- (IBAction)actionOpenDoor:(id)sender {
//    [self.pickerView openDoorWithSelectedRow:0];
    [self.pickerView openSelectedDoor];
}


@end
