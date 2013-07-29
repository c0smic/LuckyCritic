class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  attr_accessible :body, :state, :submitted, :title, :user_id, :game

  validates_presence_of :title, :body
end
