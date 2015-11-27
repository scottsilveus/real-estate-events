if defined?(Konacha)
  require 'capybara/poltergeist'

  Capybara.register_driver :slow_poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, timeout: 5.minutes, js_errors: false)
  end

  Konacha.configure do |config|
    config.spec_dir     = 'spec/javascripts'
    config.driver       = :slow_poltergeist
    config.stylesheets  = []
  end
end
