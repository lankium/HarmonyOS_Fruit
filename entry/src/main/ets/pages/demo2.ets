@Entry
@Component
struct Demo2 {
  @State message: string = 'demo2';

  onBackPress(): boolean | void {
    console.log('返回上一个页面')
  }

  aboutToAppear(): void {
    console.log('页面2组件加载')
  }

  aboutToDisappear(): void {
    console.log('页面2组件卸载')
  }

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Demo2HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}