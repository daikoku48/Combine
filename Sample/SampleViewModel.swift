//
//  SampleViewModel.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import Foundation
import Combine

@MainActor
class SampleViewModel: ObservableObject{
    @Published var count: Int
    @Published var star: String
    @Published var circle: String
    @Published var delta: String
    
    private var model: SampleModel
    
    init(model: SampleModel){
        self.model = model
        self.count = model.count
        self.star = model.star
        self.circle = model.circle
        self.delta = model.delta
        
        self.model.$count.assign(to: &$count)
        self.model.$star.assign(to: &$star)
        self.model.$circle.assign(to: &$circle)
        self.model.$delta.assign(to: &$delta)
    }
    
    func changeStarLengh(_ len: Int){
        model.changeStarLength(len)
    }
    func changeCircleLengh(_ len: Int){
        model.changeCircleLength(len)
    }
    func changeDeltaLengh(_len: Int){
        model.changeDeltaLengh(_len)
    }
}
