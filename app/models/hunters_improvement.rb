class HuntersImprovement < ApplicationRecord
  belongs_to :hunter
  belongs_to :improvement

  validate :valid_hunter?

  after_create :apply_improvement

  def valid_hunter?
    return false unless hunter
    improvement.hunter_errors(hunter)&.each do |error|
      errors.add(:hunter, error)
    end
  end

  def apply_improvement
    improvement.apply hunter
  end
end