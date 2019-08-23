class Reference < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :authors, :description, :publication_date, :registered_date
end
