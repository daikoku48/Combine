//
//  SampleSubView.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct SampleSubView: View {
    @ObservedObject var viewModel: SampleViewModel
    
    init(viewModel: SampleViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(viewModel.star)
            Button("★がランダムに増える") {
                viewModel.changeStarLengh(Int.random(in: 1 ..< 20))
            }
        }
    }
}

struct SampleSubView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSubView(viewModel: SampleViewModel(model: SampleModel()))
    }
}
