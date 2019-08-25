import React, { Component } from 'react'
import Axios from 'axios';
import { observer, inject } from "mobx-react";
@inject('info')
@observer

 class Page extends Component {

    render() {
        console.log(this.props.info.Old,908)
        return (
            <div>
                {
                    this.props.info.Old.map((item,index)=>(
                        <dl key={index}>
                            <dt>
                                <img src={item.img} alt="" />
                            </dt>
                            <dd>
                                <span>{item.name}</span>
                                <p>{item.title}</p>
                            </dd>
                        </dl>
                    ))
                }
             
            </div>
        )
    }
    componentDidMount(){
        // Axios.get('/api/old').then(({data})=>{
        //     this.setState({
        //         old: data.old
        //     })
        //     console.log(data.old)
        // })
    }
}
export default Page
