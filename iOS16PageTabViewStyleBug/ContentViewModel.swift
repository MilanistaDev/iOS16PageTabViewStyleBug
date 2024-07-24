//
//  ContentViewModel.swift
//  iOS16PageTabViewStyleBug
//
//  Created by Takuya Aso on 2024/07/24.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
    @Published var contents: [Content] = []
    @Published var isLoading = false

    func onAppear() {
        Task {
            isLoading = true
            defer {
                isLoading = false
            }

            do {
                // wait 3s
                try await Task.sleep(nanoseconds: 3_000_000_000)
                contents = sampleContents

            } catch { }
        }
    }
}
