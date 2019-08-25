import React, { Component, Fragment } from 'react';
import "../../scss/info.scss";
import Header from "../../components/header";
import Page from "../../components/Page"
import { observer, inject } from "mobx-react";
import 'antd/dist/antd.css';
import { Spin } from 'antd';
import BScroll from "better-scroll";

@inject('info')
@observer
class Info extends Component {
    constructor(props) {
        super(props);
        this.state = {
            infoList: [],
            page: 1,
            flag: false,
            tab:0,
            tabList:['评论','点赞']
        };
    }
    render() {

     
        let { infoList, flag, tab, tabList } = this.state;
        console.log(this.props.info.Old)
        return (
            <>
                <Header title="留言详情"></Header>
                <main>
                    <div className="container">
                        <div className="info">
                            {
                                this.props.info.Info && this.props.info.Info.map((item, index) => {
                                    return (
                                        <Fragment key={index}>
                                            <img src={item.pics} alt="" />
                                            <span>{item.userName}</span>
                                        </Fragment>
                                    )
                                })
                            }
                        </div>
                        <div className="bot">
                            <div className="text">
                                {
                                    this.props.info.Info && this.props.info.Info.map((item1, index1) => {
                                        return (
                                            <Fragment key={index1}>
                                                {
                                                    item1.text
                                                }
                                            </Fragment>
                                        )
                                    })
                                }
                            </div>
                        </div>
                        <div className="today">
                            <p>{new Date().toLocaleString()}</p>
                        </div>
                    </div>
                    <div className="change">
                        <ul>
                          {
                                tabList && tabList.map((item,index)=>(
                                    <li key={index} onClick={this.handleChange.bind(this,index)}>{item}</li>
                                ))
                          }
                        </ul>
                    </div>
                    <nav>
                    </nav>
                    <div className="inner_count">
                        {
                            infoList && infoList.map((items, index) => (
                                <div className="dl_content">
                                    <dl>
                                        <dt>
                                            <img src={items.img} alt="" />
                                        </dt>
                                        <dd>
                                            <span>{items.name}</span>
                                            <p>{items.title}</p>
                                        </dd>
                                    </dl>
                                </div>
                            ))
                        }
                    </div>
                </main>
                <section>
                    <div className="scroll">
                        <div className="zai">
                            <Page></Page>
                        </div>
                    </div>
                </section>
                <div className="loader" onClick={this.handleLoad.bind(this)}>
                    {
                        this.props.info.Info && this.props.info.Info.map((item3, index3) => {
                            return (
                                <div key={index3} style={{ display: flag ? "block" : "none" }} >
                                    {
                                        flag ? item3.load : "没有更多数据了"
                                    }
                                    <div>
                                        <Spin size="small" />
                                    </div>
                                </div>
                            )
                        })
                    }
                </div>
            </>
        );
    }
    handleChange(index){
        console.log(index)
    }
    componentDidMount() {
        console.log(this.props);
        this.props.info.scrollEnd(this.state.page, this)
        this.props.info.getPage(this.state.page, this);
        this.props.info.getInfo("/api/board");
        this.myscroll = new BScroll('section', {
            probeType: 2,
            click: true
        })
        let that = this;
        this.myscroll.on('scrollEnd', function () {
            console.log(this.y, this.maxScrollY)
            if (this.y <= this.maxScrollY) {
                let page = that.state.page + 1
                that.setState({
                    page,
                    flag: true
                })
                that.props.info.getPage(page, this);
                if (page > 3) {//如果页数小于3 调用初始化函数传页数
                    console.log(page)
                    that.setState({
                        flag: false
                    })
                }
            } else {
                that.setState({
                    flag: false
                })
            }
        })
    }
    handleLoad() {

    }
}
export default Info;