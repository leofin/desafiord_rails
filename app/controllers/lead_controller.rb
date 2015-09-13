class LeadController < ApplicationController

  def search
   @leads = Lead.all
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.create(lead_params[:lead])
    if @lead.save
      redirect_to '/lead/search'
    else
      render 'new'
    end
  end

  private
    def lead_params
      params.require(:lead).permit( :name, :last_name, :email, :company, :job_title, :phone, :website)
    end

end
