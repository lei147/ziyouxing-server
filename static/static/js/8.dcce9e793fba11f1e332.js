webpackJsonp([8],{KnNr:function(t,s){},Vivu:function(t,s,a){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var i={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",[i("mt-header",{staticStyle:{background:"#FFF",color:"#ff9d00"},attrs:{title:"问达人"}},[i("router-link",{attrs:{slot:"left",to:"/"},slot:"left"},[i("mt-button",{attrs:{icon:"back"}})],1),t._v(" "),i("mt-button",{attrs:{slot:"right",icon:"more"},slot:"right"})],1),t._v(" "),i("img",{attrs:{src:a("exK5"),id:"my_img"}}),t._v(" "),i("div",{staticStyle:{height:"4rem"},attrs:{id:"mint-searchbar"}},[i("mt-search",{attrs:{"cancel-text":"取消",placeholder:"搜索"}})],1),t._v(" "),i("hr"),t._v(" "),i("div",{staticClass:"text"},[t._l(t.litem,function(s,e){return i("div",{key:e,staticClass:"divmy"},[i("router-link",{attrs:{to:{path:"/wenzhang",query:{aid:s.aid}}}},[i("div",{staticClass:"my-class"},[i("h2",{staticClass:"my-h1"},[t._v(t._s(s.ask))]),t._v(" "),i("p",{staticClass:"my-p"},[i("img",{attrs:{src:t.url+s.icon}}),t._v(" "),i("span",[t._v(t._s(s.uname))])])]),t._v(" "),i("div",{staticClass:"m-div"},[i("div",{staticClass:"m-img"},[i("img",{attrs:{src:a("r846")}})]),t._v(" "),i("div",{staticClass:"m-div_2"},[i("p",[t._v(t._s(s.title))])])]),t._v(" "),i("div",{staticClass:"myspan"},[i("span",{staticClass:"span_1"},[t._v(t._s(s.subtitle))]),t._v(" "),i("span",{staticClass:"span_2"},[i("b",[t._v("876464")]),t._v(" "),i("b",[t._v("浏览")]),t._v(" "),i("b",[t._v(".")]),t._v(" "),i("b",[t._v("46465回答")]),t._v(" "),i("b",[t._v(".")]),t._v(" "),i("b",{staticClass:"my-b"},[t._v("87544顶")])])])])],1)}),t._v(" "),i("div",{staticClass:"mydiv"}),t._v(" "),i("button",{staticClass:"my-bin_1",on:{click:t.log}},[t._v("+ 我要提问")])],2)],1)},staticRenderFns:[]};var e=a("VU/8")({data:function(){return{value:"",litem:[],url:""}},methods:{log:function(){this.$router.push("tiwen")}},created:function(){var t=this;this.url=this.host,this.axios.get("user/seachask").then(function(s){t.litem=s.data.result})}},i,!1,function(t){a("KnNr")},"data-v-6f3ec11b",null);s.default=e.exports},exK5:function(t,s,a){t.exports=a.p+"static/img/h5_banner.be9a70a.jpg"},r846:function(t,s,a){t.exports=a.p+"static/img/32.0567537.jpg"}});
//# sourceMappingURL=8.dcce9e793fba11f1e332.js.map