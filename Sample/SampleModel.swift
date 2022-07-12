//
//  SampleModel.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import Foundation

final class SampleModel {
    @Published var count: Int = 0
    @Published var star: String = "★"
    @Published var circle: String = "●"
    @Published var delta: String = "▲"
    
    func changeStarLength(_ len: Int) {
        self.star = [String](repeating: "★", count: len).joined()
    }
    func changeCircleLength(_ len: Int){
        self.circle = [String](repeating: "●", count: len).joined()
    }
    func changeDeltaLengh (_ len: Int){
        self.delta = [String](repeating: "▲", count: len).joined()
    }
}
