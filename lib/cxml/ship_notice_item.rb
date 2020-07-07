# frozen_string_literal: true

module CXML
  class ShipNoticeItem < DocumentNode
    accessible_attributes %i[
      quantity
      line_number
      parent_line_number
      ship_notice_line_number
      item_type
      composite_item_type
    ]
    accessible_nodes %i[
      item_id
      unit_of_measure
      comments
      extrinsics
    ]

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
