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
require 'google/compute/property/backendservice_cdn_policy_cache_key_policy'
module GoogleInSpec
  module Compute
    module Property
      class BackendServiceCdnPolicy
        attr_reader :cache_key_policy

        def initialize(args = nil)
          return if args.nil?
          @cache_key_policy = GoogleInSpec::Compute::Property::BackendServiceCdnPolicyCacheKeyPolicy.new(args['cacheKeyPolicy'])
        end
      end
    end
  end
end
