@Entry
@Component
struct Page1 {
  @State message: string = 'Page1';
  @State parentSelectedDate: Date = new Date('2020-01-01')

  build() {
    Column() {
      Text(this.message)
        .id('Page1HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)


      Child2({
        selectedDate: this.parentSelectedDate
      })

      Row() {
        DatePicker({
          start: new Date('2000-1-1'),
          end: new Date('2050-1-1'),
          selected: this.parentSelectedDate
        })
          .onDateChange((val) => {
            this.parentSelectedDate = val
          })
      }
      .position({
        bottom: 0,
      })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct Child {
  @Prop selectedDate: Date = new Date()

  build() {
    Text(this.selectedDate.toString())
      .fontSize(30)
      .onClick(() => {
        this.selectedDate = new Date('2025-1-1')
      })
  }
}

@Component
struct Child2 {
  @Link selectedDate: Date

  build() {
    Text(this.selectedDate.toString())
      .fontSize(30)
      .onClick(() => {
        this.selectedDate = new Date('2025-01-01')
      })
  }
}