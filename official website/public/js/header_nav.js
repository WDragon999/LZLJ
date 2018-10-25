$(function(){
    var num,times;
    $(".nav li:gt(0)").hover(function(){
        num=$(".nav li").index(this);
        clearTimeout(times);
        $(".drop").stop(false,true).slideUp(600);
        $(".drop").eq(num).stop(true,true).slideDown(600);
        
    },function(){
        times=setTimeout(function(){
            $(".drop").eq(num).stop(true,true).slideUp(600);
        }, 200);
        
    });
    $(".nav li").hover(function(){
        num=$(".nav li").index(this);
        $(".nav li a").eq(num).css("color","red")
    },function(){
        num=$(".nav li").index(this);
        $(".nav li a").eq(num).css("color","#fff")
    })
    $(".drop").hover(
        function(){
            clearTimeout(times);
            $(this).show();
        },function(){
            var $this =$(this);
            times=setTimeout(function(){
                $this.stop(true,true).slideUp(600)
            },200);
        }
    )
})