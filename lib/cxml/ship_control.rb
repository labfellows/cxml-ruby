# frozen_string_literal: true

module CXML
  class ShipControl < DocumentNode
    accessible_attributes %i[
      start_date
    ]
    accessible_nodes %i[
      carrier_identifiers
      shipment_identifier
      package_identification
      contacts
      comments
      extrinsics
    ]

    def initialize_carrier_identifier(value)
      value = [value] unless value.is_a?(Array)
      @carrier_identifiers = value.map do |item|
        CarrierIdentifier.new(item)
      end
    end

    def initialize_carrier_identifiers(value)
      value = [value] unless value.is_a?(Array)
      @carrier_identifiers = value.map do |item|
        CarrierIdentifier.new(item)
      end
    end

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
