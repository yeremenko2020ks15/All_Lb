class Doctor < ApplicationRecord
  has_one_attached :image

  def to_s
    self.name
  end
end
