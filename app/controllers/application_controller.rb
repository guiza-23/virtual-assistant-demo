class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[home index]

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mis_mensajes

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type_of_user])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:type_of_user])
  end

  include Pundit::Authorization
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  #rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def after_sign_in_path_for(_resource)
    # stored_location_for(resource) || welcome_path
    if current_user.type_of_user == "Assistant"
      assistant_path(current_user.assistant.id)
    else
      company_path(current_user.company.id)
    end
  end
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end
  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end


  def mis_mensajes
    last_mensaje = 0
    notification = false

    if current_page?(chatroom_path)
      chatroom = Chatroom.find(params[:id])
      last_mensaje = chatroom.mensajes.last.id
    end

    mensaje = current_user.company.mensajes.last.id
    if mensaje == last_mensaje
      notification = false
    else
      notification = true
    end
  end

end
