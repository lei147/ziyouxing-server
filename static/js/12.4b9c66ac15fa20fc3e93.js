webpackJsonp([12],{"0De/":function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var o={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("mt-header",{staticStyle:{background:"#FFF",color:"#ff9d00"},attrs:{title:"评论攻略"}},[n("mt-button",{attrs:{slot:"left",icon:"back"},on:{click:t.goback},slot:"left"}),t._v(" "),n("mt-button",{attrs:{slot:"right",icon:"more"},slot:"right"})],1),t._v(" "),n("div",{staticClass:"mydiv"},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.comment,expression:"comment"}],attrs:{name:"msg",id:"mytext",cols:"30",rows:"10"},domProps:{value:t.comment},on:{input:function(e){e.target.composing||(t.comment=e.target.value)}}})]),t._v(" "),n("div",{staticClass:"mydiv-1"},[n("button",{staticClass:"mybtn",on:{click:t.btn}},[t._v("发 表 评 论")])])],1)},staticRenderFns:[]};var s=n("VU/8")({data:function(){return{comment:"",userImg:"",uname:"",uid:""}},methods:{goback:function(){this.$router.go(-1)},btn:function(){var t=this;this.axios.get("user/user").then(function(e){var n=e.data.result[0].uid,o=t.comment,s=t.$route.query.pid;o.length<5?t.$messagebox("消息","评论不能少于5个字"):t.axios.post("user/psp/comment",{pid:s,comment:o,uid:n}).then(function(t){})})}}},o,!1,function(t){n("Asum")},"data-v-ddc255ea",null);e.default=s.exports},Asum:function(t,e){}});
//# sourceMappingURL=12.4b9c66ac15fa20fc3e93.js.map