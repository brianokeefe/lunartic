# Lunartic

Calculate the approximate phase of the moon on a given date.

Note: Calculations are currently *very* approximate and will be improved shortly.

## Installation

Add this line to your application's Gemfile:

    gem 'lunartic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lunartic

## Usage

You can get the `day` (day within a cycle, 0..28), `percent_full` (0..1), and `phase` (a symbol) of the moon on a given day like so:

~~~ ruby
irb(main):001:0> require 'lunartic'
  => true

# get moon data for today
irb(main):002:0> moon = Lunartic.now
  => #<Lunartic::Moon:0x007fa5028e4dc0 @date=#<Date: 2014-06-25 ((2456834j,0s,0n),+0s,2299161j)>>
irb(main):003:0> moon.day
  => 27
irb(main):004:0> moon.phase
  => :waning_crescent
irb(main):005:0> moon.percent_full
  => 0.17138763236974325

# or, get moon data for a given Date
irb(main):006:0> Lunartic.on_date(Date.new(1989, 12, 28)).phase
  => :new
~~~

## Testing

    $ rake spec

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
