//
//  SampleSubSubSubView.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct SampleSubSubSubView: View {
    @ObservedObject var viewModel: SampleViewModel
    
    init(viewModel: SampleViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(viewModel.delta)
            Button("▲がランダムに増える") {
                viewModel.changeDeltaLengh(_len: Int.random(in: 1 ..< 30))
                
            }
        }
    }
}

struct SampleSubSubSubView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSubSubSubView(viewModel: SampleViewModel(model: SampleModel()))
    }
}
