import React, { Component, Fragment } from 'react';
import Header from "../../components/header";
import "../../scss/prayer.scss";
import axios from "axios"
class Prayer extends Component {
    constructor(props) {
        super(props);
        this.state = {
            Prayer: []
        };
    }
    render() {
        let { Prayer } = this.state;
        return (
            <>
                <Header back={true} title="祷告箱"></Header>
                <div className="big_prayer">
                    <div className="con_prayer">
                        {
                            Prayer && Prayer.map((item, index) => (
                                <Fragment key={index}>
                                    <h2>{item.tops}</h2>
                                </Fragment>
                            ))
                        }
                    </div>
                    <div className="inner_prayer">
                        <div className="top_prayer">
                            {
                                Prayer && Prayer.map((item1, index1) => (
                                    <Fragment key={index1}>
                                        <img src={item1.pics} alt="" />
                                        <span>{item1.userName}</span>
                                        <p className="edits">{item1.edits}</p>
                                        <p>
                                            {item1.text}
                                        </p>
                                    </Fragment>
                                ))
                            }
                        </div>
                        <div className="right_prayer">{new Date().toLocaleString()}</div>
                    </div>
                </div>
                <div className="all_prayer">全部祷告</div>
                <div className="big_inner_prayer">
                    <div className="inner_inner_prayer">
                        <div className="top_inner_prayer">
                            {
                                Prayer && Prayer.map((item2, index2) => (
                                    <Fragment key={index2}>
                                        <img src={item2.spic} alt=""/>
                                        <span>{item2.xm}</span>
                                        <p>
                                            {item2.say}
                                        </p>
                                    </Fragment>
                                ))
                            }
                        </div>
                        <div className="right_inner_prayer">{new Date().toLocaleString()}</div>
                    </div>
                </div>
            </>
        );
    }
    componentDidMount() {
        axios.get("/api/prayer").then(({ data }) => {
            this.setState({
                Prayer: data.prayer 
            })
        })
    }
}
export default Prayer;