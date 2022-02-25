# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
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
module GoogleInSpec
  module SQL
    module Property
      class ConnectServerCaCert
        attr_reader :cert

        attr_reader :cert_serial_number

        attr_reader :common_name

        attr_reader :sha1_fingerprint

        attr_reader :instance

        attr_reader :create_time

        attr_reader :expiration_time

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cert = args['cert']
          @cert_serial_number = args['certSerialNumber']
          @common_name = args['commonName']
          @sha1_fingerprint = args['sha1Fingerprint']
          @instance = args['instance']
          @create_time = parse_time_string(args['createTime'])
          @expiration_time = parse_time_string(args['expirationTime'])
        end

        def to_s
          "#{@parent_identifier} ConnectServerCaCert"
        end

        # Handles parsing RFC3339 time string
        def parse_time_string(time_string)
          time_string ? Time.parse(time_string) : nil
        end
      end
    end
  end
end
