class ServicesController < ApplicationController
  def index
  end

  def create
    omniauth = request.env['omniauth.auth']
    if omniauth
      omniauth['extra']['user_hash']['email'] ? email =  omniauth['extra']['user_hash']['email'] : email = ''
      omniauth['extra']['user_hash']['name'] ? name =  omniauth['extra']['user_hash']['name'] : name = ''
      omniauth['extra']['user_hash']['id'] ?  uid =  omniauth['extra']['user_hash']['id'] : uid = ''
      omniauth['provider'] ? provider =  omniauth['provider'] : provider = ''

      render :text => uid.to_s + " - " + name + " - " + email + " - " + provider
    else
      render :text => 'Error: Omniauth is empty'
    end
  end
end