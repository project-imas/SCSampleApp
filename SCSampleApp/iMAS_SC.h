//
//  iMAS_SC.h
//  SCSampleApp
//
//  Created by Gregg Ganley on 1/30/14.
//  Copyright (c) 2014 Gregg Ganley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecurityCheck/SecurityCheck.h"

inline void weHaveA_JBProblem() __attribute__((always_inline));
inline void weHaveA_DBGProblem() __attribute__((always_inline));

@interface iMAS_SC : NSObject
+(void) jbCheck;
+(void) dbgCheck;
@end
