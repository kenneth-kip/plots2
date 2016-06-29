require 'grape'
require 'grape-swagger'
require 'grape-entity'

module Srch
  class API < Grape::API
    default_format :json
    format :json
  
    # mount the individual api modules here
    mount Srch::Typeahead


    # Add the swagger documentation
    add_swagger_documentation :format => :json,
      :api_version => 'v1',
      :hide_documentation_path => true,
      :mount_path => '/swagger_doc',
      models: [
        Srch::Entities::SearchRequest,
        Srch::Entities::DocResult,
        Srch::Entities::TagResult,
        Srch::Entities::DocList,
        Srch::Entities::TagList
      ],
      info: {
        title: "RESTful API calls for Public Lab site",
        description: "These API calls provide programmatic access to features and data resources within Public Lab",
        contact_name: "Jeffrey Warren",
        contact_email: "jeff@publiclab.org",
        version: "1.0.0"
      }

  end

end
