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
    private var cancellables = Set<AnyCancellable>()
    
    init(model: SampleModel){
        self.model = model
        self.count = model.count
        self.star = model.star
        self.circle = model.circle
        self.delta = model.delta
        
        self.model.$count
            .sink(receiveValue: { count in
                self.count = count
            })
            .store(in: &cancellables)
        self.model.$star
            .sink(receiveValue: {star in
                self.star = star
            })
            .store(in: &cancellables)
        self.model.$circle
            .sink(receiveValue: {circle in
                self.circle = circle
            })
            .store(in: &cancellables)
        self.model.$delta
            .sink(receiveValue: {delta in
                self.delta = delta
            })
            .store(in: &cancellables)
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
