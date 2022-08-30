class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(current_user.company_id)
  end

  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new
    @company.user_id = current_user.id
    @company.description = @description
    authorize @company
    if @company.save
      redirect_to company_path(current_user.company_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_offers
    @offers = Offer.where("company_id: #{current_user.id}")
  end
end
