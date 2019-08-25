import React, { Component, Fragment } from 'react';
import "../../scss/giftdetail.scss";
import { observer, inject } from "mobx-react";
import { withRouter } from "react-router-dom"
import "../../mock";
import { NavLink } from "react-router-dom"
@inject('gift')
@observer
class Details extends Component {
    state = {
        giftList: [],
        ind: 0
    }
    render() {
        let { ind } = this.state;
        let { history } = this.props;
        return (
            <div className="gitdetail">
                {
                    this.props.gift.giftDetail && this.props.gift.giftDetail.map((item, index) => (
                        <Fragment key={index}>
                            <div className="image" key={index}>
                                <img src={item.img}
                                    alt="" />
                                <span className="icon iconfont icon-fanhui" onClick={this.handleBack.bind(this, history)}></span>
                            </div>
                            <section>
                                <div className="price">
                                    <strong className="strong"><b>￥</b>{item.price}</strong>
                                    <p>{item.title}</p>
                                    <ul className="uls">
                                        {
                                            item.arr.map((item1, index1) => (

                                                <li key={index1}>
                                                    <span className="iconfont icon_gift">&#xeb9c;</span>
                                                    <b className={ind === index1 ? "actives" : ""} onClick={this.handleWant.bind(this, index1)}>{item1.text}</b>
                                                </li>
                                            ))
                                        }
                                    </ul>
                                </div>
                                <div className="address">
                                    {
                                        item.add.map((item2, index2) => (
                                            <Fragment key={index2}>
                                                <span key={index2}>{item2.deliver}</span>
                                                <div className="one">
                                                    <strong className="strong">{item2.address}</strong>
                                                </div>
                                                <div className="two">
                                                    <i>{item2.courier}</i>
                                                </div>
                                            </Fragment>
                                        ))
                                    }
                                </div>
                            </section>
                            <div className="footer">

                                <NavLink to="/shop">
                                   
                                </NavLink>
                                <p className="shopcar add" onClick={() => {
                                    console.log(111);
                                    history.push(`/shop/${item.id}`);
                                }}>{item.shop}</p>

                            </div>
                        </Fragment>
                    ))
                }
            </div>
        );
    }
    //点击返回上一页
    handleBack(history) {
        history.go(-1)
    }
    //跳转购物车页面
    handleAdd(history, id) {
        // history.push('/shop', {
        //         id: id
        // });
        // console.log(id);

    }
    //点击图标发送数据
    handleWant(index1) {
        this.setState({
            ind: index1
        })
    }
    componentDidMount() {
        this.props.gift.details('/api/details')
    }
}
export default withRouter(Details);