import React, { Component, Fragment } from 'react';
import { observer, inject } from "mobx-react";
import Header from "../../components/header";
import "../../scss/shop.scss";
@inject('shop')
@observer
class Shop extends Component {
    state = {
    }
    render() {
        return (
            <>
                <Header back={true} title="购物车"></Header>
                <section>
                    <div className="parent">
                        <div className="cover">

                            {
                                // this.props.仓库名字.数组
                                this.props.shop.Shop && this.props.shop.Shop.map((item, index) => {
                                    return (
                                        <dl key={item.id}>
                                            <dt>
                                                <img src={item.img} alt="" />
                                            </dt>
                                            <dd>
                                                <h3>{item.title}</h3>
                                                <div className="money">
                                                    <span className="money_price">${item.price}</span>
                                                    <div>
                                                        <span className="add" onClick={() => { this.handleAdd(item.id, item.count, item.price) }}>+</span>
                                                        <em className="money_count">{item.count}</em>
                                                        <span className="reduce" onClick={() => { this.handleReduce(item.id) }}>-</span>
                                                    </div>
                                                </div>
                                            </dd>
                                        </dl>
                                    )
                                })
                            }
                        </div>
                    </div>
                </section>
                <div className="end">
                    <div className="end_inner">
                        {
                            this.props.shop.Shop && this.props.shop.Shop.map((item1, index1) => (
                                <Fragment key={index1}>
                                    <span>已选<em>{item1.count}</em>件</span>
                                    <div className="total">
                                        <strong>
                                            {this.total(item1.count, item1.price)}元
                                         </strong>
                                    </div>
                                    <div className="pay" onClick={() => { this.handleSay() }}>{item1.info}</div>
                                </Fragment>
                            ))
                        }
                    </div>
                </div>
            </>
        );
    }
    //数据请求
    componentDidMount() {
        this.props.shop.getShop("/api/shop");
    }
    //点击加号
    handleAdd() {
        let data = this.props.shop.Shop
        data.map(items => items.id && items.count++);
    }
    //点击减号
    handleReduce(id) {
        let data = this.props.shop.Shop
        data.map(items => (items.id === id && items.count > 0) && items.count--);
    }
    //管理员按钮
    handleSay() {
        let { history } = this.props;
        history.push('/dedication')
    }
    // 总价
    total(count, price) {
        let total = 0;
        total += count * price;
        return total;
    }
}
export default Shop;