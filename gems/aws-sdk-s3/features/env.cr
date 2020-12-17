# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

$:.unshift(File.expand_path('../../lib', __FILE__))
$:.unshift(File.expand_path('../../../aws-sdk-core/features', __FILE__))
$:.unshift(File.expand_path('../../../aws-sdk-kms/lib', __FILE__))
$:.unshift(File.expand_path('../../../aws-sigv4/lib', __FILE__))
$:.unshift(File.expand_path('../../../aws-sdk-core/lib', __FILE__))

require 'features_helper'
require 'aws-sdk-s3'

Aws::S3::Client.add_plugin(ApiCallTracker)