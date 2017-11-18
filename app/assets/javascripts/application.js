// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require bootstrap-sprockets
//= require_tree .


$(document).on('ready', function () {
  $width = $('#middle').width();
  $leon = parseInt($width / 2);
  $tiste = $width - $leon;
  // $('#leon').width($('#leon').width());
  $('#leon')
    .css('-webkit-transform', 'translate('+ $leon +'px)')
    .css('transform', 'translate('+ $leon +'px)')
    .css('-moz-transform', 'translate('+ $leon +'px)')
    .css('-o-transform', 'translate('+ $leon +'px)')
    .css('-ms-transform', 'translate('+ $leon +'px)');
  console.log('load');
  $('#tiste')
    .css('-webkit-transform', 'translate(-'+ $tiste +'px)')
    .css('transform', 'translate(-'+ $tiste +'px)')
    .css('-moz-transform', 'translate(-'+ $tiste +'px)')
    .css('-o-transform', 'translate(-'+ $tiste +'px)')
    .css('-ms-transform', 'translate(-'+ $tiste +'px)');
  // setTimeout(function(){$("body").removeClass("preload");}, 1000);
})