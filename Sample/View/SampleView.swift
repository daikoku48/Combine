//
//  SampleView.swift
//  Sample
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct SampleView: View {
    @StateObject var viewModel: SampleViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(viewModel.count)")
            Button("数字が増える") {
                viewModel.count += 1
            }
            SampleSubView(viewModel: viewModel)
            SampleSubSubView(viewModel: viewModel)
            SampleSubSubSubView(viewModel: viewModel)
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView(viewModel: SampleViewModel(model: SampleModel()))
    }
}


