# frozen_string_literal: true

module CXML
  class ShipNoticeRequest < DocumentNode
    accessible_nodes %i[
      ship_notice_header
      ship_control
      ship_notice_portion
    ]

    def initialize_invoice_detail_orders(value)
      value = [value] unless value.is_a?(Array)
      @invoice_detail_orders = value.map do |item|
        InvoiceDetailOrder.new(item)
      end
    end

    def initialize_invoice_detail_order(value)
      value = [value] unless value.is_a?(Array)
      @invoice_detail_orders = value.map do |item|
        InvoiceDetailOrder.new(item)
      end
    end

    def initialize_invoice_detail_header_orders(value)
      value = [value] unless value.is_a?(Array)
      @invoice_detail_header_orders = value.map do |item|
        InvoiceDetailHeaderOrder.new(item)
      end
    end

    def initialize_invoice_detail_header_order(value)
      value = [value] unless value.is_a?(Array)
      @invoice_detail_header_orders = value.map do |item|
        InvoiceDetailHeaderOrder.new(item)
      end
    end
  end
end
