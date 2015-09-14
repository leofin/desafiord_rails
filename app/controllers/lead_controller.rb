class LeadController < ApplicationController

  def search
   @leads = Lead.all
  end

  def new
    @contato = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
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


