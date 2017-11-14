module LeadsHelper

  def lead_landing_page(lead)
    landing = Landing.find(lead.landing_id)
  end

end
