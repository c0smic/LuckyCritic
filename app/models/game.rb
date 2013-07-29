class Game < ActiveRecord::Base
  attr_accessible :description, :developer, :publisher, :released, :title

  has_many :reviews, :dependent => :destroy
end
