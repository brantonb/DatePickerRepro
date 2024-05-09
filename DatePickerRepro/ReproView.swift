import SwiftUI

struct ReproView: View {
    let showValue: Bool
    
    @State private var startDate = Date.now
    @State private var isShowing = false
    
    var body: some View {
        Form {
            Section {
                if showValue {
                    Text("When the start date is displayed, changes in the DatePicker are reflected immediately here and and in the sheet.")
                } else {
                    Text("When the start date is not displayed, then changes in the DatePicker are only reflected after the sheet has appeared. After that, changes are reflected in the sheet.")
                }
            }
            if showValue {
                LabeledContent("Value", value: startDate, format: .dateTime)
            }
            DatePicker("Start Date", selection: $startDate)
            Button("Show Start Date", systemImage: "play.fill") {
                isShowing = true
            }
        }
        .navigationTitle(showValue ? "No Repro" : "Repro")
        .sheet(isPresented: $isShowing) {
            Text(startDate, format: .dateTime)
        }
    }
}
