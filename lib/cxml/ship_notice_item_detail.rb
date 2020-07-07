# frozen_string_literal: true

module CXML
  class ShipNoticeItemDetail < DocumentNode
    accessible_nodes %i[
      unit_price
      description
      unit_of_measure
      price_basis_quantity
      classification
      manufacturer_part_id
      manufacturer_name
      item_detail_industry
      extrinsics
    ]
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
