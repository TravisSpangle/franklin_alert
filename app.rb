require 'bundler'; Bundler.require

require_relative 'submit'
require_relative 'notifier'
require_relative 'config'

@button = Button::Submit.new

Notifier.alert if @button.available?
