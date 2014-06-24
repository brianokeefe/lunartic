require 'date'
require 'lunartic/version'
require 'lunartic/moon'

module Lunartic
  class << self
    def now
      Lunartic::Moon.new Date.today
    end

    def on_date(date)
      Lunartic::Moon.new date
    end
  end
end
