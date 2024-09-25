@Component
export default struct ItemComponent {
  @State index: number = 0
  @State name: string = ''
  @State vote: string = ''

  build() {
    Row() {
      Column() {
        if (this.index < 4) {
          Text(this.index.toString())
            .fontSize(16)
            .width(30)
            .height(30)
            .backgroundColor('blue')
            .borderRadius('50%')
            .textAlign(TextAlign.Center)
            .fontColor('#fff')
        } else {
          Text(this.index.toString())
            .fontSize(16)
            .width(30)
            .height(30)
            .textAlign(TextAlign.Center)
        }
      }.width('20%')


      Column() {
        Text(this.name)
      }
      .width('50%')
      .alignItems(HorizontalAlign.Start)
      .padding({
        left: 20
      })

      Column() {
        Text(this.vote)
      }
      .width('30%')
      .alignItems(HorizontalAlign.Start)
    }
  }
}