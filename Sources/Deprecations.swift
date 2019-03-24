//
//  The MIT License (MIT)
//
//  Copyright (c) 2016 Srdan Rasic (@srdanrasic)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

@available(*, deprecated, renamed: "Never")
public typealias NoError = Never

extension SignalProtocol {

    @available(*, deprecated, renamed: "init(just:)")
    public static func just(_ element: Element) -> Signal<Element, Error> {
        return Signal(just: element)
    }

    @available(*, deprecated, renamed: "init(sequence:)")
    public static func sequence<S: Sequence>(_ sequence: S) -> Signal<Element, Error> where S.Iterator.Element == Element {
        return Signal(sequence: sequence)
    }

    @available(*, deprecated, renamed: "init(sequence:interval:queue:)")
    public static func interval(_ interval: Double, queue: DispatchQueue = DispatchQueue(label: "com.reactivekit.interval")) -> Signal<Int, Error> {
        return Signal(sequence: 0..., interval: interval, queue: queue)
    }

    @available(*, deprecated, renamed: "init(just:after:)")
    public static func timer(element: Element, time: Double, queue: DispatchQueue = DispatchQueue(label: "com.reactivekit.timer")) -> Signal<Element, Error> {
        return Signal(just: element, after: time, queue: queue)
    }
}