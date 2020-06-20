# frozen_string_literal: true

module CXML
  class SupplierOrderInfo < DocumentNode
    accessible_attributes %i[
      order_id
      order_date
    ]
  end
end
