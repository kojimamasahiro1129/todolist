

$(":checkbox").click(function() {

  if ($(this).is(":checked"))
  {
    $(this).closest("td").css("text-decoration", "line-through");
  }
  else {
    $(this).closest("td").css("text-decoration", "none");
  }

});
