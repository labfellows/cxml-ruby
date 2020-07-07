# frozen_string_literal: true

module CXML
  class ShipNoticePortion < DocumentNode
    accessible_attributes %i[
      start_date
    ]
    accessible_nodes %i[
      order_reference
      master_agreement_reference
      contacts
      comments
      extrinsics
      ship_notice_items
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

    def initialize_ship_notice_item(value)
      value = [value] unless value.is_a?(Array)
      @ship_notice_items = value.map do |item|
        CXML::ShipNoticeItem.new(item)
      end
    end

    def initialize_ship_notice_items(value)
      value = [value] unless value.is_a?(Array)
      @ship_notice_items = value.map do |item|
        CXML::ShipNoticeItem.new(item)
      end
    end
  end
end
