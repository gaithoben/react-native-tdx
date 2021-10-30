//
//  TdJsonClient.m
//  Tdx
//
//  Created by Bernard Gaitho on 10/30/21.
//  Copyright © 2021 Facebook. All rights reserved.
//


#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(TdJsonClient, NSObject)
RCT_EXTERN_METHOD(tdCreateClientId)
RCT_EXTERN_METHOD(getClientId: (RCTResponseSenderBlock)callback)

@end
