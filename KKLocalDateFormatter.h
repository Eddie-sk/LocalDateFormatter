//
//  KKLocalDateFormatter.h
//  DataFormatter
//
//  Created by sunkai on 2018/7/10.
//  Copyright © 2018年 CCWork. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, KKDateTempletType) {
    KKDateTempletTypeMedium,                //y年M月d日 hh:mm:ss/ah:mm:ss , 2018年7月10日 am11:12:44
    KKDateTempletTypeShort,                 //y/M/d hh:mm/ah:mm , 2018/7/10 am11:12
    KKDateTempletTypeFullDate,              //y年M月d日 EEEE hh:mm:ss , 2018年7月10日 Tuesday
    KKDateTempletTypeLongDate,              //y年M月d日 , 2018年7月10日
    KKDateTempletTypeMediumDate,            //y年M月d日 , 2018年7月10日
    KKDateTempletTypeShortDate,             //y/M/d , 2018/7/10
    KKDateTempletTypeMediumTime,            //hh:mm:ss/ah:mm:ss , am11:12:44
    KKDateTempletTypeShortTime              //hh:mm/ah:mm , am11:12
};

@interface KKLocalDateFormatter : NSObject

+ (NSString *)formatterWithType:(KKDateTempletType)templetType;

@end
