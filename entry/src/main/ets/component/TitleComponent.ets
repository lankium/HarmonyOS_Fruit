import { FruitDataModel } from '../viewModel/FruitDataModel'
import { randomData } from '../utils/randomData'

@Component
export default struct TitleComponent {
  @Prop title: string = ''
  @Link dataSource: FruitDataModel[]

  build() {
    Row() {
      Column() {
        Image($r('app.media.back'))
          .height(21)
          .width(21)
      }.width('10%')

      Column() {
        Text(this.title)
          .width('100%')
          .fontSize(30)
          .fontWeight(500)
          .textAlign(TextAlign.Start)
          .margin({ left: 30 })
      }.width('80%')

      Column() {
        Image($r('app.media.shuaxin'))
          .height(21)
          .width(21)
          .onClick(() => {
            this.dataSource = randomData()
          })
      }.width('10%')
    }
  }
}