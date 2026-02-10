$(document).on('hidden.bs.modal', '.modal', function () {
  $('body').removeClass('modal-open');
  $('.modal-backdrop').remove();
  $('body').css({
    overflow: '',
    'padding-right': ''
  });
});
