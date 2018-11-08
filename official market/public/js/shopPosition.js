
          Vue.component("texts",{
                props:['message'],
                template:`
                <div>
                    <img src="img/shopPosition.png" usemap="#mapPosition">
                    <map name="mapPosition">
                        <area shape="rect" coords="35,91,162,115" alt="这是什么" @click="qq">
                        <area shape="rect" coords="25,133,172,156" href="#" alt="这是什么222">
                    </map>
                </div>`, 
                props:["qq"]
            })
            new Vue({
                el:"#shopPosition",
                data:{},
                methods:{
                    qq(){
                        alert("此功能暂未开放，敬请期待")
                    }
                }
            })