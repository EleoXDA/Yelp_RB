# frozen_string_literal: true

# documentation comment
class Restaurant < ApplicationRecord
  # rubocop:disable Style/MutableConstant
  CATEGORIES = %w[chinese italian japanese french belgian]
  # rubocop:enable Style/MutableConstant

  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
