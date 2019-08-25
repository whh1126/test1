import { observable, action} from "mobx";
import axios from "axios";
class Message {
    @observable Message= [];
    @action.bound
   message(url) {
        axios.get(url).then((res) => {
            console.log(res.data.message)
            this.Message = res.data.message;
            console.log(this.Message)
        })
    }
}
let message = new Message()
export default message;
