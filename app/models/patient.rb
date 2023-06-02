class Patient < ApplicationRecord

  def to_s
    self.full_name
  end
end
