import axios from "axios"
function request(url, options = {}) {
    const { method, data } = options;
    return axios({
        url: "/api" + url,
        method: method || "GET",
        params: method === "GET" ? data : {},
        data: method !== "GET" ? data : {},
        headers:{
            authorization:sessionStorage.getItem("token")
         }
    
    })

}
export default request