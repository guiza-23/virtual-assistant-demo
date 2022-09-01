class ApplicationsController < ApplicationController
  before_action :set_user
  before_action :set_application, only: %i[show edit update destroy]

  def index
    if user_signed_in?
      if current_user.assistant != nil
        @applications = Application.where(assistant: @user.assistant)
      elsif current_user.company != nil
        @applications = Application.select {|app| app.company == @user.company}
      end
    else
      redirect_to root_path
    end
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    if @user.assistant != nil
      @application = Application.new
    else
      redirect_to new_assistant_path
    # authorize @offer
    end
  end

  def create
    if @user.assistant.nil?
      redirect_to new_assistant_path
    # authorize @offer
    else

      @application = Application.new
      @application.assistant_id = current_user.assistant.id
      if @application.save
        redirect_to applications_path
      else
        render :new, status: :unprocessable_entity
      end


    end
  end

  private

  def application_params
    params.require(:application).permit(:offer_id, :assistant_id)
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
