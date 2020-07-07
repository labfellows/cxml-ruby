# frozen_string_literal: true

module CXML
  class ShipmentIdentifier < DocumentNode
    accessible_attributes %i[
      domain
      tracking_number_date
      tracking_url
    ]
  end
end
