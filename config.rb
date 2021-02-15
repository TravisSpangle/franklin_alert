require 'yaml'

module Config
  module_function

  def data
    @@config ||=YAML.load(File.read("settings.yml"))
  end

  def [](key)
    data[key]
  end
end
