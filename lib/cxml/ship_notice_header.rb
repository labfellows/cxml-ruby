# frozen_string_literal: true

module CXML
  class ShipNoticeHeader < DocumentNode
    accessible_attributes %i[
      shipment_id
      operation
      notice_date
      shipment_date
      delivery_date
      shipment_type
      fulfillment_type
      requested_delivery_date
      reason
    ]
    accessible_nodes %i[
      document_reference
      contacts
      comments
      extrinsics
      id_reference
    ]

    def initialize_contact(value)
      value = [value] unless value.is_a?(Array)
      @contacts = value.map do |item|
        Contact.new(item)
      end
    end

    def initialize_contacts(value)
      value = [value] unless value.is_a?(Array)
      @contacts = value.map do |item|
        Contact.new(item)
      end
    end

    def initialize_extrinsic(value)
      value = [value] unless value.is_a?(Array)
      @extrinsics = value.map do |item|
        Extrinsic.new(item)
      end
    end

    def initialize_extrinsics(value)
      value = [value] unless value.is_a?(Array)
      @extrinsics = value.map do |item|
        Extrinsic.new(item)
      end
    end
  end
end
