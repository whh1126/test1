import React, { Component } from 'react';
import Header from "../../components/header";
import "../../scss/gift.scss"
import { observer, inject } from "mobx-react";
@inject('giftts')
@observer
class Gift extends Component {
    constructor(props) {
        super(props);
        this.state = {
        };
    }
    render() {
        let { history } = this.props;

        return (
            <>
                <Header back={true} title="沐恩礼品"></Header>
                <div className="list">
                    {
                        this.props.giftts.giftts && this.props.giftts.giftts.map((item,index)=>{
                            return <dl key={index}>
                                <dt>
                                    <img src={item.pic} alt=""  onClick={()=>{
                                      history.push(`/detail/${item.id}`)
                                    }}/>
                                </dt>
                                <dd>
                                    <h3 >{item.shop_Name}</h3>
                                    <p >{item.content}</p>
                                    <div className="last">
                                        <span>￥{item.price}</span>
                                    </div>
                                </dd>
                            </dl>
                        })
                    }
                </div>
            </>
        );
    }
    componentDidMount() {
        this.props.giftts.gift('/api/gift');
    }
}

export default Gift;