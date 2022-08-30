class AssistantsController < ApplicationController
  before_action :set_assistant, only: [:show, :edit, :update, :destroy]
  ASSISTANTS_PER_PAGE = 6

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

  private

  def set_assistant
    @assistant = Assistant.find(params[:id])
  end

  def flat_params
    params.require(:assistant).permit(:cv, :skills, :availability,:user_id)
  end
end
