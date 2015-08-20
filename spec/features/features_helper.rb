require 'spec_helper'
require 'capybara/rspec'
require 'capybara-webkit'
require 'capybara-screenshot/rspec'
require 'timespan'

Dir[Rails.root.join("spec/features/support/**/*.rb")].sort.each { |f| require f } 


RSpec.configure do | config |

  config.include Rails.application.routes.url_helpers, :type => :feature
  
  config.before(:each, :type => :feature) do
    WebMock.disable_net_connect!(:allow_localhost => true)
    Capybara.current_driver = :selenium if self.class.metadata[:selenium]
  end
end


# if ENV['HEADLESS'] && !RUBY_PLATFORM.match(/darwin/)
#
#   headless = Headless.new
#   headless.start
#
#   at_exit do
#     headless.destroy if headless
#   end
#
# end
