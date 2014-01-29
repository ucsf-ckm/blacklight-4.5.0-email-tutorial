require "#{Blacklight.models_dir}/record_mailer.rb"

# -*- encoding : utf-8 -*-
# Only works for documents with a #to_marc right now. 
class RecordMailer < ActionMailer::Base

  def email_search(searches, details, url_gen_params)        
    subject = I18n.t('blacklight.email.text.search_subject', :title => ("search results") )

    @searches         = searches
    @message        = details[:message] 
    @url_gen_params = url_gen_params

    mail(:from => "youremail@yourserver.edu", :to => details[:to],  :subject => subject)
  end
  
end