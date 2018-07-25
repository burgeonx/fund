class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :new, :create]
  before_action :authenticate_user!

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = current_user.companies.build
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = current_user.companies.build(company_params)
    
    if @company.save
      redirect_to funding_company_path(@company), notice: "Saved."
    else
      flash[:alert] = "Oops, something went wrong."
      render :new
    end
  end
  
  def funding
  end

  def info
  end

  def contact
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    if @company.update(company_params)
      flash[:notice] = "Your changes were saved."
    else
      flash[:alert] = "Oops, something went wrong."
    end
    redirect_back(fallback_location: request.referer)
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end
  
    def is_ready_company
      !@company.active && !@company.amount.blank? && !@company.financing_time.blank? && !@company.tax_id.blank? && !@company.entity_type.blank? && !@company.annual_revenue.blank? && !@company.address.blank? && !@company.city.blank? && !@company.state.blank? && !@company.zip.blank? && !@company.phone.blank?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :phone, :trade_name, :address, :suite, :city, :state, :zip, :tax_id, :entity_type, :annual_revenue, :sell_to, :financing_time, :amount, :website)
    end
end
