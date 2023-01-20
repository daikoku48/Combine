//
//  SampleSubSubView.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct SampleSubSubView: View {
    @ObservedObject var viewModel: SampleViewModel
    
    init(viewModel: SampleViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(viewModel.circle)
            Button("●がランダムに増える") {
                viewModel.changeCircleLengh(Int.random(in: 5 ..< 20))
                
            }
        }
    }
}

struct SampleSubSubView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSubSubView(viewModel: SampleViewModel(model: SampleModel()))
    }
}
