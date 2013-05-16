!function($) {
  Date.timezoneUTCOffsetFor = function( zone ) {
    var offset = Date.availableTimezones()[zone];
    if ( offset === void(0) )
      throw("Unknown timezone '" + zone + "'");
    return (offset * 1000);
  };
  
  Date.availableTimezones = function( zone ) {
    return $('#js_timezone_converter_data').data('timezones');
  }
  
  Date.prototype.at = function( zone ) {
    var offset = ( Date.timezoneUTCOffsetFor( zone ) + 
      ((new Date()).getTimezoneOffset() * 60 * 1000)
    );
    return ( new Date( new Date( this )  - (- offset) ) );
  };
    
}(window.jQuery);
