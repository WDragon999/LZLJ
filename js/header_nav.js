$(function(){
    var num,times;
    $(".nav li:gt(0)").hover(function(){
        num=$(".nav li").index(this);
        clearTimeout(times);
        $(".drop").stop(false,true).slideUp(600);
        $(".drop").eq(num).stop(true,true).slideDown(600);
        console.log(num)
    },function(){
        times=setTimeout(function(){
            $(".drop").eq(num).stop(true,true).slideUp(600);
        }, 200);
    });

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

    // var num,times;
    // $(".nav li:gt(0)").hover(function(){
    //     num=$(".nav li").index(this);
    //     clearTimeout(times);
    //     $(".drop").stop(false,true).slideUp(600);
    //     $(".drop").eq(num).stop(true,true).slideDown(600);
    // },function(){
    //     times=setTimeout(function(){
    //         $(".drop").eq(num).stop(false,true).slideUp(600);
    //     },200);
    // })
    // $(".drop").hover(
    //     function(){
    //         clearTimeout(times);
    //         $(this).show();
    //     },function(){
    //         var $this =$(this);
    //         times=setTimeout(function(){
    //             $this.stop(false,true).slideUp(600)
    //         },200);
    //     }
    // )




    
    // $(".flevel1").hover(function(){
    //     $(".sub_nav_brand").stop(true,true).slideDown(600);
    // },function(){
    //     $(".sub_nav_brand").slideUp(500);
    // });
    // $(".drop").hover(function(){
    //     $(".sub_nav_brand").stop(true,true).show();
    // },function(){
    //     $(".sub_nav_brand").slideUp(500);
    // })
})