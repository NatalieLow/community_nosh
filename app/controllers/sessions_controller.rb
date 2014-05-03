class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        sign_in user
        #format.html { redirect_to user }
        format.js
      else
        @error = 'Invalid email/password combination'
        format.html {render action: "new"}
        format.js

      end
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
