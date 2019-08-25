import { observable, action, computed } from "mobx";
import axios from "axios";
class Shop {
    @observable Shop = [];
    @action.bound
    getShop(url) {
        axios.get(url).then((res) => {
            console.log(res.data.shop)
            this.Shop = res.data.shop;
            console.log(this.Shop)
        })
    }
    @computed get Total () {
        let total = 0;
        let data = this.props.shop.Shop;
        data.map((v, i) => {
          return  total += data[i].count * data[i].price;
        })
        console.log(total)
        return total
    }
}
let shop = new Shop()
export default shop;


