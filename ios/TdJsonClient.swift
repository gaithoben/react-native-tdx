//
//  TdJsonClient.swift
//  Tdx
//
//  Created by Bernard Gaitho on 10/30/21.
//  Copyright © 2021 Facebook. All rights reserved.
//


import libtdjson
// https://gist.github.com/nyg/b6a80bf79e72599230c312c69e963e60
func toLong(ptr: UnsafeMutableRawPointer) -> Int {
    // return unsafeBitCast(ptr, to: Int.self)
    return Int(bitPattern: ptr)
}
func toPtr(long: Int) -> UnsafeMutableRawPointer {
    // return unsafeBitCast(long, to: UnsafeMutableRawPointer.self)
    return UnsafeMutableRawPointer(bitPattern: long)!
}

@objc(TdJsonClient)
class TdJsonClient: NSObject {
  private var clientid: Int32 = 0
  
//  @objc
//  func tdCreateClientId() -> Int32 {
//    clientid = libtdjson.td_create_client_id()
//      return clientid
//  }
  
  @objc
   func getClientId(_ callback: RCTResponseSenderBlock) {
     callback([clientid])
   }
  
  
  @objc
    static func requiresMainQueueSetup() -> Bool {
      return false
    }

}
