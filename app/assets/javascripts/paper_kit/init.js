// Dynamic load the javascript init based on features specified from view
// Combine the best practice to handle javascript invocation in rails
// http://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/
// https://viget.com/extend/javascript-execution-patterns-for-non-web-apps

window.App || (window.App = {});

// Get the features array
App.features = function() {
  var features = $('body').data('features');
  var featuresArray = [];
  if(features) {
    featuresArray = features.split(' ');
  }
  return featuresArray;
};

// Define the default feature in here
$(document).on("page:change", function() {
  if ($.inArray('components-page',App.features()) >= 0) {
		// the body of this function is in assets/paper-kit.js
    $( "#slider-range" ).slider({
    	range: true,
    	min: 0,
    	max: 500,
    	values: [ 75, 300 ],
    });
    $( "#slider-default" ).slider({
    		value: 70,
    		orientation: "horizontal",
    		range: "min",
    		animate: true
    });
    $('.btn-tooltip').tooltip('show');
    $('.radio').on('toggle', function() { });
  }
});
