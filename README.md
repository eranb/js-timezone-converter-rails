js-timezone-converter-rails
===========================

JavaScript Timezone converter library for rails applications.
Basically lets you do timezone conversions in the browser, useful for client side applications.
It also supports Daylight-Saving-Time.

### Installation 
Add this line to your application's Gemfile:
```
gem 'js-timezone-converter-rails'
```

And then execute:
```
$ bundle install
```

In your `application.js`, include the javascript file:
```javascript
//= require js-timezone-converter
```

In your main layout file `application.html.erb`, include this tag inside the body section:
```erb
<%= js_timezone_converter_data %>
```

### Usage

the converter 
```javascript
date = new Date; // => Thu May 16 2013 23:49:58 GMT+0300 (IDT)
date.at("Pacific Time (US & Canada)") // => Thu May 16 2013 13:49:58 GMT+0300 (IDT)
date.at("Hong Kong") // Fri May 17 2013 04:49:58 GMT+0300 (IDT)
```

get the available timezones ( with UTC offset )
```javascript
Date.availableTimezones() 
/*
{
  International Date Line West: -39600,
  Midway Island: -39600,
  American Samoa: -39600,
  Hawaii: -36000,
  Alaska: -28800
  Abu Dhabi: 14400
  Adelaide: 34200
  ....
}
*/
```
to get the full list execute 
`$ rake time:zones:all`