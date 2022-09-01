class OffersController < ApplicationController
  before_action :set_user
  before_action :set_offer, only: %i[show edit update destroy]

  def index
    # @assistants = policy_scope(Assistant)
    if params[:query].present?
      sql_query = "title ILIKE :query OR tag ILIKE :query"
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
      # @page =  params[:page].to_i
    else
      @offers = Offer.all
      # @page =  params[:page].to_i
      # @flats = Flat.offset(@page * FLATS_PER_PAGE).limit(FLATS_PER_PAGE)
    end
  end

  def show
  end

  def new

    if @user.company != nil
      @offer = Offer.new
    else
      redirect_to new_company_path
    # authorize @offer
    end
  end

  def create
    @offer = Offer.new(offer_params)

    @offer.company_id = @user.company.id

    if @offer.save
      redirect_to new_offer_path
    else
      render :new, status: :unprocessable_entity
    end
    # authorize @offer
  end

  def edit; end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path
    else
      render "Edit"
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end

  private

  def offer_params
    params.require(:offer).permit(:description, :tag, :company_id)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_user
    @user = current_user
  end

end
