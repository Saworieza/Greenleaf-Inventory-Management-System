# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#item_warrenty_date').datepicker({dateFormat: 'yy-mm-dd'})
  $("#item_form").submit ->
    subproperty = $('#properties_select :selected').text()
    if(subproperty=="Choose A Property")
      event.preventDefault();
      alert("Select a property option")
  $('#item_department').parent().hide()
  departments = $('#item_department').html()
  $('#properties_select').parent().change ->
    property = $('#properties_select :selected').text()
    options = $(departments).filter("optgroup[label='#{property}']").html()
    if options
      $('#item_department').html(options)
      $('#item_department').parent().show()
    else
      $('#item_department').empty()
      $('#item_department').parent().hide()
