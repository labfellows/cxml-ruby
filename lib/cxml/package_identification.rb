# frozen_string_literal: true

module CXML
  class PackageIdentification < DocumentNode
    accessible_attributes %i[
      range_begin
      range_end
    ]
  end
end
