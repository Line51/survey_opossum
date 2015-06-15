// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function () {
      var counter = 0;
  if (!$('.survey-form').length) {
    return;
  }
    $('.add-question').on('click', function (e) {
    e.preventDefault();
    counter++;
    addnewQuestion ('newQuestion');
   
 
    
   
  })
  
   $('.question-field').on('change', 'select', function () {
    if($('select').val() === 'multi')  {
      alert('yay');
      showAnswerfield('answerChoice');
    }
  })
 
  
 

});

 


function addnewQuestion(template, model) {

  var fn = _.template($('#' + template).html(), { variable: 'm' });
  var newhtml= fn(model);
   newhtml = newhtml.replace( /\[[0-9]+\]/g,'[' + $('.question-wrapper').length + ']');
  $('.question-field').append(newhtml);
  console.log(fn);
}

function showAnswerfield(template, model) {

  var fn = _.template($('#' + template).html(), { variable: 'm' });
  $('.answer-choices-field').html(fn(model));
  console.log(fn);
}