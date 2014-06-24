require 'lunartic'
require 'yaml'

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

FIXTURES = YAML.load_file("#{File.dirname __FILE__}/fixtures/moon.yml").map do |obj|
  sym_hash = {}
  obj.each_pair do |k,v|
    sym_hash[k.to_sym] = v
  end
  sym_hash
end

def test_method_against_fixtures(method)
  FIXTURES.each do |known|
    date = Date.new(known[:date_year], known[:date_month], known[:date_day])
    moon = Lunartic::Moon.new date
    expect(moon.send(method)).to eql known[method]
  end
end
