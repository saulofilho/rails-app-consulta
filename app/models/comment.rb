class Comment < ApplicationRecord
  belongs_to :meetings
  belongs_to :user
end
