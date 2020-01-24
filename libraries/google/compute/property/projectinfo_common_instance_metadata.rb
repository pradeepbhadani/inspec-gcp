# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/compute/property/projectinfo_common_instance_metadata_items'
module GoogleInSpec
  module Compute
    module Property
      class ProjectInfoCommonInstanceMetadata
        attr_reader :items

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @items = GoogleInSpec::Compute::Property::ProjectInfoCommonInstanceMetadataItemsArray.parse(args['items'], to_s)
        end

        def to_s
          "#{@parent_identifier} ProjectInfoCommonInstanceMetadata"
        end
      end
    end
  end
end
