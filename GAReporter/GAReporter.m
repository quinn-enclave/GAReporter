//
//  GAReporter.m
//  GAReporter
//
//  Created by Quinn on 6/18/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GAReporter.h"
#import "GAI.h"
#import "GAITracker.h"
#import "GAIDictionaryBuilder.h"

@implementation GAReporter

+ (void) configure: (NSString*)trackID andVerbose: (Boolean)verbose
{
    GAI* gaiTemplate = GAI.sharedInstance;
    gaiTemplate.defaultTracker = [gaiTemplate trackerWithTrackingId:(NSString *)trackID];
    gaiTemplate.trackUncaughtExceptions = true;
    gaiTemplate.dispatchInterval = 20;
    if (verbose) {
        gaiTemplate.logger.logLevel = kGAILogLevelVerbose;
    }
    gaiTemplate.defaultTracker.allowIDFACollection = true;
}

+ (void) sendScreenView: (NSString*) screen
{
    id tracker = [GAI.sharedInstance defaultTracker];
    [tracker setScreenName:screen];
    id screenDict = [[GAIDictionaryBuilder createScreenView] build];
    [tracker send:screenDict];
}
@end
