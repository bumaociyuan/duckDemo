//
//  XXDuckEntity.h
//  duckDemo
//
//  Created by niko on 9/3/14.
//  Copyright (c) 2014 niko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXDuckEntity : NSProxy
- (instancetype)initWithJSONString:(NSString *)json;
@end

extern id XXDuckEntityCreateWithJSON(NSString *json);


