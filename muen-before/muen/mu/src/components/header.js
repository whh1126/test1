import React, { Component } from 'react';
import "../static/font/iconfont.css"
import "../scss/header.scss"
import {Link} from "react-router-dom"
class Header extends Component {
    render() {
        let {title,btn,flag,done}=this.props;
        return (
            
            <header className="header">
               
                <span onClick={()=>{this.Click()}} className={flag?"iconfont ":"iconfont  icon-icon_left"}></span>
                <span>{title}</span>
                {
                    btn ? <span className={done ? "btn messageBtn" :"btn"} onClick={()=>{this.jumpTo(btn)}}>{btn}</span> : <span></span>
                }
            </header>
        );
    }
    Click=()=>{
        window.history.go(-1)
    }
    jumpTo(btn){
        switch(btn){
            case '我的':
             this.props.prop.history.push('/myself')
                break;
            case '留言':
                 this.props.prop.history.push('/newMessage')
                break;
            //  case '发起':
            //  //    this.$route.push('publish')
            //  this.props.history.push('/publish')
            //     break;
         }
    }
}

export default Header;