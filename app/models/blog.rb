# frozen_string_literal: true

class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
end
