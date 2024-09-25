import TitleComponent from '../component/TitleComponent'
import TableHeaderComponent from '../component/TableHeaderComponent'
import { FruitDataModel } from '../viewModel/FruitDataModel'
import ItemComponent from '../component/ItemComponent'

@Entry
@Component
struct Index {
  @State dataSource: FruitDataModel[] = [
    new FruitDataModel('1', '苹果', '12000'),
    new FruitDataModel('2', '葡萄', '10320'),
    new FruitDataModel('3', '西瓜', '9801'),
    new FruitDataModel('4', '香蕉', '8431'),
    new FruitDataModel('5', '菠萝', '7546'),
    new FruitDataModel('6', '榴莲', '7431'),
    new FruitDataModel('7', '红葡萄', '7187'),
    new FruitDataModel('8', '梨子', '7003'),
    new FruitDataModel('9', '杨桃', '6794'),
    new FruitDataModel('10', '番石榴', '6721')
  ]

  build() {
    Column() {
      // 标题组件
      TitleComponent({ title: '水果排行榜', dataSource: this.dataSource })
      // 列表头部
      TableHeaderComponent().margin({ top: 20, bottom: 15 })
      // 列表
      this.CreateArrayItemComponent()
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#eee')
  }

  @Builder
  CreateArrayItemComponent() {
    Column() {
      List() {
        ForEach(this.dataSource, (item: FruitDataModel, index: number) => {
          ListItem() {
            ItemComponent({
              index: index + 1,
              name: item.name,
              vote: item.vote
            })
          }.padding({
            top: 10,
            bottom: 10
          })
        })
      }.divider({ strokeWidth: 1 })
    }
    .backgroundColor('white')
    .borderRadius(20)
  }
}

