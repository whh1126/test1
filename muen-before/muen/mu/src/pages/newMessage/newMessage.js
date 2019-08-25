import React, { Component } from 'react';
import "../../css/top.css";
class newMessage extends Component {
    constructor(props) {
        super(props);
        this.state = {
            val: "",
            text: '',
            list: []
        };
    }
    render() {
        let { history } = this.props
        const { val, text } = this.state;
        return (
            <>
                <div className="wrap">
                    <header>

                    </header>
                    <section>
                        <div className="top">
                        </div>
                        <div className="two">
                            <p>
                                评论内容: <textarea type="text" name="text" value={text} onChange={this.handleChange.bind(this)}></textarea>
                                <span onClick={this.handleClick.bind(this)}>发布</span>
                            </p>
                        </div>
                        <div className="content" ref="content">
                            {
                                this.state.list.map((item, index) => (
                                    <div key={index}>
                                        <p>{item.text}</p>
                                    </div>
                                ))
                            }
                        </div>
                        <div className="bot">
                            <b onClick={this.handleWatch.bind(this)}>查看留言详情</b>
                            <span >删除留言</span>
                        </div>
                    </section>
                </div>
            </>
        );
    }
    handleChange(e) {
        let target = e.target;
        let name = target.name;
        let val = target.value;
        this.setState({
            [name]: val
        })
    }
    handleClick() {
        let obj = {
            val: this.state.val,
            text: this.state.text
        }
        this.state.list.push(obj);
        this.setState({
            val: "",
            text: ""
        })
    }
    handleWatch() {
        let { history } = this.props
        history.push('/info')
    }
}
export default newMessage;
