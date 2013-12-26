//
//  OCSWindowsTable.m
//  Objective-C Sound
//
//  Created by Adam Boulanger on 6/21/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSWindowsTable.h"

@implementation OCSWindowsTable

- (instancetype)initWithType:(WindowTableType)windowType
                    maxValue:(float)maximumValue
                        size:(int)tableSize;
{
    return [self initWithType:kFTWindows
                         size:tableSize
                   parameters:[OCSArray arrayFromConstants:
                               ocspi(windowType),ocsp(maximumValue), nil]];
}


- (instancetype)initWithType:(WindowTableType)windowType
                        size:(int)tableSize;
{
    return [self initWithType:windowType
                     maxValue:1.0f
                         size:tableSize];
}

- (instancetype)initGaussianTypeWithBroadness:(float)windowBroadness
                                     maxValue:(float)maximumValue
                                         size:(int)tableSize;
{
    return [self initWithType:kFTWindows
                         size:tableSize
                   parameters:[OCSArray arrayFromConstants:
                               ocspi(kWindowGaussian),
                               ocsp(maximumValue),
                               ocsp(windowBroadness), nil] ];
}

- (instancetype)initKaiserTypeWithOpenness:(float)windowOpenness
                                  maxValue:(float)maximumValue
                                      size:(int)tableSize
{
    return [self initWithType:kFTWindows
                         size:tableSize
                   parameters:[OCSArray arrayFromConstants:
                               ocspi(kWindowKaiser),
                               ocsp(maximumValue),
                               ocsp(windowOpenness), nil] ];
    
}
@end