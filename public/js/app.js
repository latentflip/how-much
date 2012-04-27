$(function() {
  $('form').submit(function() {
    var userval = $('input[type=text]').val();
    var actualval = $('input[type=hidden]').val();

    var delta = parseFloat(userval) - parseFloat(actualval);
    alert(delta);

  });
});

