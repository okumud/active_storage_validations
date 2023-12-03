# frozen_string_literal: true

# == Schema Information
#
# Table name: size_validator_with_allow_nils
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Size::Validator::WithAllowNil < ApplicationRecord
  has_one_attached :with_allow_nil
  validates :with_allow_nil, size: { less_than: 2.kilobytes }, allow_nil: true
end
