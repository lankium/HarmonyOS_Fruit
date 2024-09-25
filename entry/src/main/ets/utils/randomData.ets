import { FruitDataModel } from '../viewModel/FruitDataModel'

export const randomData = () => {
  const fruit = ['苹果', '葡萄', '西瓜', '香蕉', '菠萝', '榴莲', '红葡萄', '梨子', '杨桃', '番石榴']
  let res: FruitDataModel[] = []
  for (let index = 0; index < 10; index++) {
    let random = ~~(Math.random() * fruit.length)
    const name = fruit[random]
    const vote = ((random + 1) * 1000).toString()
    fruit.splice(random, 1)
    const item = new FruitDataModel((index + 1).toString(), name, vote)
    res.push(item)
  }

  res.sort((a, b) => Number(b.vote) - Number(a.vote))
  return res
}