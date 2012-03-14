class EmailsController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @email = @company.emails.create(params[:email])
    redirect_to company_path(@company)
  end
end
