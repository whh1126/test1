import React from 'react';
import {Switch,Route} from "react-router-dom"
const MyRouter=(props)=>{
   return <Switch>
       {props.children}
       {props.route.map(item=>{
           return <Route 
           key={item.path}
           path={item.path}
           render={props=>{
               return <item.component {...props} route={item.children} />
           }}
           />
       })}
       
   </Switch>

}

export default MyRouter;