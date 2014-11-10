$(document).ready(function(){
    $("#how-it-works-btn").click(function(){
        if($(".how-it-works-panel").css("display") == "none"){
            setTimeout(function(){$(".how-it-works-panel").slideDown(600);}, 
            100);
        }
        else{
            setTimeout(function(){$(".how-it-works-panel").slideUp(600);}, 
            100);
        }
    });
});