class Article < ActiveRecord::Base
  validates :title, presence: true,
  length: { minimum: 5 }

  # LO HE AÑADIDO YO
  has_many :comments
end
