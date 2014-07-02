module Lunartic
  class Moon
    attr_reader :date

    KNOWN_NEW_MOONS = [Date.new(1800, 1, 25), Date.new(1900, 1, 1),
                       Date.new(2000, 1, 6), Date.new(2100, 1, 10)]

    SYNODIC_MONTH = 29.530588853
    HALF_SYNODIC_MONTH = 29.530588853 / 2
    SYNODIC_DAY = 1 / 29.530588853

    def initialize(date)
      @date = date
    end

    def day
      closest_known = KNOWN_NEW_MOONS.select { |d| d < @date}.max || KNOWN_NEW_MOONS.first
      day = ((@date.jd - closest_known.jd) % SYNODIC_MONTH).floor
      return 0 if day >= SYNODIC_MONTH.floor
      day
    end

    def percent_full
      (HALF_SYNODIC_MONTH - (day - HALF_SYNODIC_MONTH).abs) / HALF_SYNODIC_MONTH
    end

    def phase
      case day
      when 0
        :new
      when 1..6
        :waxing_crescent
      when 7
        :first_quarter
      when 8..14
        :waxing_gibbous
      when 15
        :full
      when 16..21
        :waning_gibbous
      when 22
        :last_quarter
      when 23..28
        :waning_crescent
      end
    end
  end
end

