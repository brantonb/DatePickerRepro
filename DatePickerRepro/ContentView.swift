import SwiftUI

struct ContentView: View {
    @State private var startDate = Date.now
    @State private var isDoingSomething = false
    
    var body: some View {
        List {
            NavigationLink {
                ReproView(showValue: false)
            } label: {
                Text("Repro")
            }

            NavigationLink {
                ReproView(showValue: true)
            } label: {
                Text("No Repro")
            }
        }
    }
}
