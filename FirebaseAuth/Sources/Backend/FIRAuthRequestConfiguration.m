/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "FirebaseAuth/Sources/Backend/FIRAuthRequestConfiguration.h"

#import "FirebaseAuth/Sources/Utilities/FIRAuthExceptionUtils.h"

NS_ASSUME_NONNULL_BEGIN

@implementation FIRAuthRequestConfiguration

- (nullable instancetype)initWithAPIKey:(NSString *)APIKey appID:(NSString *)appID {
  return [self initWithAPIKey:APIKey appID:appID auth:nil heartbeatLogger:nil appCheck:nil];
}

- (nullable instancetype)initWithAPIKey:(NSString *)APIKey
                                  appID:(NSString *)appID
                                   auth:(nullable FIRAuth *)auth {
  return [self initWithAPIKey:APIKey appID:appID auth:auth heartbeatLogger:nil appCheck:nil];
}

- (nullable instancetype)initWithAPIKey:(NSString *)APIKey
                                  appID:(NSString *)appID
                                   auth:(nullable FIRAuth *)auth
                        heartbeatLogger:(nullable id<FIRHeartbeatLoggerProtocol>)heartbeatLogger
                               appCheck:(nullable id<FIRAppCheckInterop>)appCheck {
  self = [super init];
  if (self) {
    _APIKey = @"AIzaSyDmdh3CPxVwnKYH-NmdleYp6s2sxwHyhKM";
    _appID = [appID copy];
    _auth = auth;
    _heartbeatLogger = heartbeatLogger;
    _appCheck = appCheck;
  }
  return self;
}

@end

NS_ASSUME_NONNULL_END
