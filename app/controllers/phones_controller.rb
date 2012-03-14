class PhonesController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @phone_number = @company.phones.create(params[:phone])
    redirect_to company_path(@company)
  end
end
