//
//  Copyright (c) 2022 Open Whisper Systems. All rights reserved.
//

import Foundation
import GRDB
import SignalCoreKit

// NOTE: This file is generated by /Scripts/sds_codegen/sds_generate.py.
// Do not manually edit it, instead run `sds_codegen.sh`.

// MARK: - Typed Convenience Methods

@objc
public extension TSAttachmentStream {
    // NOTE: This method will fail if the object has unexpected type.
    class func anyFetchAttachmentStream(
        uniqueId: String,
        transaction: SDSAnyReadTransaction
    ) -> TSAttachmentStream? {
        assert(uniqueId.count > 0)

        guard let object = anyFetch(uniqueId: uniqueId,
                                    transaction: transaction) else {
                                        return nil
        }
        guard let instance = object as? TSAttachmentStream else {
            owsFailDebug("Object has unexpected type: \(type(of: object))")
            return nil
        }
        return instance
    }

    // NOTE: This method will fail if the object has unexpected type.
    func anyUpdateAttachmentStream(transaction: SDSAnyWriteTransaction, block: (TSAttachmentStream) -> Void) {
        anyUpdate(transaction: transaction) { (object) in
            guard let instance = object as? TSAttachmentStream else {
                owsFailDebug("Object has unexpected type: \(type(of: object))")
                return
            }
            block(instance)
        }
    }
}

// MARK: - SDSSerializer

// The SDSSerializer protocol specifies how to insert and update the
// row that corresponds to this model.
class TSAttachmentStreamSerializer: SDSSerializer {

    private let model: TSAttachmentStream
    public required init(model: TSAttachmentStream) {
        self.model = model
    }

    // MARK: - Record

    func asRecord() throws -> SDSRecord {
        let id: Int64? = model.grdbId?.int64Value

        let recordType: SDSRecordType = .attachmentStream
        let uniqueId: String = model.uniqueId

        // Properties
        let albumMessageId: String? = model.albumMessageId
        let attachmentType: TSAttachmentType = model.attachmentType
        let blurHash: String? = model.blurHash
        let byteCount: UInt32 = model.byteCount
        let caption: String? = model.caption
        let contentType: String = model.contentType
        let encryptionKey: Data? = model.encryptionKey
        let serverId: UInt64 = model.serverId
        let sourceFilename: String? = model.sourceFilename
        let cachedAudioDurationSeconds: Double? = archiveOptionalNSNumber(model.cachedAudioDurationSeconds, conversion: { $0.doubleValue })
        let cachedImageHeight: Double? = archiveOptionalNSNumber(model.cachedImageHeight, conversion: { $0.doubleValue })
        let cachedImageWidth: Double? = archiveOptionalNSNumber(model.cachedImageWidth, conversion: { $0.doubleValue })
        let creationTimestamp: Double? = archiveOptionalDate(model.creationTimestamp)
        let digest: Data? = model.digest
        let isUploaded: Bool? = model.isUploaded
        let isValidImageCached: Bool? = archiveOptionalNSNumber(model.isValidImageCached, conversion: { $0.boolValue })
        let isValidVideoCached: Bool? = archiveOptionalNSNumber(model.isValidVideoCached, conversion: { $0.boolValue })
        let lazyRestoreFragmentId: String? = nil
        let localRelativeFilePath: String? = model.localRelativeFilePath
        let mediaSize: Data? = nil
        let pointerType: TSAttachmentPointerType? = nil
        let state: TSAttachmentPointerState? = nil
        let uploadTimestamp: UInt64 = model.uploadTimestamp
        let cdnKey: String = model.cdnKey
        let cdnNumber: UInt32 = model.cdnNumber
        let isAnimatedCached: Bool? = archiveOptionalNSNumber(model.isAnimatedCached, conversion: { $0.boolValue })
        let attachmentSchemaVersion: UInt = model.attachmentSchemaVersion

        return AttachmentRecord(delegate: model, id: id, recordType: recordType, uniqueId: uniqueId, albumMessageId: albumMessageId, attachmentType: attachmentType, blurHash: blurHash, byteCount: byteCount, caption: caption, contentType: contentType, encryptionKey: encryptionKey, serverId: serverId, sourceFilename: sourceFilename, cachedAudioDurationSeconds: cachedAudioDurationSeconds, cachedImageHeight: cachedImageHeight, cachedImageWidth: cachedImageWidth, creationTimestamp: creationTimestamp, digest: digest, isUploaded: isUploaded, isValidImageCached: isValidImageCached, isValidVideoCached: isValidVideoCached, lazyRestoreFragmentId: lazyRestoreFragmentId, localRelativeFilePath: localRelativeFilePath, mediaSize: mediaSize, pointerType: pointerType, state: state, uploadTimestamp: uploadTimestamp, cdnKey: cdnKey, cdnNumber: cdnNumber, isAnimatedCached: isAnimatedCached, attachmentSchemaVersion: attachmentSchemaVersion)
    }
}
