import { observable, action } from "mobx";
import axios from "axios";
class GiftDetails{
    @observable giftDetail=[];
    @action.bound
    details(url){
        axios.get(url).then((res)=>{
            console.log(res.data.details)
            this.giftDetail = res.data.details;
            console.log(this.giftDetail)
        })
    }
}
let gift = new GiftDetails()
export default gift;
