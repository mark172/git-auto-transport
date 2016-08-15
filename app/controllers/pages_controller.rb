class PagesController < ApplicationController
  def index
    @title = "Nationwide Door-to-Door Auto Transport Service | GT Auto Transport"
    @meta_description = "Contact us for reliable, licensed auto transport."
    @canonical_url = canonical_url
  end
  
  def about
    @title = "About Us | GT Auto Transport"
    @canonical_url = canonical_url "/about"
  end
  
  def download_pdf
    send_file(
      "#{Rails.root}/public/t_and_c.pdf",
      filename: "terms_and_conditions.pdf",
      type: "application/pdf"
    )
  end
  
  def terms_and_conditions
    @title = "Terms and Conditions | GT Auto Transport"
    @canonical_url = canonical_url "/terms_and_conditions"
  end
  
  def faqs
    @title = "FAQs | GT Auto Transport"
    @canonical_url = canonical_url "/faqs"
  end
  
  def contacts
    @title = "Contact Us | GT Auto Transport"
    @canonical_url = canonical_url "/contacts"
  end
  
end
