//
//  Copyright (c) 2022 Open Whisper Systems. All rights reserved.
//

#import <SignalServiceKit/TSOutgoingMessage.h>

NS_ASSUME_NONNULL_BEGIN

// A generic, serializable message that can be used to
// send fixed plaintextData payloads.
@interface OWSStaticOutgoingMessage : TSOutgoingMessage

- (instancetype)initOutgoingMessageWithBuilder:(TSOutgoingMessageBuilder *)outgoingMessageBuilder
                                   transaction:(SDSAnyReadTransaction *)transaction NS_UNAVAILABLE;

- (instancetype)initWithThread:(TSThread *)thread
                 plaintextData:(NSData *)plaintextData
                   transaction:(SDSAnyReadTransaction *)transaction;
- (instancetype)initWithThread:(TSThread *)thread
                     timestamp:(uint64_t)timestamp
                 plaintextData:(NSData *)plaintextData
                   transaction:(SDSAnyReadTransaction *)transaction;

@end

NS_ASSUME_NONNULL_END
