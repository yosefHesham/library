require_relative 'baseDecorator'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    @nameable.correct_name.capitalize
  end
end
