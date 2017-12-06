// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: chat.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct SendMessageRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = "SendMessageRequest"

  var accessToken: String = String()

  var from: String = String()

  var to: String = String()

  var text: String = String()

  var topic: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accessToken)
      case 2: try decoder.decodeSingularStringField(value: &self.from)
      case 3: try decoder.decodeSingularStringField(value: &self.to)
      case 4: try decoder.decodeSingularStringField(value: &self.text)
      case 5: try decoder.decodeSingularStringField(value: &self.topic)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accessToken.isEmpty {
      try visitor.visitSingularStringField(value: self.accessToken, fieldNumber: 1)
    }
    if !self.from.isEmpty {
      try visitor.visitSingularStringField(value: self.from, fieldNumber: 2)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 3)
    }
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 4)
    }
    if !self.topic.isEmpty {
      try visitor.visitSingularStringField(value: self.topic, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct SendMessageResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "SendMessageResponse"

  var errCode: Int32 = 0

  var errMsg: String = String()

  var from: String = String()

  var text: String = String()

  var topic: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Error: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case errOk // = 0
    case errSys // = -1
    case UNRECOGNIZED(Int)

    init() {
      self = .errOk
    }

    init?(rawValue: Int) {
      switch rawValue {
      case -1: self = .errSys
      case 0: self = .errOk
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .errSys: return -1
      case .errOk: return 0
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.errCode)
      case 2: try decoder.decodeSingularStringField(value: &self.errMsg)
      case 3: try decoder.decodeSingularStringField(value: &self.from)
      case 4: try decoder.decodeSingularStringField(value: &self.text)
      case 5: try decoder.decodeSingularStringField(value: &self.topic)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.errCode != 0 {
      try visitor.visitSingularInt32Field(value: self.errCode, fieldNumber: 1)
    }
    if !self.errMsg.isEmpty {
      try visitor.visitSingularStringField(value: self.errMsg, fieldNumber: 2)
    }
    if !self.from.isEmpty {
      try visitor.visitSingularStringField(value: self.from, fieldNumber: 3)
    }
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 4)
    }
    if !self.topic.isEmpty {
      try visitor.visitSingularStringField(value: self.topic, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension SendMessageRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "access_token"),
    2: .same(proto: "from"),
    3: .same(proto: "to"),
    4: .same(proto: "text"),
    5: .same(proto: "topic"),
  ]

  func _protobuf_generated_isEqualTo(other: SendMessageRequest) -> Bool {
    if self.accessToken != other.accessToken {return false}
    if self.from != other.from {return false}
    if self.to != other.to {return false}
    if self.text != other.text {return false}
    if self.topic != other.topic {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension SendMessageResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "err_code"),
    2: .standard(proto: "err_msg"),
    3: .same(proto: "from"),
    4: .same(proto: "text"),
    5: .same(proto: "topic"),
  ]

  func _protobuf_generated_isEqualTo(other: SendMessageResponse) -> Bool {
    if self.errCode != other.errCode {return false}
    if self.errMsg != other.errMsg {return false}
    if self.from != other.from {return false}
    if self.text != other.text {return false}
    if self.topic != other.topic {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension SendMessageResponse.Error: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    -1: .same(proto: "ERR_SYS"),
    0: .same(proto: "ERR_OK"),
  ]
}
