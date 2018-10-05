//
//  OFPickerView.h
//  OFPickerView
//
//  Created by Onefirst on 2018. 10. 4..
//  Copyright © 2018년 onefirst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OFDataModel.h"

@protocol OFPickerViewDelegate <NSObject>

- (void)onScanFailedWithMessage:(NSString *)message;

@end

@interface OFPickerView : UIPickerView

@property (nonatomic, weak) id<OFPickerViewDelegate> pickerViewDelegate;
@property (nonatomic, strong) OFDataModel *dataModel;

+ (void)description;

- (void)setup;
- (BOOL)startScanDevice;
- (BOOL)stopScanDevice;

- (void)openSelectedDoor;
- (void)openDoorWithSelectedRow:(NSInteger)selectedRow;

@end
