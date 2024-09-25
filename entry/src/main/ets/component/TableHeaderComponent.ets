@Component
export default struct TableHeaderComponent {
  build() {
    Row() {
      Column() {
        Text('排名')
          .fontSize(16)
          .fontWeight(400)
          .fontColor('#989A9C')
      }.width('20%')

      Column() {
        Text('种类')
          .fontSize(16)
          .fontWeight(400)
          .fontColor('#989A9C')
      }
      .width('50%')
      .alignItems(HorizontalAlign.Start)
      .padding({
        left: 20
      })

      Column() {
        Text('得票数')
          .fontSize(16)
          .fontWeight(400)
          .fontColor('#989A9C')
      }
      .width('30%')
      .alignItems(HorizontalAlign.Start)
    }
  }
}