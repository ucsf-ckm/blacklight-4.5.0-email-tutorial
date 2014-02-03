# -*- encoding : utf-8 -*-
module Blacklight
  class Routes    
      def catalog
        add_routes do |options|
          # Catalog stuff.
          get 'catalog/opensearch', :as => "opensearch_catalog"
          get 'catalog/citation', :as => "citation_catalog"
          get 'catalog/email', :as => "email_catalog"
          post 'catalog/email'

          get 'catalog/email_search', :as => "email_search"
          post 'catalog/email_search'

          get 'catalog/email_search_history', :as => "email_search_history"
          post 'catalog/email_search_history', :as => "email_search_history"

          post 'catalog/search'
          get 'catalog/sms', :as => "sms_catalog"
          get 'catalog/endnote', :as => "endnote_catalog"
          get "catalog/facet/:id", :to => 'catalog#facet', :as => 'catalog_facet'
          get "catalog", :to => 'catalog#index', :as => 'catalog_index'

          get 'catalog/:id/librarian_view', :to => "catalog#librarian_view", :as => "librarian_view_catalog"
        end
      end
  end
end
