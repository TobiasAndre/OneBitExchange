# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
          type: 'GET'
          dataType: 'json'
          data: {
            source_currency: $("#source_currency").val(),
            target_currency: $("#target_currency").val(),
            amount: $("#amount").val()
          }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;

  $('#source_currency').change ->
    $(this).parents('form').submit();
    return
  $('#target_currency').change ->
    $(this).parents('form').submit();
    return
  $('#amount').keyup ->
    $(this).parents('form').submit();
    return
  $('#btn-submit').click ->
      $('#btnTroca').click ->
      a = $('#source_currency').val()
      b = $('#target_currency').val()  
      $('#source_currency').val b
      $('#target_currency').val a
      return
