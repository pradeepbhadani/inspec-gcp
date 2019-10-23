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
require 'google/compute/property/urlmap_path_matchers_path_rules'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchers
        attr_reader :arguments

        attr_reader :default_service

        attr_reader :description

        attr_reader :name

        attr_reader :path_rules

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @default_service = arguments['defaultService']
          @description = arguments['description']
          @name = arguments['name']
          @path_rules = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesArray.parse(arguments['pathRules'], to_s)
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchers"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'default_service' => ->(x, path) { x.nil? ? [] : ["its('#{path}.default_service') { should cmp #{x.inspect} }"] },
            'description' => ->(x, path) { x.nil? ? [] : ["its('#{path}.description') { should cmp #{x.inspect} }"] },
            'name' => ->(x, path) { x.nil? ? [] : ["its('#{path}.name') { should cmp #{x.inspect} }"] },
            'path_rules' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.path_rules') { should include '#{single.to_json}' }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end

      class UrlMapPathMatchersArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapPathMatchers.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapPathMatchers.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| UrlMapPathMatchers.un_parse(v, path) }
        end
      end
    end
  end
end