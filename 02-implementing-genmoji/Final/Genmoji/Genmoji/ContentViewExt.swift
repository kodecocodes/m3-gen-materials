/// Copyright (c) 2025 Kodeco Inc.
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

extension ContentView {
  // 1. Serialize an NSAttributedString into RTFD data
  func serializeText(_ text: NSAttributedString?) -> Data? {
    guard let text = text else { return nil }
    do {
      let rtfData = try text.data(
        from: NSRange(location: 0, length: text.length),
        documentAttributes: [.documentType: NSAttributedString.DocumentType.rtfd])
      return rtfData
    } catch {
      print("Error serializing text: \(error)")
      return nil
    }
  }

  // 2. Deserialize RTFD data into an NSAttributedString
  func deserializeText(_ data: Data) -> NSAttributedString? {
    do {
      let attributedString = try NSAttributedString(data: data, documentAttributes: nil)
      return attributedString
    } catch {
      print("Error deserializing text: \(error)")
      return nil
    }
  }
}

extension CustomContentView {
  // 1. Serialize an NSAttributedString into RTFD data
  func serializeText(_ text: NSAttributedString?) -> Data? {
    guard let text = text else { return nil }
    do {
      let rtfData = try text.data(
        from: NSRange(location: 0, length: text.length),
        documentAttributes: [.documentType: NSAttributedString.DocumentType.rtfd])
      return rtfData
    } catch {
      print("Error serializing text: \(error)")
      return nil
    }
  }

  // 2. Deserialize RTFD data into an NSAttributedString
  func deserializeText(_ data: Data) -> NSAttributedString? {
    do {
      let attributedString = try NSAttributedString(data: data, documentAttributes: nil)
      return attributedString
    } catch {
      print("Error deserializing text: \(error)")
      return nil
    }
  }
}
