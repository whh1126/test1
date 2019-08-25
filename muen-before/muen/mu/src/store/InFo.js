import { observable, action } from "mobx";
import axios from "axios";
class Info {
    @observable Info = [];
    @observable Old=[];
    @action.bound
    getInfo(url) {
        axios.get(url).then((res) => {
            console.log(res.data.board)
            this.Info = res.data.board;
            console.log(this.Info)
        })
    };
    getOld(src){
        axios.get(src).then((res)=>{
            console.log(res.data.old)
            this.Old = res.data.old;
            console.log(this.Old)
        })
    }
    getPage(page){
        axios.post("/api/page", { page }).then(({ data }) => {
            this.Old=data;
        })
    }
    scrollEnd(){
      
       
    }
    
}
let info = new Info()
export default info;


