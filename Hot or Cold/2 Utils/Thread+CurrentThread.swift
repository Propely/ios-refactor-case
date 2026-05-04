//
//  Thread+CurrentThread.swift
//  Hot or Cold
//
//  Created by Sindre L. Øyen on 04/05/2026.
//

import Foundation

extension Thread {
    /// A convenience method to print out the current thread from an async method.
    /// This is a workaround for compiler error:
    /// Class property 'current' is unavailable from asynchronous contexts; Thread.current cannot be used from async contexts.
    /// See: https://github.com/swiftlang/swift-corelibs-foundation/issues/5139
    public nonisolated static var currentThread: Thread {
        return Thread.current
    }
    
    public nonisolated static func printCurrentThreadInfo(prefix: String = "") {
        let thread = Thread.current
        let isMain = thread.isMainThread ? "Main Thread" : "Background Thread"
        print("\(prefix) | \(isMain) | \(Date())")
    }
}
