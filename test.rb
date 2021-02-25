require 'bundler'; Bundler.require
Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }

Notifier.alert
