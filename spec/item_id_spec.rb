# frozen_string_literal: true

require 'spec_helper'

describe CXML::ItemId do
  it { should respond_to :supplier_part_id }
  it { should respond_to :supplier_part_auxiliary_id }

  let(:parser) { CXML::Parser.new }
  let(:data) { parser.parse(fixture('punch_out_order_message_doc.xml')) }
  let(:doc) { CXML::Document.new(data) }
  let(:punch_out_order_message) { doc.message.punch_out_order_message }
  let(:builder) { doc.render }

  describe '#initialize' do
    let(:item_in) { CXML::ItemIn.new(build_item_in(parser)) }
    let(:item_id) { item_in.item_id }

    it 'sets the attributes that are passed' do
      item_id.supplier_part_id.should_not be_nil
    end
  end

  describe '#render' do
    before(:each) do
      punch_out_order_message.add_item(build_item_in(parser))
    end

    let(:output_xml) { builder.to_xml }
    let(:output_data) { parser.parse(output_xml) }
    let(:punch_out_order_message_output_data) { output_data[:message][:punch_out_order_message] }
    let(:item_in_output_data) { punch_out_order_message_output_data[:item_in] }
    let(:item_id_output_data) { item_in_output_data[:item_id] }

    it 'contains the required nodes' do
      item_id_output_data[:supplier_part_id].should_not be_empty
      item_id_output_data.should include(:supplier_part_auxiliary_id)
    end
  end
end
