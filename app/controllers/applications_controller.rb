class ApplicationsController < ApplicationController
  before_action :set_user
  before_action :set_application, only: %i[show edit update destroy]

  def index
    @applications = Application.where(assistant: @user.assistant)
    @applications = Application.select {|app| app.company == @user.company}
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
    @application = Application.new(application_params)
    @application.assistant_id = 1
    if @application.save
      redirect_to applications_path
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def application_params
    params.require(:application).permit(:offer_id, :assistant_id, :status)
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
