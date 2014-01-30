//
//  iMAS_SC.m
//  SCSampleApp
//
//  Created by Gregg Ganley on 1/30/14.
//  Copyright (c) 2014 Gregg Ganley. All rights reserved.
//

#import "iMAS_SC.h"


@interface iMAS_SC ()

//--------------------------------
// Callback block from checks
//--------------------------------
typedef void (^cbBlock) (void);

@end

@implementation iMAS_SC

-(id) init {
    self = [super init];
    return self;
}

+(void) jbCheck {
    
    //**
    //** JB test
        
    //-----------------------------------
    // call JB weHaveAProblem
    //-----------------------------------
    cbBlock chkCallback  = ^{
            
        __weak id weakSelf = self;
        
        if (weakSelf) weHaveA_JBProblem();
    };
        
    //-----------------------------------
    // jailbreak detection
    //-----------------------------------
    checkFork(chkCallback);
    checkFiles(chkCallback);
    checkLinks(chkCallback);

}

+(void) dbgCheck {
    //-------------------------------------------
    // do not allow debuggers
    //-------------------------------------------
    //dbgStop;
    
    //-------------------------------------------
    // check for the presence of a debugger
    // call weHaveAProblem if there is one
    //-------------------------------------------
    cbBlock dbChkCallback  = ^{
        
        __weak id weakSelf = self;
        
        if (weakSelf) weHaveA_DBGProblem();
        
    };
    
    dbgCheck(dbChkCallback);

}

@end

//--------------------------------------------------------------------
// if the device is jailbroken then this method will be called
//--------------------------------------------------------------------
void weHaveA_JBProblem() {
    
    printf("We have a problem - jailbroken!");
    
}


//--------------------------------------------------------------------
// if a debugger is attched to the app then this method will be called
//--------------------------------------------------------------------
void weHaveA_DBGProblem() {
    
    printf("We have a problem - debugger attached!");
    
}
