require 'spec_helper'

describe Lunartic do
  describe '.now' do
    let(:subject) { Lunartic.now }

    it 'should return a Lunartic::Moon' do
      expect(subject).to be_a Lunartic::Moon
    end

    it "should create a Lunartic::Moon using today's date" do
      expect(subject.day).to eql Lunartic::Moon.new(Date.today).day
    end
  end

  describe '.on_date' do
    let(:subject) { Lunartic.on_date(Date.new(1989, 12, 28)) }

    it 'should return a Lunartic::Moon' do
      expect(subject).to be_a Lunartic::Moon
    end

    it 'should create a Lunartic::Moon using the specified date' do
      expect(subject.day).to eql Lunartic::Moon.new(Date.new(1989, 12, 28)).day
    end
  end
end
