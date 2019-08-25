import { observable, action } from "mobx";
import axios from "axios";
class Pic {
    @observable Pic = [];
    @action.bound
    getPic(url) {
        axios.get(url).then((res) => {
            console.log(res.data.pic)
            this.Pic = res.data.pic;
            console.log(this.Pic)
        })
    }
}
let pic = new Pic()
export default pic;