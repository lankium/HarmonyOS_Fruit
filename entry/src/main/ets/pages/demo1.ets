import router from '@ohos.router';

@Entry
@Component
struct Demo1 {
  @State message: string = 'demo1';
  @State isShowChild: boolean = true

  onPageShow(): void {
    console.log('页面1显示了')
  }

  onPageHide(): void {
    console.log('页面1隐藏了')
  }

  // onBackPress(): boolean | void {
  //   console.log('返回上一个页面')
  // }
  aboutToAppear(): void {
    console.log('页面1组件加载')
  }

  aboutToDisappear(): void {
    console.log('页面1组件卸载')
  }

  build() {
    Column() {
      Row() {
        Text(this.message)
          .id('Demo1HelloWorld')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: '__container__', align: VerticalAlign.Center },
            middle: { anchor: '__container__', align: HorizontalAlign.Center }
          })
      }

      Row() {
        Button('点击跳转页面2')
          .onClick(() => {
            router.pushUrl({ url: 'pages/demo2' })
          })
      }

      Row() {
        Button('显示隐藏')
          .onClick(() => {
            this.isShowChild = !this.isShowChild
          })
      }

      Row() {
        if (this.isShowChild) {
          Child()
        }
      }
    }
    .height('100%')
    .width('100%')

  }
}

@Component
struct Child {
  aboutToAppear(): void {
    console.log('子组件加载')
  }

  aboutToDisappear(): void {
    console.log('子组件卸载')
  }

  build() {
    Text('子组件')
      .fontSize(30)
  }
}