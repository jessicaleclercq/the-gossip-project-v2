module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

   def log_in(user)
    session[:user_id] = user.id
  end

    def current_user?(user) #vérifie si destroy et edite peut être que être fait par utilisateur 
        user == current_user
    end

end
