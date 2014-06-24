require 'spec_helper'

describe Lunartic::Moon do
  let(:subject) { Lunartic::Moon.new(Date.new(1989, 12, 28)) }

  describe '#initialize' do
    it 'should return a Lunartic::Moon' do
      expect(subject).to be_a Lunartic::Moon
    end
  end

  describe '#day' do
    it 'should return a fixnum' do
      expect(subject).to be_a Fixnum
    end

    it 'should return the correct cycle day for the given date' do
      test_method_against_fixtures :day
    end
  end

  describe '#percent_full' do
    it 'should return a float' do
      expect(subject).to be_a Float
    end

    it 'should return the correct percentage full for the given date' do
      test_method_against_fixtures :percent_full
    end
  end

  describe '#phase' do
    it 'should return a symbol' do
      expect(subject).to be_a Symbol
    end

    it 'should return the correct moon phase for a given date' do
      test_method_against_fixtures :phase
    end
  end
end
