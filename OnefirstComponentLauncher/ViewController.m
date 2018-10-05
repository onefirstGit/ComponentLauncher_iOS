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

@property (nonatomic, weak) IBOutlet UITextField *inputBaseUrl;
@property (nonatomic, weak) IBOutlet UITextField *inputPhoneNumber;
@property (nonatomic, weak) IBOutlet OFPickerView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.pickerView setup];
    self.pickerView.pickerViewDelegate = self;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - OfPickerViewDelegate

- (void)onScanFailedWithMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - IBAction

- (IBAction)actionScan:(id)sender {
    NSString *url = self.inputBaseUrl.text;
    NSString *phone = self.inputPhoneNumber.text;
    OFDataModel *dataModel = [OFDataModel createModelWithHttpBaseUrl:url userPhoneNumber:phone];
    self.pickerView.dataModel = dataModel;
    
    [self.pickerView startScanDevice];
}

- (IBAction)actionOpenDoor:(id)sender {
//    [self.pickerView openDoorWithSelectedRow:0];
    [self.pickerView openSelectedDoor];
}


@end
