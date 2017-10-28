
$( document ).ready(function() {

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

    $('.delete-song').on('click', function(){
      var songId = $(this).data('songId');
      deleteSong(songId);
    });

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
      var html = `
        <li>
            Title: ${data.name} - ${data.length} :minutes - ${data.year}
            <a href="#" data-song-id="${data.id}" class="delete-song">
                Delete song
            </a>
        </li>
      `;
      $('songs-list').append(html);
         $('.delete-song').on('click', function(){
           var songId = $(this).data('songId');
           deleteSong(songId);
         });
    });
  }

  $('#add').on('click', function(){
    createComposition();
  });

  function deleteAllSongs(){
    $.each($(".delete-song"), function(index, listItem) {
      console.log(listItem);
      var songId = $(listItem).data('songId');
      deleteSong(songId);
    });

  }

  $('#delete-all-compositions').on('click', function(){
    deleteAllSongs();
  });


});
