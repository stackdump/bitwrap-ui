window.$ = window.jQuery = require('jquery')
var Bitwrap = require('bitwrap-npm');
var Stomp = require('./src/stilts-stomp')
var Snap = require('snapsvg')
var SvgMachine = require('./src/svg-machine.coffee')

var machine = 'karmanom.com';
var host = 'localhost';
var port =  8675;

$( function() {
  $("<svg id='svg', width='100%', height='768px'/>", { class: '', html: '' }).appendTo( "body" );     

  // TODO bind events to stomp client
  //var stomp = new Stomp.Client(host, port, false)
  var stomp

  $.getJSON( 'machine/' + machine + '.json', function( data ) {
    window.bx = new SvgMachine(
      Snap("#svg"),
      machine,
      data,
      stomp
    );

    window.bx.render();

  });

});
