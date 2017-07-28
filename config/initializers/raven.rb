Raven.configure do |config|
  config.dsn = ENV['SENTRY_DSN'] unless Rails.env.development?
end
