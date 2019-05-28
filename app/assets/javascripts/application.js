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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

  function newOptionInput() {
    var ul = document.getElementById('new-poll-options');
    var lastElement = ul.lastElementChild.firstElementChild;
    if(event.currentTarget == lastElement) {
      lastElement.removeAttribute("oninput");
      var newElement = document.createElement('li');
      var optionInput = document.createElement('input');
      optionInput.setAttribute('type', 'text');
      optionInput.setAttribute('class', 'line');
      optionInput.setAttribute('placeholder', "Option " + (ul.childElementCount + 1));
      optionInput.setAttribute('name', "poll[options_attributes][" + ul.childElementCount + "][body]");
      optionInput.setAttribute('oninput', 'newOptionInput()');
      optionInput.setAttribute('autocomplete', 'off');
      newElement.appendChild(optionInput);
      document.getElementById("new-poll-options").appendChild(newElement);
    }
}
