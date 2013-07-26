class Game < ActiveRecord::Base
  attr_accessible :description, :developer, :publisher, :released, :title
end
