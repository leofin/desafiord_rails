class LeadController < ApplicationController
  def search
   @leads = Lead.all
  end
end
