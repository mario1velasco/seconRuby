# class Comment < ApplicationRecord
#   belongs_to :article
# end
class Comment < ActiveRecord::Base
  belongs_to :article
end