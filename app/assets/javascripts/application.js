// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// $(window).load(function() {
//   var f_label = $("label:first-child")
//   var f_text = $(".sell-drop__box--text:first")
//   f_label.removeClass("none")
//   f_text.removeClass("none")
// });

// $(document).click(function() {
//   console.log('hoge')
// });

$(document).on('change', 'input[type="file"]', function() {
  // console.log('hoge')
  // var f_label = $("label:first-child")
  // var f_text = $(".sell-drop__box--text:first")
  // $(this).children().removeClass("none")
  // console.log($(this).children())
  // inputに入った時に次のlabelとtextにnoneのクラスがつく
  // 次のlabelとtextの取り方がわからない
  // thisで取れれば理想的だが、documentでないとイベントが取れない
});