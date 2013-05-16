module JSTimeZoneConverterRails
  class Engine < ::Rails::Engine
    initializer 'js-timezone-converter-rails.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper JSTimeZoneConverterRails::Helper
      end
    end
  end

  module Helper
    def js_timezone_converter_data
      content_tag "div", "", id: 'js_timezone_converter_data', data: { 
        timezones: Hash[ActiveSupport::TimeZone::MAPPING.keys.map { |zone|
            tz = ActiveSupport::TimeZone.new zone
            offset = tz.utc_offset
            dst = tz.period_for_local(Time.now,true).dst?
            [zone, dst ? (offset + 3600): offset]
        }]
      }
    end
  end
end
