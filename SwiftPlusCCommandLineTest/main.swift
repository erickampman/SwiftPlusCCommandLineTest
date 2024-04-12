//
//  main.swift
//  SwiftPlusCCommandLineTest
//
//  Created by Eric Kampman on 4/12/24.
//

import Foundation
import CUnionPackage

var myUnion = MyUnion()

myUnion.uint32NotInUnion = 12345678  // decimal
myUnion.uint8ArrayNotInUnion.0 = 0
myUnion.uint8ArrayNotInUnion.1 = 1
myUnion.uint8ArrayNotInUnion.2 = 2
myUnion.uint8ArrayNotInUnion.3 = 3
myUnion.uint8ArrayNotInUnion.4 = 4
myUnion.uint8ArrayNotInUnion.5 = 5
myUnion.uint8ArrayNotInUnion.6 = 6
myUnion.uint8ArrayNotInUnion.7 = 7

print("uint32NotInUnion: \(myUnion.uint32NotInUnion)")
print("uint8ArrayNotInUnion: \(myUnion.uint8ArrayNotInUnion)")

myUnion.aUnion.asUInt32.asUInt32 = UInt32(0x0)
myUnion.aUnion.asUInt8.b0 = 0
myUnion.aUnion.asUInt8.b1 = 1
myUnion.aUnion.asUInt8.b2 = 2
myUnion.aUnion.asUInt8.b3 = 3



var uint32HexStr = String(format: "0x%lx",myUnion.aUnion.asUInt32.asUInt32)
print("Memory as UInt32: \(uint32HexStr)")
let shouldBeStr = "0x3020100"
print("Should be equal: \(uint32HexStr == shouldBeStr)")  // note endianness

myUnion.aUnion.asUInt32.asUInt32 = 0x03020100
uint32HexStr = String(format: "0x%lx",myUnion.aUnion.asUInt32.asUInt32)
print("Memory as UInt32: \(uint32HexStr)")
print("Should be equal: \(uint32HexStr == shouldBeStr)")  // note endianness


