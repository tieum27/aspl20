function createGmap(dataFromServer) {
  handler = Gmaps.build('Google');
  handler.buildMap({
      provider: {},
      internal: {id: 'equipement_map'}
    },
    function() {
      markers = handler.addMarkers(dataFromServer);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(16)
    }
  );
};

function loadAndCreateGmap() {
  // Only load map data if we have a map on the page
  if ($('#equipement_map').length > 0) {
    // Access the data-equipement-id attribute on the map element
    var equipementId = $('#equipement_map').attr('data-equipement-id');

    $.ajax({
      dataType: 'json',
      url: '/equipements/' + equipementId + '/map_location',
      method: 'GET',
      success: function(dataFromServer) {
        createGmap(dataFromServer);
      },
      error: function(jqXHR, textStatus, errorThrown) {
        alert("Getting map data failed: " + errorThrown);
      }
    });
  }
};

$(document).ready(function() {
    loadAndCreateGmap();
});


// Create the map when the page loads the first time
// $(document).on('ready', loadAndCreateGmap);
// // Create the map when the contents is loaded using turbolinks
// // To be 'turbolinks:load' in Rails 5
// $(document).on('page:load', loadAndCreateGmap);
// // To be 'turbolinks:load' in Rails 4
// $(document).on('turbolinks:load', loadAndCreateGmap);
