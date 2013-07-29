class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]
  attr_accessible :email, :password, :password_confirmation, :remember_me, :fullname, :shortbio, :weburl

  has_many :services, :dependent => :destroy
  has_many :reviews, :dependent => :destroy
  has_many :games, :dependent => :destroy

  #validates :weburl, :url => {:allow_blank => true}, :length => { :maximum => 50 }
  #validates :fullname, :length => { :maximum => 40 }
  #validates :shortbio, :length => { :maximum => 500 }
end
