export class FruitDataModel {
  public name: string
  public vote: string
  public id: string

  constructor(id: string, name: string, vote: string) {
    this.name = name
    this.id = id
    this.vote = vote
  }
}