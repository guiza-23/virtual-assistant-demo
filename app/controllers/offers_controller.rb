class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
    # authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.company_id = current_user.company.id
    if @offer.save
      redirect_to new_offer_path
    else
      raise
      render :new, status: :unprocessable_entity
    end
    # authorize @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:description, :tag)
  end
end
