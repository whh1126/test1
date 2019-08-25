import React, { Component } from 'react';
import "../../scss/pic.scss";
import Header from "../../components/header";
import axios from "axios"
class Pic extends Component {
    constructor(props) {
        super(props);
        this.state = {
            pic: []
        };
    }
    render() {
        let { pic } = this.state;
        return (
            <>
                <Header back={true} title="图片详情"></Header>
                {
                    pic && pic.map((item, index) => (
                        <img key={index} className="pic" src={item.pic} alt="" />

                    ))
                }
            </>

        );
    }
    componentDidMount() {
        axios.get("/api/pic").then(({ data }) => {
            this.setState({
                pic: data.pic

            })

        })
    }
}

export default Pic;