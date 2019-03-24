$(function() {
  $("#s_cost").on('change', function() {
    var s_cost = $(this).val()
    $("#s_method_all, #s_method_part").addClass("none")
      if(s_cost == 1) {
        $("#s_method_all").removeClass("none")
        $("#s_method_part").attr("name", "")
      }
      else {
        $("#s_method_part").removeClass("none")
      }
  });
})