require 'bundler'; Bundler.require

require_relative 'notifier'
require_relative 'config'

Notifier.alert
