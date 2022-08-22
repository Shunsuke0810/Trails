# class AdminController <  RailsAdmin::Engine
#   super
#   before_action :authenticate_admin!, if: :admin_url

#   def authenticate_admin!
#     binding.pry
#     if current_user.admin?
#       redirect_to rails_admin_path
#     else
#       redirect_to root_path
#     end
#   end

#   def admin_url
#     binding.pry
#     request.fullpath.include?("/admin")
#   end
# end