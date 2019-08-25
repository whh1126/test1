import React, { Component, Fragment } from 'react';
import Header from "../../components/header";
import "../../scss/message.scss";
import { observer, inject } from "mobx-react";
@inject('message')
@observer

class Message extends Component {
    state = {
      
    }
    render() {
        console.log(this.props)
        return (
            <>
                <Header prop={this.props} title="留言板" btn="留言" done="123" />
                <div className="big">
                    <div className="con">
                        {
                            this.props.message.Message && this.props.message.Message.map((item,index)=>{
                                return(
                                    <Fragment key={index}>
                                        <h2>{item.top}</h2>
                                    </Fragment>
                                )
                            })
                        }
                    </div>
                    <div className="inner">
                        <div className="top">
                           
                            {
                                this.props.message.Message && this.props.message.Message.map((item1, index1) => (
                                    <Fragment key={index1}>
                                        <img src={item1.imgs} alt="" />
                                        <span>{item1.title}</span>
                                        <p className="edit">{item1.edit}</p>
                                        <p>
                                            {item1.content}
                                        </p>
                                    </Fragment>
                                ))
                            }
                        </div>
                        <div className="right">
                            <span>{new Date().toLocaleString()}</span>
                        </div>
                    </div>
                </div>
                <div className="all">
                    {
                        this.props.message.Message && this.props.message.Message.map((item2, index2) => (
                            <Fragment key={index2}>
                                <div>{item2.all}</div>
                            </Fragment>
                        ))
                    }
                </div>
                <div className="big_inner">
                    <div className="inner_inner">
                        <div className="top_inner">
                            {
                                this.props.message.Message && this.props.message.Message.map((item3, index3) => (
                                    <Fragment key={index3}>
                                        <img src={item3.img} alt="" />
                                        <span>{item3.user}</span>
                                        <p>
                                            {item3.online}
                                        </p>
                                    </Fragment>
                                ))
                            }
                        </div>
                        <div className="right_inner">{new Date().toLocaleString()}</div>
                    </div>
                </div>
            </>
        );
    }
    componentDidMount() {
        this.props.message.message('/api/message');
    }
}
export default Message;