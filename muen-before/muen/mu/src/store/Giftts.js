import { observable, action } from "mobx";
import axios from "axios";
class Giftts {
    @observable giftts = [];
    @action.bound
  gift(url) {
        axios.get(url).then((res) => {
            console.log(res.data.gift)
            this.giftts= res.data.gift;
            console.log(this.giftts)
        })
    }
}
let giftts = new Giftts()
export default giftts;
