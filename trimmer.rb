class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    if @nameable.correct_name.size > 10
      @nameable.correct_name.slice(0..11)
    else
      @nameable.correct_name
    end
  end
end
