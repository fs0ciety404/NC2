import SwiftUI

struct dayCountDownView : View {
  // Create a state variable to store the current date.
  @State var nowDate: Date = Date()
  // Create a constant variable to store the reference date.
  let referenceDate: Date = Date()

  // Create a timer that updates the `nowDate` variable every second.
  var timer: Timer {
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
      self.nowDate = Date()
    }
  }

  var body: some View {
    // Display the countdown string in a text view.
    Text(countDownString(from: referenceDate, until: nowDate))
      // Start the timer when the view appears.
      .onAppear(perform: {
        let _ = self.timer
      })
  }

  // Calculate the countdown string from the reference date until the current date.
  func countDownString(from date: Date, until nowDate: Date) -> String {
    // Create a calendar to perform date calculations.
    let calendar = Calendar(identifier: .gregorian)
    // Calculate the time components (days, hours, minutes, seconds) between the two dates.
    let components = calendar
      .dateComponents([.day, .hour, .minute, .second]
                      ,from: nowDate,
                      to: date)
    // Format the countdown string and return it.
    return String(format: "%02dd",
                  components.day ?? 00)
  }
}
