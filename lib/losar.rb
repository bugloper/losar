# frozen_string_literal: true

require_relative "losar/version"

module Losar
  class Error < StandardError; end

  def self.tashidelek
    puts "Tashi Delek"
  end

  def self.history
    puts "Blessed Rainy Day is an annual festival in Bhutan, where people take ritual baths to cleanse their bodies and minds. It's a time for family, food, and blessings, marking the end of the monsoon season."
  end

  def self.chang
    puts "Ja zhi, thukpa dru, chang tsheymey"
  end
end
