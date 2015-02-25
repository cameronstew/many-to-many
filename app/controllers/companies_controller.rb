class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end


  def create
    @company = Company.create(params.require(:company).permit(:name, :catch_phrase, :suffix))
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end
end
