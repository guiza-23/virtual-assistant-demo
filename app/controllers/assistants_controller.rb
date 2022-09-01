class AssistantsController < ApplicationController
  before_action :set_assistant, only: [:show, :edit, :update]
  before_action :set_user
  #ASSISTANTS_PER_PAGE = 6

  def index
    #@assistants = policy_scope(Assistant)
    if params[:query].present?
      sql_query = "skills ILIKE :query OR availability ILIKE :query"
      @assistants = Assistant.where(sql_query, query: "%#{params[:query]}%")
      # @page =  params[:page].to_i
    else
      @assistants = Assistant.all
      # @page =  params[:page].to_i
      # @flats = Flat.offset(@page * FLATS_PER_PAGE).limit(FLATS_PER_PAGE)
    end
  end

  #profile / show externo de mas info
  def show
    #@assistant = Assistant.find(params[:id])
    #authorize @assistant
  end

  def new
    @assistant = Assistant.new
    authorize @assistant
  end

  def create
    @assistant = Assistant.new(assistant_params)
    @assistant.user_id = current_user.id
    if @assistant.save
      redirect_to assistants_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @assistant
  end

  def edit
    #authorize @assistant
  end

  def update
    #authorize @assistant
    if @assistant.update(assistant_params)
      redirect_to assistant_path(@assistant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # directamente en User
  # def destroy
  #   authorize @assistant
  #   @assistant.destroy
  #   redirect_to assistants_path, status: :see_other
  # end

  # incluir en Profile
  def my_applications
    @applications = Application.where("assistant_id: #{current_user.assistant.id}")
  end

  private

  def set_assistant
    @assistant = Assistant.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def assistant_params
    params.require(:assistant).permit(:cv, :firstname, :lastname, :skills, :availability, :user_id)
  end
end
