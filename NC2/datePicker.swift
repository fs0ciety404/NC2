import SwiftUI

struct datePicker: View {
  @State var selectedDate = Date()
  @State var isCounterVisible = false

  var body: some View {
    VStack {
      DatePicker("", selection: $selectedDate, displayedComponents: .date)
        .datePickerStyle(.wheel)
        .padding(.trailing, 30)

      Button(action: {
        self.isCounterVisible = false
        // Save the selected date to another view
      }) {
        Text("Save")
      }
      .sheet(isPresented: $isCounterVisible) {
        buttonsView(selectedDate: self.selectedDate)
      }
    }
  }
}

struct datePicker_Previews: PreviewProvider {
  static var previews: some View {
    datePicker()
  }
}
