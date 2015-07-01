/*!
 * classie - class helper functions
 * from bonzo https://github.com/ded/bonzo
 * 
 * classie.has( elem, 'my-class' ) -> true/false
 * classie.add( elem, 'my-new-class' )
 * classie.remove( elem, 'my-unwanted-class' )
 * classie.toggle( elem, 'my-class' )
 */

/*jshint browser: true, strict: true, undef: true */
/*global define: false */

$(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 300){
            $('.navbar-default').addClass('navbar-shrink');
        }
        else{
            $('.navbar-default').removeClass('navbar-shrink');
        }
    });
});
