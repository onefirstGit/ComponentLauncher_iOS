//
//  OFDataModel.h
//  OnefirstComponentLib
//
//  Created by 윤상우 on 2018. 10. 4..
//  Copyright © 2018년 onefirst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OFDataModel : NSObject

+ (instancetype)createModelWithHttpBaseUrl:(NSString *)httpBaseUrl userPhoneNumber:(NSString *)userPhoneNumber;

- (NSString *)httpBaseUrl;
- (NSString *)userPhoneNumber;

@end
