$(document).ready(function(){      
  
  var topOffset = $('#outer-map').offset().top;
  var leftOffset = $('#outer-map').offset().left + 'px';
  var outerMapWidth = ($('.main-div').css("width").slice(0,-2) - $('.main-div').css("padding-left").slice(0,-2) * 2 )* .60;
  
  $('#outer-map').css('width', outerMapWidth);
  
  console.log(outerMapWidth);
  

  
$('.give-class').click(function(){
  
  $('#outer-map').addClass('tmap');
});  


function positionFromTop(){
    return topOffset - $(window).scrollTop();
    
    
};

$(window).scroll(function(){
    if(positionFromTop() <= 0){
        $('#outer-map').addClass('tmap');
        $('#outer-map').css('left', leftOffset);
        console.log(leftOffset);
    }
    else if($('#outer-map').hasClass('tmap')){
        $('#outer-map').removeClass('tmap');
    };
    
});
  

});