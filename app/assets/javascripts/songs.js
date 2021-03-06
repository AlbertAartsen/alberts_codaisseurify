function deleteSong(songId) {
  var artistId = $('#artist').data('artistId');
  var song = $(this).parent();

$.ajax({
  method: "DELETE",
  url: "/api/artists/"+ artistId +"/songs/" + songId,
})

.fail(function(error) {
  console.log(error);
})

.done(function(data) {
  $('[data-song-id="'+ songId +'"]').parent().remove();
});
}

function createComposition() {
  var name = $('#song_name').val();
  var length = $('#song_length').val();
  var year = $('#song_year').val();
  var artistId = $('#artist').data('artistId');
  var newSong = { name: name, length: length, year:year, artist_id: artistId};

  $.ajax({
    type: "POST",
    url: "/api/artists/"+ artistId +"/songs/",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    resetErrors ();
    var html = `
      <li>
        Name: ${data.name} - Length: ${data.length} - Year: ${data.year}
          <a href="#" data-song-id="${data.id}" class="delete-song">
            Delete Composition
          </a>
      </li>
      `;
    $('#songs-list').append(html);
      $('.delete-song:last').on('click', function(){
       var songId = $(this).data('songId');
        deleteSong(songId);
      });
    })

  .fail(function(error) {
    error_message = error.responseText;
    showError(error_message);
  });

  function showError(message) {
    var errorHelpBlock = $('<span class="help-block"></span>')
    .attr('id', 'error_message')
    .text(message);
    $('#songs-list').parent().append(errorHelpBlock);
  }
}

function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-title").removeClass("has-error");
}

function deleteAllSongs(){
  $.each($(".delete-song"), function(index, listItem) {
    var songId = $(listItem).data('songId');
    deleteSong(songId);
    });
}

$( document ).ready(function() {
  $('#add').bind('click', function(){
    createComposition();
  });
  $('.delete-song').bind('click', function(){
    var songId = $(this).data('songId');
    deleteSong(songId);
  });
  $('#delete-all-compositions').bind('click', function(){
    deleteAllSongs();
  });
});
