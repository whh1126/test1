import React, { Component } from 'react';
import Header from "../../components/header";
// import { Provider } from "mobx-react";
// import store from "../../store/index.js";
class Home extends Component {
    render() {
        return (
            // <Provider {...store}>
            <>
          
                <Header />
                首页
                </>
           
            // </Provider>
        );
    }
}

export default Home;