//
//  MoodView.swift
//  ComposableNavigation
//
//  Created by Riccardo Cipolleschi on 06/11/21.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    MoodSection()
                    GoalsSection()
                    gratitudeSection
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Today")
        }
    }
    
    private struct MoodSection: View {
        var body: some View {
            Section(
                content: {
                    Text("You haven't selected a mood yet")
                },
                header: {
                    JournalHeaderView(
                        headerTitle: "Mood",
                        headerImage: "chevron.right",
                        destination: { MoodView() }
                    )
                }
            )
        }
    }
    
    private func GoalsSection() -> some View {
        Section(
            content: {
                Text("You haven't add a goal yet")
            },
            header: {
                JournalHeaderView(
                    headerTitle: "Goals",
                    headerImage: "plus",
                    destination: { GoalsView() }
                )
            }
        )
    }
    
    private var gratitudeSection: some View {
        Section(
            content: {
                Text("You haven't added a gratitude yet")
            },
            header: {
                JournalHeaderView(
                    headerTitle: "Gratitude",
                    headerImage: "plus",
                    destination: { Text("Gratitude") }
                )
            }
        )
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
