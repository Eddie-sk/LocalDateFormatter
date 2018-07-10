//
//  KKLocalDateFormatter.m
//  DataFormatter
//
//  Created by sunkai on 2018/7/10.
//  Copyright © 2018年 CCWork. All rights reserved.
//

#import "KKLocalDateFormatter.h"

static NSString *components[8] = {
    @"yMMMdjms",
    @"yMdjm",
    @"yMMMMEEEEd",
    @"yMMMMd",
    @"yMMMd",
    @"yMd",
    @"jms",
    @"jm"
};

NSString *componentWithTempletType(KKDateTempletType templetType) {
    if (sizeof(components) > (int)templetType) {
        return components[templetType];
    }
    return nil;
}

@implementation KKLocalDateFormatter


+ (NSString *)localLanguage {
    NSArray *preferredLanguages = [NSLocale preferredLanguages];
    if (preferredLanguages && preferredLanguages.count > 0) {
        return preferredLanguages.firstObject;
    }
    return nil;
}

+ (NSString *)formatterWithType:(KKDateTempletType)templetType {
    
    NSString *language = [self localLanguage];
    NSLocale *currentLocale = [[NSLocale alloc] initWithLocaleIdentifier:language];
    
    NSString *component = componentWithTempletType(templetType);
    if (component && component.length > 0 && currentLocale) {
        return [NSDateFormatter dateFormatFromTemplate:component options:0 locale:currentLocale];
    }
    return nil;
}

@end
