 $(document).ready(function() {

  $('#share').share({
        networks: ['twitter','facebook','tumblr','pinterest','googleplus'],
        orientation: 'vertical',
        urlToShare: 'http://www.candeoapp.com/c/'+$('#content_id').val(),
        affix: 'right center'
    });

 });



