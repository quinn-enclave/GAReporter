//
//  GAReporter.h
//  GAReporter
//
//  Created by Quinn on 6/18/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for GAReporter.
FOUNDATION_EXPORT double GAReporterVersionNumber;

//! Project version string for GAReporter.
FOUNDATION_EXPORT const unsigned char GAReporterVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <GAReporter/PublicHeader.h>
@interface GAReporter : NSObject

+ (void) configure: (NSString*)trackID andVerbose: (Boolean)verbose;

+ (void) sendScreenView: (NSString*) screen;
@end


