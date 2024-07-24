//
//  ContentView.swift
//  iOS16PageTabViewStyleBug
//
//  Created by Takuya Aso on 2024/07/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    @State private var selection = 0

    var body: some View {
        VStack {
            if viewModel.contents.isEmpty {
                EmptyView()
            } else {
                TabView(selection: $selection) {
                    ForEach(viewModel.contents.indices, id: \.self) { index in
                        Text(viewModel.contents[index].colorName)
                            .font(.title)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(viewModel.contents[index].color)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .ignoresSafeArea(.all)
            }
        }
        .overlay(alignment: .center) {
            if viewModel.isLoading {
                ProgressView()
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    ContentView()
}
