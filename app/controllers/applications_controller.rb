class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
    # authorize @application
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
    params.require(:application).permit(:offer_id, :assistant_id)
  end
end
