class CompaniesController < ApplicationController

  def index
    # para mi que index no va
    @companies = Company.all
  end

  def show
    @company = Company.find(current_user.company.id)
    @offers = Offer.where("company_id = #{current_user.company.id}")
  end

  def new
    @company = Company.new
    # authorize @company
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    # authorize @company
    if @company.save
      redirect_to company_path(current_user.company.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @company = Company.find(current_user.company.id)
    # authorize @company
  end

  def update
    # authorize @company
    @company = Company.find(current_user.company.id)
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(:description, :name, :photo)
  end
end
