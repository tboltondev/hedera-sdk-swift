// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: consensus_update_topic.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///*
/// All fields left null will not be updated.
/// See [ConsensusService.updateTopic()](#proto.ConsensusService)
public struct Proto_ConsensusUpdateTopicTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// UNDOCUMENTED
  public var topicID: Proto_TopicID {
    get {return _topicID ?? Proto_TopicID()}
    set {_topicID = newValue}
  }
  /// Returns true if `topicID` has been explicitly set.
  public var hasTopicID: Bool {return self._topicID != nil}
  /// Clears the value of `topicID`. Subsequent reads from it will return its default value.
  public mutating func clearTopicID() {self._topicID = nil}

  ///*
  /// If set, the new memo to be associated with the topic (UTF-8 encoding max 100 bytes)
  public var memo: SwiftProtobuf.Google_Protobuf_StringValue {
    get {return _memo ?? SwiftProtobuf.Google_Protobuf_StringValue()}
    set {_memo = newValue}
  }
  /// Returns true if `memo` has been explicitly set.
  public var hasMemo: Bool {return self._memo != nil}
  /// Clears the value of `memo`. Subsequent reads from it will return its default value.
  public mutating func clearMemo() {self._memo = nil}

  ///*
  /// Effective consensus timestamp at (and after) which all consensus transactions and queries will fail.
  /// The expirationTime may be no longer than MAX_AUTORENEW_PERIOD (8000001 seconds) from the consensus timestamp of
  /// this transaction.
  /// On topics with no adminKey, extending the expirationTime is the only updateTopic option allowed on the topic.
  /// If unspecified, no change.
  public var expirationTime: Proto_Timestamp {
    get {return _expirationTime ?? Proto_Timestamp()}
    set {_expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  public var hasExpirationTime: Bool {return self._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpirationTime() {self._expirationTime = nil}

  ///*
  /// Access control for update/delete of the topic.
  /// If unspecified, no change.
  /// If empty keyList - the adminKey is cleared.
  public var adminKey: Proto_Key {
    get {return _adminKey ?? Proto_Key()}
    set {_adminKey = newValue}
  }
  /// Returns true if `adminKey` has been explicitly set.
  public var hasAdminKey: Bool {return self._adminKey != nil}
  /// Clears the value of `adminKey`. Subsequent reads from it will return its default value.
  public mutating func clearAdminKey() {self._adminKey = nil}

  ///*
  /// Access control for ConsensusService.submitMessage.
  /// If unspecified, no change.
  /// If empty keyList - the submitKey is cleared.
  public var submitKey: Proto_Key {
    get {return _submitKey ?? Proto_Key()}
    set {_submitKey = newValue}
  }
  /// Returns true if `submitKey` has been explicitly set.
  public var hasSubmitKey: Bool {return self._submitKey != nil}
  /// Clears the value of `submitKey`. Subsequent reads from it will return its default value.
  public mutating func clearSubmitKey() {self._submitKey = nil}

  ///
  /// The amount of time to extend the topic's lifetime automatically at expirationTime if the autoRenewAccount is
  /// configured and has funds (once autoRenew functionality is supported by HAPI).
  /// Limited to between MIN_AUTORENEW_PERIOD (6999999 seconds) and MAX_AUTORENEW_PERIOD (8000001 seconds) by
  /// servers-side configuration (which may change).
  /// If unspecified, no change.
  public var autoRenewPeriod: Proto_Duration {
    get {return _autoRenewPeriod ?? Proto_Duration()}
    set {_autoRenewPeriod = newValue}
  }
  /// Returns true if `autoRenewPeriod` has been explicitly set.
  public var hasAutoRenewPeriod: Bool {return self._autoRenewPeriod != nil}
  /// Clears the value of `autoRenewPeriod`. Subsequent reads from it will return its default value.
  public mutating func clearAutoRenewPeriod() {self._autoRenewPeriod = nil}

  ///*
  /// Optional account to be used at the topic's expirationTime to extend the life of the topic.
  /// Once autoRenew functionality is supported by HAPI, the topic lifetime will be extended up to a maximum of the
  /// autoRenewPeriod or however long the topic can be extended using all funds on the account (whichever is the
  /// smaller duration/amount).
  /// If specified as the default value (0.0.0), the autoRenewAccount will be removed.
  /// If unspecified, no change.
  public var autoRenewAccount: Proto_AccountID {
    get {return _autoRenewAccount ?? Proto_AccountID()}
    set {_autoRenewAccount = newValue}
  }
  /// Returns true if `autoRenewAccount` has been explicitly set.
  public var hasAutoRenewAccount: Bool {return self._autoRenewAccount != nil}
  /// Clears the value of `autoRenewAccount`. Subsequent reads from it will return its default value.
  public mutating func clearAutoRenewAccount() {self._autoRenewAccount = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _topicID: Proto_TopicID? = nil
  fileprivate var _memo: SwiftProtobuf.Google_Protobuf_StringValue? = nil
  fileprivate var _expirationTime: Proto_Timestamp? = nil
  fileprivate var _adminKey: Proto_Key? = nil
  fileprivate var _submitKey: Proto_Key? = nil
  fileprivate var _autoRenewPeriod: Proto_Duration? = nil
  fileprivate var _autoRenewAccount: Proto_AccountID? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Proto_ConsensusUpdateTopicTransactionBody: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ConsensusUpdateTopicTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConsensusUpdateTopicTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "topicID"),
    2: .same(proto: "memo"),
    4: .same(proto: "expirationTime"),
    6: .same(proto: "adminKey"),
    7: .same(proto: "submitKey"),
    8: .same(proto: "autoRenewPeriod"),
    9: .same(proto: "autoRenewAccount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._topicID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._memo) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._expirationTime) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._adminKey) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._submitKey) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._autoRenewPeriod) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._autoRenewAccount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._topicID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._memo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._expirationTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._adminKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._submitKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._autoRenewPeriod {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try { if let v = self._autoRenewAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ConsensusUpdateTopicTransactionBody, rhs: Proto_ConsensusUpdateTopicTransactionBody) -> Bool {
    if lhs._topicID != rhs._topicID {return false}
    if lhs._memo != rhs._memo {return false}
    if lhs._expirationTime != rhs._expirationTime {return false}
    if lhs._adminKey != rhs._adminKey {return false}
    if lhs._submitKey != rhs._submitKey {return false}
    if lhs._autoRenewPeriod != rhs._autoRenewPeriod {return false}
    if lhs._autoRenewAccount != rhs._autoRenewAccount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
