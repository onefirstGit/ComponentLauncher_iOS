//
//  OFPickerView.h
//  OFPickerView
//
//  Created by Onefirst on 2018. 10. 4..
//  Copyright © 2018년 onefirst. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OFPickerViewDelegate <NSObject>

- (void)successWithMessage:(NSString *)message;
- (void)failureWithMessage:(NSString *)message;

@end

@interface OFPickerView : UIPickerView

@property (nonatomic, weak) id<OFPickerViewDelegate> pickerViewDelegate;

+ (void)description;

- (void)loadDoorListWithBaseUrl:(NSString *)baseUrl phoneNumber:(NSString *)phoneNumber;

- (void)openSelectedDoor;
- (void)openDoorWithSelectedRow:(NSInteger)selectedRow;

@end
