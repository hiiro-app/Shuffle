///
/// MIT License
///
/// Copyright (c) 2020 Mac Gallagher
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in all
/// copies or substantial portions of the Software.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
/// SOFTWARE.
///

@testable import Shuffle_iOS
import UIKit

class MockCardTransformProvider: CardTransformProvidable {

  var testOverlayPercentage = [SwipeDirection: CGFloat]()
  func overlayPercentage(for card: SwipeCard, direction: SwipeDirection) -> CGFloat {
    return testOverlayPercentage[direction] ?? 0
  }

  var testRotationAngle: CGFloat = 0
  func rotationAngle(for card: SwipeCard) -> CGFloat {
    return testRotationAngle
  }

  var testRotationDirectionY: CGFloat = 0
  func rotationDirectionY(for card: SwipeCard) -> CGFloat {
    return testRotationDirectionY
  }

  var testTranform: CGAffineTransform = .identity
  func transform(for card: SwipeCard) -> CGAffineTransform {
    return testTranform
  }
}
