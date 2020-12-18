# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lambda
  module Types

    # Limits that are related to concurrency and storage. All file and
    # storage sizes are in bytes.
    #
    # @!attribute [rw] total_code_size
    #   The amount of storage space that you can use for all deployment
    #   packages and layer archives.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_unzipped
    #   The maximum size of a function's deployment package and layers when
    #   they're extracted.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size_zipped
    #   The maximum size of a deployment package when it's uploaded
    #   directly to AWS Lambda. Use Amazon S3 for larger files.
    #   @return [Integer]
    #
    # @!attribute [rw] concurrent_executions
    #   The maximum number of simultaneous function executions.
    #   @return [Integer]
    #
    # @!attribute [rw] unreserved_concurrent_executions
    #   The maximum number of simultaneous function executions, minus the
    #   capacity that's reserved for individual functions with
    #   PutFunctionConcurrency.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AccountLimit AWS API Documentation
    #
    class AccountLimit < Struct.new(
      :total_code_size,
      :code_size_unzipped,
      :code_size_zipped,
      :concurrent_executions,
      :unreserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of functions and amount of storage in use.
    #
    # @!attribute [rw] total_code_size
    #   The amount of storage space, in bytes, that's being used by
    #   deployment packages and layer archives.
    #   @return [Integer]
    #
    # @!attribute [rw] function_count
    #   The number of Lambda functions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AccountUsage AWS API Documentation
    #
    class AccountUsage < Struct.new(
      :total_code_size,
      :function_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddLayerVersionPermissionRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         version_number: 1, # required
    #         statement_id: "StatementId", # required
    #         action: "LayerPermissionAllowedAction", # required
    #         principal: "LayerPermissionAllowedPrincipal", # required
    #         organization_id: "OrganizationId",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] statement_id
    #   An identifier that distinguishes the policy from others on the same
    #   layer version.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The API action that grants access to the layer. For example,
    #   `lambda:GetLayerVersion`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   An account ID, or `*` to grant permission to all AWS accounts.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   With the principal set to `*`, grant permission to all accounts in
    #   the specified organization.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since
    #   you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermissionRequest AWS API Documentation
    #
    class AddLayerVersionPermissionRequest < Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :action,
      :principal,
      :organization_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The permission statement.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddLayerVersionPermissionResponse AWS API Documentation
    #
    class AddLayerVersionPermissionResponse < Struct.new(
      :statement,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddPermissionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         statement_id: "StatementId", # required
    #         action: "Action", # required
    #         principal: "Principal", # required
    #         source_arn: "Arn",
    #         source_account: "SourceOwner",
    #         event_source_token: "EventSourceToken",
    #         qualifier: "Qualifier",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that the principal can use on the function. For example,
    #   `lambda:InvokeFunction` or `lambda:GetFunction`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS service or account that invokes the function. If you specify
    #   a service, use `SourceArn` or `SourceAccount` to limit who can
    #   invoke the function through that service.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   For AWS services, the ARN of the AWS resource that invokes the
    #   function. For example, an Amazon S3 bucket or Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   For Amazon S3, the ID of the account that owns the resource. Use
    #   this together with `SourceArn` to ensure that the resource is owned
    #   by the specified account. It is possible for an Amazon S3 bucket to
    #   be deleted by its owner and recreated by another account.
    #   @return [String]
    #
    # @!attribute [rw] event_source_token
    #   For Alexa Smart Home functions, a token that must be supplied by the
    #   invoker.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to add permissions to a published version
    #   of the function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermissionRequest AWS API Documentation
    #
    class AddPermissionRequest < Struct.new(
      :function_name,
      :statement_id,
      :action,
      :principal,
      :source_arn,
      :source_account,
      :event_source_token,
      :qualifier,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The permission statement that's added to the function policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermissionResponse AWS API Documentation
    #
    class AddPermissionResponse < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information about a Lambda function [alias][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
    #
    # @!attribute [rw] alias_arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier that changes when you update the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AliasConfiguration AWS API Documentation
    #
    class AliasConfiguration < Struct.new(
      :alias_arn,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [traffic-shifting][1] configuration of a Lambda function alias.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html
    #
    # @note When making an API call, you may pass AliasRoutingConfiguration
    #   data as a hash:
    #
    #       {
    #         additional_version_weights: {
    #           "AdditionalVersion" => 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] additional_version_weights
    #   The second version, and the percentage of traffic that's routed to
    #   it.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AliasRoutingConfiguration AWS API Documentation
    #
    class AliasRoutingConfiguration < Struct.new(
      :additional_version_weights)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of signing profiles that can sign a code package.
    #
    # @note When making an API call, you may pass AllowedPublishers
    #   data as a hash:
    #
    #       {
    #         signing_profile_version_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] signing_profile_version_arns
    #   The Amazon Resource Name (ARN) for each of the signing profiles. A
    #   signing profile defines a trusted user who can sign a code package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AllowedPublishers AWS API Documentation
    #
    class AllowedPublishers < Struct.new(
      :signing_profile_version_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Code signing configuration.
    #
    # @!attribute [rw] code_signing_config_id
    #   Unique identifer for the Code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] code_signing_config_arn
    #   The Amazon Resource Name (ARN) of the Code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Code signing configuration description.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   List of allowed publishers.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policy controls the validation failure action for
    #   signature mismatch or expiry.
    #   @return [Types::CodeSigningPolicies]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the Code signing configuration was last
    #   modified, in ISO-8601 format (YYYY-MM-DDThh:mm:ss.sTZD).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningConfig AWS API Documentation
    #
    class CodeSigningConfig < Struct.new(
      :code_signing_config_id,
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified code signing configuration does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningConfigNotFoundException AWS API Documentation
    #
    class CodeSigningConfigNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Code signing configuration policies specifies the validation failure
    # action for signature mismatch or expiry.
    #
    # @note When making an API call, you may pass CodeSigningPolicies
    #   data as a hash:
    #
    #       {
    #         untrusted_artifact_on_deployment: "Warn", # accepts Warn, Enforce
    #       }
    #
    # @!attribute [rw] untrusted_artifact_on_deployment
    #   Code signing configuration policy for deployment validation failure.
    #   If you set the policy to `Enforce`, Lambda blocks the deployment
    #   request if signature validation checks fail. If you set the policy
    #   to `Warn`, Lambda allows the deployment and creates a CloudWatch
    #   log.
    #
    #   Default value: `Warn`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeSigningPolicies AWS API Documentation
    #
    class CodeSigningPolicies < Struct.new(
      :untrusted_artifact_on_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your maximum total code size per account. [Learn
    # more][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeStorageExceededException AWS API Documentation
    #
    class CodeStorageExceededException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code signature failed one or more of the validation checks for
    # signature mismatch or expiry, and the code signing policy is set to
    # ENFORCE. Lambda blocks the deployment.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CodeVerificationFailedException AWS API Documentation
    #
    class CodeVerificationFailedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_concurrent_executions
    #   The number of concurrent executions that are reserved for this
    #   function. For more information, see [Managing Concurrency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Concurrency AWS API Documentation
    #
    class Concurrency < Struct.new(
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #         function_version: "Version", # required
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         allowed_publishers: { # required
    #           signing_profile_version_arns: ["Arn"], # required
    #         },
    #         code_signing_policies: {
    #           untrusted_artifact_on_deployment: "Warn", # accepts Warn, Enforce
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   Descriptive name for this code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   Signing profiles for this code signing configuration.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policies define the actions to take if the
    #   validation checks fail.
    #   @return [Types::CodeSigningPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateCodeSigningConfigRequest AWS API Documentation
    #
    class CreateCodeSigningConfigRequest < Struct.new(
      :description,
      :allowed_publishers,
      :code_signing_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration.
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateCodeSigningConfigResponse AWS API Documentation
    #
    class CreateCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         event_source_arn: "Arn",
    #         function_name: "FunctionName", # required
    #         enabled: false,
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         parallelization_factor: 1,
    #         starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #         starting_position_timestamp: Time.now,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn",
    #           },
    #           on_failure: {
    #             destination: "DestinationArn",
    #           },
    #         },
    #         maximum_record_age_in_seconds: 1,
    #         bisect_batch_on_function_error: false,
    #         maximum_retry_attempts: 1,
    #         tumbling_window_in_seconds: 1,
    #         topics: ["Topic"],
    #         queues: ["Queue"],
    #         source_access_configurations: [
    #           {
    #             type: "BASIC_AUTH", # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #             uri: "URI",
    #           },
    #         ],
    #         self_managed_event_source: {
    #           endpoints: {
    #             "KAFKA_BOOTSTRAP_SERVERS" => ["Endpoint"],
    #           },
    #         },
    #         function_response_types: ["ReportBatchItemFailures"], # accepts ReportBatchItemFailures
    #       }
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** - The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** - The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** - The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** - The ARN of the
    #     cluster.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If true, the event source mapping is active. Set to false to pause
    #   polling and invocation.
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of items to retrieve in a single batch.
    #
    #   * **Amazon Kinesis** - Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** - Default 100. Max 1,000.
    #
    #   * **Amazon Simple Queue Service** - Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** - Default 100. Max
    #     10,000.
    #
    #   * **Self-Managed Apache Kafka** - Default 100. Max 10,000.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   (Streams and SQS standard queues) The maximum amount of time to
    #   gather records before invoking the function, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams) The number of batches to process from each shard
    #   concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources.
    #   `AT_TIMESTAMP` is only supported for Amazon Kinesis streams.
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which
    #   to start reading.
    #   @return [Time]
    #
    # @!attribute [rw] destination_config
    #   (Streams) An Amazon SQS queue or Amazon SNS topic destination for
    #   discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams) Discard records older than the specified age. The default
    #   value is infinite (-1).
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Streams) If the function returns an error, split the batch in two
    #   and retry.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams) Discard records after the specified number of retries. The
    #   default value is infinite (-1). When set to infinite (-1), failed
    #   records will be retried until the record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Streams) The duration of a processing window in seconds. The range
    #   is between 1 second up to 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] topics
    #   The name of the Kafka topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] queues
    #   (MQ) The name of the Amazon MQ broker destination queue to consume.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of the authentication protocol, or the VPC components to
    #   secure your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] self_managed_event_source
    #   The Self-Managed Apache Kafka cluster to send records.
    #   @return [Types::SelfManagedEventSource]
    #
    # @!attribute [rw] function_response_types
    #   (Streams) A list of current response type enums applied to the event
    #   source mapping.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMappingRequest AWS API Documentation
    #
    class CreateEventSourceMappingRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :enabled,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :starting_position,
      :starting_position_timestamp,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :function_response_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #         role: "RoleArn", # required
    #         handler: "Handler",
    #         code: { # required
    #           zip_file: "data",
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key",
    #           s3_object_version: "S3ObjectVersion",
    #           image_uri: "String",
    #         },
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         publish: false,
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         package_type: "Zip", # accepts Zip, Image
    #         dead_letter_config: {
    #           target_arn: "ResourceArn",
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue",
    #           },
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active", # accepts Active, PassThrough
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         layers: ["LayerVersionArn"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           },
    #         ],
    #         image_config: {
    #           entry_point: ["String"],
    #           command: ["String"],
    #           working_directory: "WorkingDirectory",
    #         },
    #         code_signing_config_arn: "CodeSigningConfigArn",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The identifier of the function's [runtime][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The name of the method within your code that Lambda calls to execute
    #   your function. The format includes the file name. It can also
    #   include namespaces and other qualifiers, depending on the runtime.
    #   For more information, see [Programming Model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The code for the function.
    #   @return [Types::FunctionCode]
    #
    # @!attribute [rw] description
    #   A description of the function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it. The default is 3 seconds. The maximum allowed value is
    #   900 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory available to the function at runtime.
    #   Increasing the function's memory also increases its CPU allocation.
    #   The default value is 128 MB. The value can be any multiple of 1 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] publish
    #   Set to true to publish the first version of the function during
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_config
    #   For network connectivity to AWS resources in a VPC, specify a list
    #   of security groups and subnets in the VPC. When you connect a
    #   function to a VPC, it can only access resources and the internet
    #   through that VPC. For more information, see [VPC Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set `Zip` for ZIP archive.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   A dead letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing.
    #   For more information, see [Dead Letter Queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) key that's used
    #   to encrypt your function's environment variables. If it's not
    #   provided, AWS Lambda uses a default service key.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with AWS X-Ray.
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] image_config
    #   Configuration values that override the container image Dockerfile.
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] code_signing_config_arn
    #   To enable code signing for this function, specify the ARN of a
    #   code-signing configuration. A code-signing configuration includes a
    #   set of signing profiles, which define the trusted publishers for
    #   this function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunctionRequest AWS API Documentation
    #
    class CreateFunctionRequest < Struct.new(
      :function_name,
      :runtime,
      :role,
      :handler,
      :code,
      :description,
      :timeout,
      :memory_size,
      :publish,
      :vpc_config,
      :package_type,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :tags,
      :layers,
      :file_system_configs,
      :image_config,
      :code_signing_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [dead-letter queue][1] for failed asynchronous invocations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq
    #
    # @note When making an API call, you may pass DeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         target_arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    #   topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAliasRequest AWS API Documentation
    #
    class DeleteAliasRequest < Struct.new(
      :function_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #       }
    #
    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteCodeSigningConfigRequest AWS API Documentation
    #
    class DeleteCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteCodeSigningConfigResponse AWS API Documentation
    #
    class DeleteCodeSigningConfigResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #       }
    #
    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMappingRequest AWS API Documentation
    #
    class DeleteEventSourceMappingRequest < Struct.new(
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class DeleteFunctionCodeSigningConfigRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrencyRequest AWS API Documentation
    #
    class DeleteFunctionConcurrencyRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionEventInvokeConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class DeleteFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function or version.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:1`
    #     (with version).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version to delete. You can't delete a version that's
    #   referenced by an alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLayerVersionRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         version_number: 1, # required
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteLayerVersionRequest AWS API Documentation
    #
    class DeleteLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProvisionedConcurrencyConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class DeleteProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration object that specifies the destination of an event
    # after Lambda processes it.
    #
    # @note When making an API call, you may pass DestinationConfig
    #   data as a hash:
    #
    #       {
    #         on_success: {
    #           destination: "DestinationArn",
    #         },
    #         on_failure: {
    #           destination: "DestinationArn",
    #         },
    #       }
    #
    # @!attribute [rw] on_success
    #   The destination configuration for successful invocations.
    #   @return [Types::OnSuccess]
    #
    # @!attribute [rw] on_failure
    #   The destination configuration for failed invocations.
    #   @return [Types::OnFailure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DestinationConfig AWS API Documentation
    #
    class DestinationConfig < Struct.new(
      :on_success,
      :on_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # Need additional permissions to configure VPC settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2AccessDeniedException AWS API Documentation
    #
    class EC2AccessDeniedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Lambda was throttled by Amazon EC2 during Lambda function
    # initialization using the execution role provided for the Lambda
    # function.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2ThrottledException AWS API Documentation
    #
    class EC2ThrottledException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Lambda received an unexpected EC2 client exception while setting
    # up for the Lambda function.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] ec2_error_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EC2UnexpectedException AWS API Documentation
    #
    class EC2UnexpectedException < Struct.new(
      :type,
      :message,
      :ec2_error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occured when reading from or writing to a connected file
    # system.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSIOException AWS API Documentation
    #
    class EFSIOException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function couldn't make a network connection to the configured
    # file system.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountConnectivityException AWS API Documentation
    #
    class EFSMountConnectivityException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function couldn't mount the configured file system due to a
    # permission or configuration issue.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountFailureException AWS API Documentation
    #
    class EFSMountFailureException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function was able to make a network connection to the configured
    # file system, but the mount operation timed out.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EFSMountTimeoutException AWS API Documentation
    #
    class EFSMountTimeoutException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Lambda was not able to create an elastic network interface in the
    # VPC, specified as part of Lambda function configuration, because the
    # limit for network interfaces has been reached.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ENILimitReachedException AWS API Documentation
    #
    class ENILimitReachedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A function's environment variable settings.
    #
    # @note When making an API call, you may pass Environment
    #   data as a hash:
    #
    #       {
    #         variables: {
    #           "EnvironmentVariableName" => "EnvironmentVariableValue",
    #         },
    #       }
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :variables)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # Error messages for environment variables that couldn't be applied.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentError AWS API Documentation
    #
    class EnvironmentError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The results of an operation to update or read environment variables.
    # If the operation is successful, the response contains the environment
    # variables. If it failed, the response contains details about the
    # error.
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   Error messages for environment variables that couldn't be applied.
    #   @return [Types::EnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EnvironmentResponse AWS API Documentation
    #
    class EnvironmentResponse < Struct.new(
      :variables,
      :error)
      SENSITIVE = [:variables]
      include Aws::Structure
    end

    # A mapping between an AWS resource and an AWS Lambda function. See
    # CreateEventSourceMapping for details.
    #
    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   The position in a stream from which to start reading. Required for
    #   Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources.
    #   `AT_TIMESTAMP` is only supported for Amazon Kinesis streams.
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which
    #   to start reading.
    #   @return [Time]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of items to retrieve in a single batch.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   (Streams and SQS standard queues) The maximum amount of time to
    #   gather records before invoking the function, in seconds. The default
    #   value is zero.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams) The number of batches to process from each shard
    #   concurrently. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date that the event source mapping was last updated, or its
    #   state changed.
    #   @return [Time]
    #
    # @!attribute [rw] last_processing_result
    #   The result of the last AWS Lambda invocation of your Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source mapping. It can be one of the
    #   following: `Creating`, `Enabling`, `Enabled`, `Disabling`,
    #   `Disabled`, `Updating`, or `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] state_transition_reason
    #   Indicates whether the last change to the event source mapping was
    #   made by a user, or by the Lambda service.
    #   @return [String]
    #
    # @!attribute [rw] destination_config
    #   (Streams) An Amazon SQS queue or Amazon SNS topic destination for
    #   discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] topics
    #   The name of the Kafka topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] queues
    #   (MQ) The name of the Amazon MQ broker destination queue to consume.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of the authentication protocol, or the VPC components to
    #   secure your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] self_managed_event_source
    #   The Self-Managed Apache Kafka cluster for your event source.
    #   @return [Types::SelfManagedEventSource]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams) Discard records older than the specified age. The default
    #   value is infinite (-1). When set to infinite (-1), failed records
    #   are retried until the record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Streams) If the function returns an error, split the batch in two
    #   and retry. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams) Discard records after the specified number of retries. The
    #   default value is infinite (-1). When set to infinite (-1), failed
    #   records are retried until the record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Streams) The duration of a processing window in seconds. The range
    #   is between 1 second up to 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] function_response_types
    #   (Streams) A list of current response type enums applied to the event
    #   source mapping.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/EventSourceMappingConfiguration AWS API Documentation
    #
    class EventSourceMappingConfiguration < Struct.new(
      :uuid,
      :starting_position,
      :starting_position_timestamp,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :parallelization_factor,
      :event_source_arn,
      :function_arn,
      :last_modified,
      :last_processing_result,
      :state,
      :state_transition_reason,
      :destination_config,
      :topics,
      :queues,
      :source_access_configurations,
      :self_managed_event_source,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :tumbling_window_in_seconds,
      :function_response_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the connection between a Lambda function and an Amazon
    # EFS file system.
    #
    # @note When making an API call, you may pass FileSystemConfig
    #   data as a hash:
    #
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS access point that
    #   provides access to the file system.
    #   @return [String]
    #
    # @!attribute [rw] local_mount_path
    #   The path where the function can access the file system, starting
    #   with `/mnt/`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FileSystemConfig AWS API Documentation
    #
    class FileSystemConfig < Struct.new(
      :arn,
      :local_mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code for the Lambda function. You can specify either an object in
    # Amazon S3, upload a .zip file archive deployment package directly, or
    # specify the URI of a container image.
    #
    # @note When making an API call, you may pass FunctionCode
    #   data as a hash:
    #
    #       {
    #         zip_file: "data",
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #         image_uri: "String",
    #       }
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. AWS SDK and
    #   AWS CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same AWS Region as your function. The
    #   bucket can be in a different AWS account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a container image in the Amazon ECR registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCode AWS API Documentation
    #
    class FunctionCode < Struct.new(
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # Details about a function's deployment package.
    #
    # @!attribute [rw] repository_type
    #   The service that's hosting the file.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A presigned URL that you can use to download the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a container image in the Amazon ECR registry.
    #   @return [String]
    #
    # @!attribute [rw] resolved_image_uri
    #   The resolved URI for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionCodeLocation AWS API Documentation
    #
    class FunctionCodeLocation < Struct.new(
      :repository_type,
      :location,
      :image_uri,
      :resolved_image_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a function's configuration.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin executing your function.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the function's deployment package, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The function's description.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time in seconds that Lambda allows a function to run
    #   before stopping it.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory available to the function at runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified
    #   The date and time that the function was last updated, in [ISO-8601
    #   format][1] (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The function's networking configuration.
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] dead_letter_config
    #   The function's dead letter queue.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The function's environment variables.
    #   @return [Types::EnvironmentResponse]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key that's used to encrypt the function's environment
    #   variables. This key is only returned if you've configured a
    #   customer managed CMK.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   The function's AWS X-Ray tracing configuration.
    #   @return [Types::TracingConfigResponse]
    #
    # @!attribute [rw] master_arn
    #   For Lambda@Edge functions, the ARN of the master function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The latest updated revision of the function or alias.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The function's [ layers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<Types::Layer>]
    #
    # @!attribute [rw] state
    #   The current state of the function. When the state is `Inactive`, you
    #   can reactivate the function by invoking it.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the function's current state.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   The reason code for the function's current state. When the code is
    #   `Creating`, you can't invoke or modify the function.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the last update that was performed on the function.
    #   This is first set to `Successful` after function creation completes.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason
    #   The reason for the last update that was performed on the function.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason_code
    #   The reason code for the last update that was performed on the
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] package_type
    #   The type of deployment package. Set to `Image` for container image
    #   and set `Zip` for .zip file archive.
    #   @return [String]
    #
    # @!attribute [rw] image_config_response
    #   The function's image configuration values.
    #   @return [Types::ImageConfigResponse]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The ARN of the signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The ARN of the signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionConfiguration AWS API Documentation
    #
    class FunctionConfiguration < Struct.new(
      :function_name,
      :function_arn,
      :runtime,
      :role,
      :handler,
      :code_size,
      :description,
      :timeout,
      :memory_size,
      :last_modified,
      :code_sha_256,
      :version,
      :vpc_config,
      :dead_letter_config,
      :environment,
      :kms_key_arn,
      :tracing_config,
      :master_arn,
      :revision_id,
      :layers,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :file_system_configs,
      :package_type,
      :image_config_response,
      :signing_profile_version_arn,
      :signing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] last_modified
    #   The date and time that the configuration was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the function.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of an SQS queue.
    #
    #   * **Topic** - The ARN of an SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/FunctionEventInvokeConfig AWS API Documentation
    #
    class FunctionEventInvokeConfig < Struct.new(
      :last_modified,
      :function_arn,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_limit
    #   Limits that are related to concurrency and code storage.
    #   @return [Types::AccountLimit]
    #
    # @!attribute [rw] account_usage
    #   The number of functions and amount of storage in use.
    #   @return [Types::AccountUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_limit,
      :account_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAliasRequest AWS API Documentation
    #
    class GetAliasRequest < Struct.new(
      :function_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #       }
    #
    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetCodeSigningConfigRequest AWS API Documentation
    #
    class GetCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetCodeSigningConfigResponse AWS API Documentation
    #
    class GetCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #       }
    #
    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMappingRequest AWS API Documentation
    #
    class GetEventSourceMappingRequest < Struct.new(
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class GetFunctionCodeSigningConfigRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionCodeSigningConfigResponse AWS API Documentation
    #
    class GetFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConcurrencyRequest AWS API Documentation
    #
    class GetFunctionConcurrencyRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_concurrent_executions
    #   The number of simultaneous executions that are reserved for the
    #   function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConcurrencyResponse AWS API Documentation
    #
    class GetFunctionConcurrencyResponse < Struct.new(
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get details about a published version
    #   of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfigurationRequest AWS API Documentation
    #
    class GetFunctionConfigurationRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionEventInvokeConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class GetFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get details about a published version
    #   of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration of the function or version.
    #   @return [Types::FunctionConfiguration]
    #
    # @!attribute [rw] code
    #   The deployment package of the function or version.
    #   @return [Types::FunctionCodeLocation]
    #
    # @!attribute [rw] tags
    #   The function's [tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] concurrency
    #   The function's [reserved concurrency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html
    #   @return [Types::Concurrency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionResponse AWS API Documentation
    #
    class GetFunctionResponse < Struct.new(
      :configuration,
      :code,
      :tags,
      :concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLayerVersionByArnRequest
    #   data as a hash:
    #
    #       {
    #         arn: "LayerVersionArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionByArnRequest AWS API Documentation
    #
    class GetLayerVersionByArnRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLayerVersionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         version_number: 1, # required
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicyRequest AWS API Documentation
    #
    class GetLayerVersionPolicyRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy document.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionPolicyResponse AWS API Documentation
    #
    class GetLayerVersionPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLayerVersionRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         version_number: 1, # required
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionRequest AWS API Documentation
    #
    class GetLayerVersionRequest < Struct.new(
      :layer_name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Details about the layer version.
    #   @return [Types::LayerVersionContentOutput]
    #
    # @!attribute [rw] layer_arn
    #   The ARN of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the layer version was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetLayerVersionResponse AWS API Documentation
    #
    class GetLayerVersionResponse < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to get the policy for that resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProvisionedConcurrencyConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class GetProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetProvisionedConcurrencyConfigResponse AWS API Documentation
    #
    class GetProvisionedConcurrencyConfigResponse < Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration values that override the container image Dockerfile
    # settings. See [Container settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html
    #
    # @note When making an API call, you may pass ImageConfig
    #   data as a hash:
    #
    #       {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory",
    #       }
    #
    # @!attribute [rw] entry_point
    #   Specifies the entry point to their application, which is typically
    #   the location of the runtime executable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   Specifies parameters that you want to pass in with ENTRYPOINT.
    #   @return [Array<String>]
    #
    # @!attribute [rw] working_directory
    #   Specifies the working directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfig AWS API Documentation
    #
    class ImageConfig < Struct.new(
      :entry_point,
      :command,
      :working_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error response to GetFunctionConfiguration.
    #
    # @!attribute [rw] error_code
    #   Error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfigError AWS API Documentation
    #
    class ImageConfigError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Response to GetFunctionConfiguration request.
    #
    # @!attribute [rw] image_config
    #   Configuration values that override the container image Dockerfile.
    #   @return [Types::ImageConfig]
    #
    # @!attribute [rw] error
    #   Error response to GetFunctionConfiguration.
    #   @return [Types::ImageConfigError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ImageConfigResponse AWS API Documentation
    #
    class ImageConfigResponse < Struct.new(
      :image_config,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code signature failed the integrity check. Lambda always blocks
    # deployment if the integrity check fails, even if code signing policy
    # is set to WARN.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidCodeSignatureException AWS API Documentation
    #
    class InvalidCodeSignatureException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is invalid.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body could not be parsed as JSON.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidRequestContentException AWS API Documentation
    #
    class InvalidRequestContentException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The runtime or runtime version specified is not supported.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidRuntimeException AWS API Documentation
    #
    class InvalidRuntimeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Security Group ID provided in the Lambda function VPC
    # configuration is invalid.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidSecurityGroupIDException AWS API Documentation
    #
    class InvalidSecurityGroupIDException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Subnet ID provided in the Lambda function VPC configuration is
    # invalid.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidSubnetIDException AWS API Documentation
    #
    class InvalidSubnetIDException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Lambda could not unzip the deployment package.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvalidZipFileException AWS API Documentation
    #
    class InvalidZipFileException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvocationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         invocation_type: "Event", # accepts Event, RequestResponse, DryRun
    #         log_type: "None", # accepts None, Tail
    #         client_context: "String",
    #         payload: "data",
    #         qualifier: "Qualifier",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   Choose from the following options.
    #
    #   * `RequestResponse` (default) - Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API response includes the function response and
    #     additional data.
    #
    #   * `Event` - Invoke the function asynchronously. Send events that
    #     fail multiple times to the function's dead-letter queue (if it's
    #     configured). The API response only includes a status code.
    #
    #   * `DryRun` - Validate parameter values and verify that the user or
    #     role has permission to invoke the function.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   Set to `Tail` to include the execution log in the response.
    #   @return [String]
    #
    # @!attribute [rw] client_context
    #   Up to 3583 bytes of base64-encoded data about the invoking client to
    #   pass to the function in the context object.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The JSON that you want to provide to your Lambda function as input.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to invoke a published version of the
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvocationRequest AWS API Documentation
    #
    class InvocationRequest < Struct.new(
      :function_name,
      :invocation_type,
      :log_type,
      :client_context,
      :payload,
      :qualifier)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The HTTP status code is in the 200 range for a successful request.
    #   For the `RequestResponse` invocation type, this status code is 200.
    #   For the `Event` invocation type, this status code is 202. For the
    #   `DryRun` invocation type, the status code is 204.
    #   @return [Integer]
    #
    # @!attribute [rw] function_error
    #   If present, indicates that an error occurred during function
    #   execution. Details about the error are included in the response
    #   payload.
    #   @return [String]
    #
    # @!attribute [rw] log_result
    #   The last 4 KB of the execution log, which is base64 encoded.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The response from the function, or an error object.
    #   @return [String]
    #
    # @!attribute [rw] executed_version
    #   The version of the function that executed. When you invoke a
    #   function with an alias, this indicates which version the alias
    #   resolved to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvocationResponse AWS API Documentation
    #
    class InvocationResponse < Struct.new(
      :status_code,
      :function_error,
      :log_result,
      :payload,
      :executed_version)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvokeAsyncRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         invoke_args: "data", # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] invoke_args
    #   The JSON that you want to provide to your Lambda function as input.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncRequest AWS API Documentation
    #
    class InvokeAsyncRequest < Struct.new(
      :function_name,
      :invoke_args)
      SENSITIVE = []
      include Aws::Structure
    end

    # A success response (`202 Accepted`) indicates that the request is
    # queued for invocation.
    #
    # @!attribute [rw] status
    #   The status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsyncResponse AWS API Documentation
    #
    class InvokeAsyncResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda was unable to decrypt the environment variables because KMS
    # access was denied. Check the Lambda function's KMS permissions.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSAccessDeniedException AWS API Documentation
    #
    class KMSAccessDeniedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda was unable to decrypt the environment variables because the KMS
    # key used is disabled. Check the Lambda function's KMS key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSDisabledException AWS API Documentation
    #
    class KMSDisabledException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda was unable to decrypt the environment variables because the KMS
    # key used is in an invalid state for Decrypt. Check the function's KMS
    # key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSInvalidStateException AWS API Documentation
    #
    class KMSInvalidStateException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda was unable to decrypt the environment variables because the KMS
    # key was not found. Check the function's KMS key settings.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/KMSNotFoundException AWS API Documentation
    #
    class KMSNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An [AWS Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The Amazon Resource Name (ARN) for a signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The Amazon Resource Name (ARN) of a signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Layer AWS API Documentation
    #
    class Layer < Struct.new(
      :arn,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ZIP archive that contains the contents of an [AWS Lambda layer][1].
    # You can specify either an Amazon S3 location, or upload a layer
    # archive directly.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @note When making an API call, you may pass LayerVersionContentInput
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #         zip_file: "data",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the layer archive object to
    #   use.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the layer archive. AWS SDK and AWS
    #   CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionContentInput AWS API Documentation
    #
    class LayerVersionContentInput < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # Details about a version of an [AWS Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] location
    #   A link to the layer archive in Amazon S3 that is valid for 10
    #   minutes.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA-256 hash of the layer archive.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] signing_profile_version_arn
    #   The Amazon Resource Name (ARN) for a signing profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_job_arn
    #   The Amazon Resource Name (ARN) of a signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionContentOutput AWS API Documentation
    #
    class LayerVersionContentOutput < Struct.new(
      :location,
      :code_sha_256,
      :code_size,
      :signing_profile_version_arn,
      :signing_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a version of an [AWS Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the version was created, in ISO 8601 format. For
    #   example, `2018-11-27T15:10:45.123+0000`.
    #   @return [Time]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's open-source license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayerVersionsListItem AWS API Documentation
    #
    class LayerVersionsListItem < Struct.new(
      :layer_version_arn,
      :version,
      :description,
      :created_date,
      :compatible_runtimes,
      :license_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an [AWS Lambda layer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #
    # @!attribute [rw] layer_name
    #   The name of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] latest_matching_version
    #   The newest version of the layer.
    #   @return [Types::LayerVersionsListItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/LayersListItem AWS API Documentation
    #
    class LayersListItem < Struct.new(
      :layer_name,
      :layer_arn,
      :latest_matching_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAliasesRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         function_version: "Version",
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Specify a function version to only list aliases that invoke that
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Limit the number of aliases returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliasesRequest AWS API Documentation
    #
    class ListAliasesRequest < Struct.new(
      :function_name,
      :function_version,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   A list of aliases.
    #   @return [Array<Types::AliasConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliasesResponse AWS API Documentation
    #
    class ListAliasesResponse < Struct.new(
      :next_marker,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCodeSigningConfigsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListCodeSigningConfigsRequest AWS API Documentation
    #
    class ListCodeSigningConfigsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] code_signing_configs
    #   The code signing configurations
    #   @return [Array<Types::CodeSigningConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListCodeSigningConfigsResponse AWS API Documentation
    #
    class ListCodeSigningConfigsResponse < Struct.new(
      :next_marker,
      :code_signing_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventSourceMappingsRequest
    #   data as a hash:
    #
    #       {
    #         event_source_arn: "Arn",
    #         function_name: "FunctionName",
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] event_source_arn
    #   The Amazon Resource Name (ARN) of the event source.
    #
    #   * **Amazon Kinesis** - The ARN of the data stream or a stream
    #     consumer.
    #
    #   * **Amazon DynamoDB Streams** - The ARN of the stream.
    #
    #   * **Amazon Simple Queue Service** - The ARN of the queue.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** - The ARN of the
    #     cluster.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of event source mappings to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsRequest AWS API Documentation
    #
    class ListEventSourceMappingsRequest < Struct.new(
      :event_source_arn,
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token that's returned when the response doesn't
    #   contain all event source mappings.
    #   @return [String]
    #
    # @!attribute [rw] event_source_mappings
    #   A list of event source mappings.
    #   @return [Array<Types::EventSourceMappingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappingsResponse AWS API Documentation
    #
    class ListEventSourceMappingsResponse < Struct.new(
      :next_marker,
      :event_source_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionEventInvokeConfigsRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of configurations to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionEventInvokeConfigsRequest AWS API Documentation
    #
    class ListFunctionEventInvokeConfigsRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_event_invoke_configs
    #   A list of configurations.
    #   @return [Array<Types::FunctionEventInvokeConfig>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionEventInvokeConfigsResponse AWS API Documentation
    #
    class ListFunctionEventInvokeConfigsResponse < Struct.new(
      :function_event_invoke_configs,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionsByCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsByCodeSigningConfigRequest AWS API Documentation
    #
    class ListFunctionsByCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] function_arns
    #   The function ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsByCodeSigningConfigResponse AWS API Documentation
    #
    class ListFunctionsByCodeSigningConfigResponse < Struct.new(
      :next_marker,
      :function_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFunctionsRequest
    #   data as a hash:
    #
    #       {
    #         master_region: "MasterRegion",
    #         function_version: "ALL", # accepts ALL
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] master_region
    #   For Lambda@Edge functions, the AWS Region of the master function.
    #   For example, `us-east-1` filters the list of functions to only
    #   include Lambda@Edge functions replicated from a master function in
    #   US East (N. Virginia). If specified, you must set `FunctionVersion`
    #   to `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   Set to `ALL` to include entries for all published versions of each
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of functions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :master_region,
      :function_version,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Lambda functions.
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] functions
    #   A list of Lambda functions.
    #   @return [Array<Types::FunctionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctionsResponse AWS API Documentation
    #
    class ListFunctionsResponse < Struct.new(
      :next_marker,
      :functions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLayerVersionsRequest
    #   data as a hash:
    #
    #       {
    #         compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #         layer_name: "LayerName", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #   @return [String]
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of versions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersionsRequest AWS API Documentation
    #
    class ListLayerVersionsRequest < Struct.new(
      :compatible_runtime,
      :layer_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token returned when the response doesn't contain all
    #   versions.
    #   @return [String]
    #
    # @!attribute [rw] layer_versions
    #   A list of versions.
    #   @return [Array<Types::LayerVersionsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayerVersionsResponse AWS API Documentation
    #
    class ListLayerVersionsResponse < Struct.new(
      :next_marker,
      :layer_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLayersRequest
    #   data as a hash:
    #
    #       {
    #         compatible_runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] compatible_runtime
    #   A runtime identifier. For example, `go1.x`.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token returned by a previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of layers to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayersRequest AWS API Documentation
    #
    class ListLayersRequest < Struct.new(
      :compatible_runtime,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   A pagination token returned when the response doesn't contain all
    #   layers.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   A list of function layers.
    #   @return [Array<Types::LayersListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListLayersResponse AWS API Documentation
    #
    class ListLayersResponse < Struct.new(
      :next_marker,
      :layers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisionedConcurrencyConfigsRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Specify a number to limit the number of configurations returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListProvisionedConcurrencyConfigsRequest AWS API Documentation
    #
    class ListProvisionedConcurrencyConfigsRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_concurrency_configs
    #   A list of provisioned concurrency configurations.
    #   @return [Array<Types::ProvisionedConcurrencyConfigListItem>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListProvisionedConcurrencyConfigsResponse AWS API Documentation
    #
    class ListProvisionedConcurrencyConfigsResponse < Struct.new(
      :provisioned_concurrency_configs,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #       }
    #
    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The function's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVersionsByFunctionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "NamespacedFunctionName", # required
    #         marker: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of versions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunctionRequest AWS API Documentation
    #
    class ListVersionsByFunctionRequest < Struct.new(
      :function_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_marker
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   A list of Lambda function versions.
    #   @return [Array<Types::FunctionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunctionResponse AWS API Documentation
    #
    class ListVersionsByFunctionResponse < Struct.new(
      :next_marker,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A destination for events that failed processing.
    #
    # @note When making an API call, you may pass OnFailure
    #   data as a hash:
    #
    #       {
    #         destination: "DestinationArn",
    #       }
    #
    # @!attribute [rw] destination
    #   The Amazon Resource Name (ARN) of the destination resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/OnFailure AWS API Documentation
    #
    class OnFailure < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A destination for events that were processed successfully.
    #
    # @note When making an API call, you may pass OnSuccess
    #   data as a hash:
    #
    #       {
    #         destination: "DestinationArn",
    #       }
    #
    # @!attribute [rw] destination
    #   The Amazon Resource Name (ARN) of the destination resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/OnSuccess AWS API Documentation
    #
    class OnSuccess < Struct.new(
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The permissions policy for the resource is too large. [Learn more][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PolicyLengthExceededException AWS API Documentation
    #
    class PolicyLengthExceededException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RevisionId provided does not match the latest RevisionId for the
    # Lambda function or alias. Call the `GetFunction` or the `GetAlias` API
    # to retrieve the latest RevisionId for your resource.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the provisioned concurrency configuration for a function
    # alias or version.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the alias or version.
    #   @return [String]
    #
    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ProvisionedConcurrencyConfigListItem AWS API Documentation
    #
    class ProvisionedConcurrencyConfigListItem < Struct.new(
      :function_arn,
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ProvisionedConcurrencyConfigNotFoundException AWS API Documentation
    #
    class ProvisionedConcurrencyConfigNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishLayerVersionRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         description: "Description",
    #         content: { # required
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key",
    #           s3_object_version: "S3ObjectVersion",
    #           zip_file: "data",
    #         },
    #         compatible_runtimes: ["nodejs"], # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #         license_info: "LicenseInfo",
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The function layer archive.
    #   @return [Types::LayerVersionContentInput]
    #
    # @!attribute [rw] compatible_runtimes
    #   A list of compatible [function runtimes][1]. Used for filtering with
    #   ListLayers and ListLayerVersions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license. It can be any of the following:
    #
    #   * An [SPDX license identifier][1]. For example, `MIT`.
    #
    #   * The URL of a license hosted on the internet. For example,
    #     `https://opensource.org/licenses/MIT`.
    #
    #   * The full text of the license.
    #
    #
    #
    #   [1]: https://spdx.org/licenses/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersionRequest AWS API Documentation
    #
    class PublishLayerVersionRequest < Struct.new(
      :layer_name,
      :description,
      :content,
      :compatible_runtimes,
      :license_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Details about the layer version.
    #   @return [Types::LayerVersionContentOutput]
    #
    # @!attribute [rw] layer_arn
    #   The ARN of the layer.
    #   @return [String]
    #
    # @!attribute [rw] layer_version_arn
    #   The ARN of the layer version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the layer version was created, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_info
    #   The layer's software license.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishLayerVersionResponse AWS API Documentation
    #
    class PublishLayerVersionResponse < Struct.new(
      :content,
      :layer_arn,
      :layer_version_arn,
      :description,
      :created_date,
      :version,
      :compatible_runtimes,
      :license_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishVersionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         code_sha_256: "String",
    #         description: "Description",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] code_sha_256
    #   Only publish a version if the hash value matches the value that's
    #   specified. Use this option to avoid publishing a version if the
    #   function code has changed since you last updated it. You can get the
    #   hash for the version that you uploaded from the output of
    #   UpdateFunctionCode.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the version to override the description in the
    #   function configuration.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid publishing a version if the
    #   function configuration has changed since you last updated it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersionRequest AWS API Documentation
    #
    class PublishVersionRequest < Struct.new(
      :function_name,
      :code_sha_256,
      :description,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFunctionCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #         function_name: "FunctionName", # required
    #       }
    #
    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionCodeSigningConfigRequest AWS API Documentation
    #
    class PutFunctionCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionCodeSigningConfigResponse AWS API Documentation
    #
    class PutFunctionCodeSigningConfigResponse < Struct.new(
      :code_signing_config_arn,
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFunctionConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         reserved_concurrent_executions: 1, # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] reserved_concurrent_executions
    #   The number of simultaneous executions to reserve for the function.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrencyRequest AWS API Documentation
    #
    class PutFunctionConcurrencyRequest < Struct.new(
      :function_name,
      :reserved_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFunctionEventInvokeConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn",
    #           },
    #           on_failure: {
    #             destination: "DestinationArn",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of an SQS queue.
    #
    #   * **Topic** - The ARN of an SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class PutFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProvisionedConcurrencyConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier", # required
    #         provisioned_concurrent_executions: 1, # required
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_concurrent_executions
    #   The amount of provisioned concurrency to allocate for the version or
    #   alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutProvisionedConcurrencyConfigRequest AWS API Documentation
    #
    class PutProvisionedConcurrencyConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :provisioned_concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_provisioned_concurrent_executions
    #   The amount of provisioned concurrency requested.
    #   @return [Integer]
    #
    # @!attribute [rw] available_provisioned_concurrent_executions
    #   The amount of provisioned concurrency available.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_provisioned_concurrent_executions
    #   The amount of provisioned concurrency allocated.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the allocation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   For failed allocations, the reason that provisioned concurrency
    #   could not be allocated.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time that a user last updated the configuration, in
    #   [ISO 8601 format][1].
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutProvisionedConcurrencyConfigResponse AWS API Documentation
    #
    class PutProvisionedConcurrencyConfigResponse < Struct.new(
      :requested_provisioned_concurrent_executions,
      :available_provisioned_concurrent_executions,
      :allocated_provisioned_concurrent_executions,
      :status,
      :status_reason,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveLayerVersionPermissionRequest
    #   data as a hash:
    #
    #       {
    #         layer_name: "LayerName", # required
    #         version_number: 1, # required
    #         statement_id: "StatementId", # required
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] layer_name
    #   The name or Amazon Resource Name (ARN) of the layer.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] statement_id
    #   The identifier that was specified when the statement was added.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID specified.
    #   Use this option to avoid modifying a policy that has changed since
    #   you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemoveLayerVersionPermissionRequest AWS API Documentation
    #
    class RemoveLayerVersionPermissionRequest < Struct.new(
      :layer_name,
      :version_number,
      :statement_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         statement_id: "NamespacedStatementId", # required
    #         qualifier: "Qualifier",
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   Statement ID of the permission to remove.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Specify a version or alias to remove permissions from a published
    #   version of the function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Only update the policy if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a policy that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :function_name,
      :statement_id,
      :qualifier,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request payload exceeded the `Invoke` request body JSON input
    # limit. For more information, see [Limits][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RequestTooLargeException AWS API Documentation
    #
    class RequestTooLargeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists, or another operation is in progress.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation conflicts with the resource's availability. For
    # example, you attempted to update an EventSource Mapping in CREATING,
    # or tried to delete a EventSource mapping currently in the UPDATING
    # state.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request does not exist.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function is inactive and its VPC connection is no longer
    # available. Wait for the VPC connection to reestablish and try again.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Self-Managed Apache Kafka cluster for your event source.
    #
    # @note When making an API call, you may pass SelfManagedEventSource
    #   data as a hash:
    #
    #       {
    #         endpoints: {
    #           "KAFKA_BOOTSTRAP_SERVERS" => ["Endpoint"],
    #         },
    #       }
    #
    # @!attribute [rw] endpoints
    #   The list of bootstrap servers for your Kafka brokers in the
    #   following format: `"KAFKA_BOOTSTRAP_SERVERS":
    #   ["abc.xyz.com:xxxx","abc2.xyz.com:xxxx"]`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SelfManagedEventSource AWS API Documentation
    #
    class SelfManagedEventSource < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Lambda service encountered an internal error.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can specify the authentication protocol, or the VPC components to
    # secure access to your event source.
    #
    # @note When making an API call, you may pass SourceAccessConfiguration
    #   data as a hash:
    #
    #       {
    #         type: "BASIC_AUTH", # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #         uri: "URI",
    #       }
    #
    # @!attribute [rw] type
    #   The type of authentication protocol or the VPC components for your
    #   event source. For example: `"Type":"SASL_SCRAM_512_AUTH"`.
    #
    #   * `BASIC_AUTH` - (MQ) The Secrets Manager secret that stores your
    #     broker credentials.
    #
    #   * `VPC_SUBNET` - The subnets associated with your VPC. Lambda
    #     connects to these subnets to fetch data from your Kafka cluster.
    #
    #   * `VPC_SECURITY_GROUP` - The VPC security group used to manage
    #     access to your Kafka brokers.
    #
    #   * `SASL_SCRAM_256_AUTH` - The ARN of your secret key used for SASL
    #     SCRAM-256 authentication of your Kafka brokers.
    #
    #   * `SASL_SCRAM_512_AUTH` - The ARN of your secret key used for SASL
    #     SCRAM-512 authentication of your Kafka brokers.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The value for your chosen configuration in `Type`. For example:
    #   `"URI":
    #   "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SourceAccessConfiguration AWS API Documentation
    #
    class SourceAccessConfiguration < Struct.new(
      :type,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Lambda was not able to set up VPC access for the Lambda function
    # because one or more configured subnets has no available IP addresses.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/SubnetIPAddressLimitReachedException AWS API Documentation
    #
    class SubnetIPAddressLimitReachedException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :retry_after_seconds,
      :type,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's AWS X-Ray tracing configuration. To sample and record
    # incoming requests, set `Mode` to `Active`.
    #
    # @note When making an API call, you may pass TracingConfig
    #   data as a hash:
    #
    #       {
    #         mode: "Active", # accepts Active, PassThrough
    #       }
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfig AWS API Documentation
    #
    class TracingConfig < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's AWS X-Ray tracing configuration.
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TracingConfigResponse AWS API Documentation
    #
    class TracingConfigResponse < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content type of the `Invoke` request body is not JSON.
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UnsupportedMediaTypeException AWS API Documentation
    #
    class UnsupportedMediaTypeException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "FunctionArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource
    #   The function's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the function.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAliasRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         name: "Alias", # required
    #         function_version: "Version",
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0,
    #           },
    #         },
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The function version that the alias invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_config
    #   The [routing configuration][1] of the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing
    #   @return [Types::AliasRoutingConfiguration]
    #
    # @!attribute [rw] revision_id
    #   Only update the alias if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying an alias that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAliasRequest AWS API Documentation
    #
    class UpdateAliasRequest < Struct.new(
      :function_name,
      :name,
      :function_version,
      :description,
      :routing_config,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCodeSigningConfigRequest
    #   data as a hash:
    #
    #       {
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #         description: "Description",
    #         allowed_publishers: {
    #           signing_profile_version_arns: ["Arn"], # required
    #         },
    #         code_signing_policies: {
    #           untrusted_artifact_on_deployment: "Warn", # accepts Warn, Enforce
    #         },
    #       }
    #
    # @!attribute [rw] code_signing_config_arn
    #   The The Amazon Resource Name (ARN) of the code signing
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Descriptive name for this code signing configuration.
    #   @return [String]
    #
    # @!attribute [rw] allowed_publishers
    #   Signing profiles for this code signing configuration.
    #   @return [Types::AllowedPublishers]
    #
    # @!attribute [rw] code_signing_policies
    #   The code signing policy.
    #   @return [Types::CodeSigningPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateCodeSigningConfigRequest AWS API Documentation
    #
    class UpdateCodeSigningConfigRequest < Struct.new(
      :code_signing_config_arn,
      :description,
      :allowed_publishers,
      :code_signing_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_signing_config
    #   The code signing configuration
    #   @return [Types::CodeSigningConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateCodeSigningConfigResponse AWS API Documentation
    #
    class UpdateCodeSigningConfigResponse < Struct.new(
      :code_signing_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEventSourceMappingRequest
    #   data as a hash:
    #
    #       {
    #         uuid: "String", # required
    #         function_name: "FunctionName",
    #         enabled: false,
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn",
    #           },
    #           on_failure: {
    #             destination: "DestinationArn",
    #           },
    #         },
    #         maximum_record_age_in_seconds: 1,
    #         bisect_batch_on_function_error: false,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         source_access_configurations: [
    #           {
    #             type: "BASIC_AUTH", # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #             uri: "URI",
    #           },
    #         ],
    #         tumbling_window_in_seconds: 1,
    #         function_response_types: ["ReportBatchItemFailures"], # accepts ReportBatchItemFailures
    #       }
    #
    # @!attribute [rw] uuid
    #   The identifier of the event source mapping.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `MyFunction`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction`.
    #
    #   * **Version or Alias ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD`.
    #
    #   * **Partial ARN** - `123456789012:function:MyFunction`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it's limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If true, the event source mapping is active. Set to false to pause
    #   polling and invocation.
    #   @return [Boolean]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of items to retrieve in a single batch.
    #
    #   * **Amazon Kinesis** - Default 100. Max 10,000.
    #
    #   * **Amazon DynamoDB Streams** - Default 100. Max 1,000.
    #
    #   * **Amazon Simple Queue Service** - Default 10. For standard queues
    #     the max is 10,000. For FIFO queues the max is 10.
    #
    #   * **Amazon Managed Streaming for Apache Kafka** - Default 100. Max
    #     10,000.
    #
    #   * **Self-Managed Apache Kafka** - Default 100. Max 10,000.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   (Streams and SQS standard queues) The maximum amount of time to
    #   gather records before invoking the function, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   (Streams) An Amazon SQS queue or Amazon SNS topic destination for
    #   discarded records.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams) Discard records older than the specified age. The default
    #   value is infinite (-1).
    #   @return [Integer]
    #
    # @!attribute [rw] bisect_batch_on_function_error
    #   (Streams) If the function returns an error, split the batch in two
    #   and retry.
    #   @return [Boolean]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams) Discard records after the specified number of retries. The
    #   default value is infinite (-1). When set to infinite (-1), failed
    #   records will be retried until the record expires.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams) The number of batches to process from each shard
    #   concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] source_access_configurations
    #   An array of the authentication protocol, or the VPC components to
    #   secure your event source.
    #   @return [Array<Types::SourceAccessConfiguration>]
    #
    # @!attribute [rw] tumbling_window_in_seconds
    #   (Streams) The duration of a processing window in seconds. The range
    #   is between 1 second up to 15 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] function_response_types
    #   (Streams) A list of current response type enums applied to the event
    #   source mapping.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMappingRequest AWS API Documentation
    #
    class UpdateEventSourceMappingRequest < Struct.new(
      :uuid,
      :function_name,
      :enabled,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :destination_config,
      :maximum_record_age_in_seconds,
      :bisect_batch_on_function_error,
      :maximum_retry_attempts,
      :parallelization_factor,
      :source_access_configurations,
      :tumbling_window_in_seconds,
      :function_response_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFunctionCodeRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         zip_file: "data",
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         s3_object_version: "S3ObjectVersion",
    #         image_uri: "String",
    #         publish: false,
    #         dry_run: false,
    #         revision_id: "String",
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. AWS SDK and
    #   AWS CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same AWS Region as your function. The
    #   bucket can be in a different AWS account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] image_uri
    #   URI of a container image in the Amazon ECR registry.
    #   @return [String]
    #
    # @!attribute [rw] publish
    #   Set to true to publish a new version of the function after updating
    #   the code. This has the same effect as calling PublishVersion
    #   separately.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Set to true to validate the request parameters and access
    #   permissions without modifying the function code.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCodeRequest AWS API Documentation
    #
    class UpdateFunctionCodeRequest < Struct.new(
      :function_name,
      :zip_file,
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :image_uri,
      :publish,
      :dry_run,
      :revision_id)
      SENSITIVE = [:zip_file]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFunctionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         role: "RoleArn",
    #         handler: "Handler",
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue",
    #           },
    #         },
    #         runtime: "nodejs", # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #         dead_letter_config: {
    #           target_arn: "ResourceArn",
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active", # accepts Active, PassThrough
    #         },
    #         revision_id: "String",
    #         layers: ["LayerVersionArn"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           },
    #         ],
    #         image_config: {
    #           entry_point: ["String"],
    #           command: ["String"],
    #           working_directory: "WorkingDirectory",
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function`.
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   The length constraint applies only to the full ARN. If you specify
    #   only the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The name of the method within your code that Lambda calls to execute
    #   your function. The format includes the file name. It can also
    #   include namespaces and other qualifiers, depending on the runtime.
    #   For more information, see [Programming Model][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it. The default is 3 seconds. The maximum allowed value is
    #   900 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_size
    #   The amount of memory available to the function at runtime.
    #   Increasing the function's memory also increases its CPU allocation.
    #   The default value is 128 MB. The value can be any multiple of 1 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_config
    #   For network connectivity to AWS resources in a VPC, specify a list
    #   of security groups and subnets in the VPC. When you connect a
    #   function to a VPC, it can only access resources and the internet
    #   through that VPC. For more information, see [VPC Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] environment
    #   Environment variables that are accessible from function code during
    #   execution.
    #   @return [Types::Environment]
    #
    # @!attribute [rw] runtime
    #   The identifier of the function's [runtime][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   A dead letter queue configuration that specifies the queue or topic
    #   where Lambda sends asynchronous events when they fail processing.
    #   For more information, see [Dead Letter Queues][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) key that's used
    #   to encrypt your function's environment variables. If it's not
    #   provided, AWS Lambda uses a default service key.
    #   @return [String]
    #
    # @!attribute [rw] tracing_config
    #   Set `Mode` to `Active` to sample and trace a subset of incoming
    #   requests with AWS X-Ray.
    #   @return [Types::TracingConfig]
    #
    # @!attribute [rw] revision_id
    #   Only update the function if the revision ID matches the ID that's
    #   specified. Use this option to avoid modifying a function that has
    #   changed since you last read it.
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   A list of [function layers][1] to add to the function's execution
    #   environment. Specify each layer by its ARN, including the version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_configs
    #   Connection settings for an Amazon EFS file system.
    #   @return [Array<Types::FileSystemConfig>]
    #
    # @!attribute [rw] image_config
    #   Configuration values that override the container image Dockerfile.
    #   @return [Types::ImageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfigurationRequest AWS API Documentation
    #
    class UpdateFunctionConfigurationRequest < Struct.new(
      :function_name,
      :role,
      :handler,
      :description,
      :timeout,
      :memory_size,
      :vpc_config,
      :environment,
      :runtime,
      :dead_letter_config,
      :kms_key_arn,
      :tracing_config,
      :revision_id,
      :layers,
      :file_system_configs,
      :image_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFunctionEventInvokeConfigRequest
    #   data as a hash:
    #
    #       {
    #         function_name: "FunctionName", # required
    #         qualifier: "Qualifier",
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn",
    #           },
    #           on_failure: {
    #             destination: "DestinationArn",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the Lambda function, version, or alias.
    #
    #   **Name formats**
    #
    #   * **Function name** - `my-function` (name-only), `my-function:v1`
    #     (with alias).
    #
    #   * **Function ARN** -
    #     `arn:aws:lambda:us-west-2:123456789012:function:my-function`.
    #
    #   * **Partial ARN** - `123456789012:function:my-function`.
    #
    #   You can append a version number or alias to any of the formats. The
    #   length constraint applies only to the full ARN. If you specify only
    #   the function name, it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   A version number or alias name.
    #   @return [String]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of times to retry when the function returns an
    #   error.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum age of a request that Lambda sends to a function for
    #   processing.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_config
    #   A destination for events after they have been sent to a function for
    #   processing.
    #
    #   **Destinations**
    #
    #   * **Function** - The Amazon Resource Name (ARN) of a Lambda
    #     function.
    #
    #   * **Queue** - The ARN of an SQS queue.
    #
    #   * **Topic** - The ARN of an SNS topic.
    #
    #   * **Event Bus** - The ARN of an Amazon EventBridge event bus.
    #   @return [Types::DestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionEventInvokeConfigRequest AWS API Documentation
    #
    class UpdateFunctionEventInvokeConfigRequest < Struct.new(
      :function_name,
      :qualifier,
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function. For more information, see [VPC Settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security groups IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function.
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security groups IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    alias AccountLimit = NamedTuple(
      "TotalCodeSize" : Int64,
      "CodeSizeUnzipped" : Int64,
      "CodeSizeZipped" : Int64,
      "ConcurrentExecutions" : Int32,
      "UnreservedConcurrentExecutions" : Int32
    )

    alias AccountUsage = NamedTuple(
      "TotalCodeSize" : Int64,
      "FunctionCount" : Int64
    )

    alias Action = String

    alias AddLayerVersionPermissionRequest = NamedTuple(
      "LayerName" : String,
      "VersionNumber" : Int64,
      "StatementId" : String,
      "Action" : String,
      "Principal" : String,
      "OrganizationId" : String,
      "RevisionId" : String
    )

    alias AddLayerVersionPermissionResponse = NamedTuple(
      "Statement" : String,
      "RevisionId" : String
    )

    alias AddPermissionRequest = NamedTuple(
      "FunctionName" : String,
      "StatementId" : String,
      "Action" : String,
      "Principal" : String,
      "SourceArn" : String,
      "SourceAccount" : String,
      "EventSourceToken" : String,
      "Qualifier" : String,
      "RevisionId" : String
    )

    alias AddPermissionResponse = NamedTuple(
      "Statement" : String
    )

    alias AdditionalVersion = String

    alias AdditionalVersionWeights = Hash(String,Float64)

    alias Alias = String

    alias AliasConfiguration = NamedTuple(
      "AliasArn" : String,
      "Name" : String,
      "FunctionVersion" : String,
      "Description" : String,
      "RoutingConfig" : AliasRoutingConfiguration,
      "RevisionId" : String
    )

    alias AliasList = Array(AliasConfiguration)

    alias AliasRoutingConfiguration = NamedTuple(
      "AdditionalVersionWeights" : Hash(String,Float64)
    )

    alias AllowedPublishers = NamedTuple(
      "SigningProfileVersionArns" : Array(String)
    )

    alias Arn = String

    alias BatchSize = Int32

    alias BisectBatchOnFunctionError = Bool

    alias Blob = String | Array(UInt8) | IO

    alias BlobStream = String | Array(UInt8) | IO

    alias Boolean = Bool

    alias CodeSigningConfig = NamedTuple(
      "CodeSigningConfigId" : String,
      "CodeSigningConfigArn" : String,
      "Description" : String,
      "AllowedPublishers" : AllowedPublishers,
      "CodeSigningPolicies" : CodeSigningPolicies,
      "LastModified" : String | UInt64 | Time
    )

    alias CodeSigningConfigArn = String

    alias CodeSigningConfigId = String

    alias CodeSigningConfigList = Array(CodeSigningConfig)

    alias CodeSigningConfigNotFoundException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias CodeSigningPolicies = NamedTuple(
      "UntrustedArtifactOnDeployment" : String
    )

    alias CodeSigningPolicy = String

    alias CodeStorageExceededException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias CodeVerificationFailedException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias CompatibleRuntimes = Array(String)

    alias Concurrency = NamedTuple(
      "ReservedConcurrentExecutions" : Int32
    )

    alias CreateAliasRequest = NamedTuple(
      "FunctionName" : String,
      "Name" : String,
      "FunctionVersion" : String,
      "Description" : String,
      "RoutingConfig" : AliasRoutingConfiguration
    )

    alias CreateCodeSigningConfigRequest = NamedTuple(
      "Description" : String,
      "AllowedPublishers" : AllowedPublishers,
      "CodeSigningPolicies" : CodeSigningPolicies
    )

    alias CreateCodeSigningConfigResponse = NamedTuple(
      "CodeSigningConfig" : CodeSigningConfig
    )

    alias CreateEventSourceMappingRequest = NamedTuple(
      "EventSourceArn" : String,
      "FunctionName" : String,
      "Enabled" : Bool,
      "BatchSize" : Int32,
      "MaximumBatchingWindowInSeconds" : Int32,
      "ParallelizationFactor" : Int32,
      "StartingPosition" : String,
      "StartingPositionTimestamp" : (String | UInt64 | Time)?,
      "DestinationConfig" : DestinationConfig,
      "MaximumRecordAgeInSeconds" : Int32,
      "BisectBatchOnFunctionError" : Bool,
      "MaximumRetryAttempts" : Int32,
      "TumblingWindowInSeconds" : Int32,
      "Topics" : Array(String),
      "Queues" : Array(String),
      "SourceAccessConfigurations" : Array(SourceAccessConfiguration),
      "SelfManagedEventSource" : SelfManagedEventSource,
      "FunctionResponseTypes" : Array(String)
    )

    alias CreateFunctionRequest = NamedTuple(
      "FunctionName" : String,
      "Runtime" : String,
      "Role" : String,
      "Handler" : String,
      "Code" : FunctionCode,
      "Description" : String,
      "Timeout" : Int32,
      "MemorySize" : Int32,
      "Publish" : Bool,
      "VpcConfig" : VpcConfig,
      "PackageType" : String,
      "DeadLetterConfig" : DeadLetterConfig,
      "Environment" : Environment,
      "KMSKeyArn" : String,
      "TracingConfig" : TracingConfig,
      "Tags" : Hash(String,String),
      "Layers" : Array(String),
      "FileSystemConfigs" : Array(FileSystemConfig),
      "ImageConfig" : ImageConfig,
      "CodeSigningConfigArn" : String
    )

    alias Date = String | UInt64 | Time

    alias DeadLetterConfig = NamedTuple(
      "TargetArn" : String
    )

    alias DeleteAliasRequest = NamedTuple(
      "FunctionName" : String,
      "Name" : String
    )

    alias DeleteCodeSigningConfigRequest = NamedTuple(
      "CodeSigningConfigArn" : String
    )

    alias DeleteCodeSigningConfigResponse = NamedTuple(
      
    )

    alias DeleteEventSourceMappingRequest = NamedTuple(
      "UUID" : String
    )

    alias DeleteFunctionCodeSigningConfigRequest = NamedTuple(
      "FunctionName" : String
    )

    alias DeleteFunctionConcurrencyRequest = NamedTuple(
      "FunctionName" : String
    )

    alias DeleteFunctionEventInvokeConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias DeleteFunctionRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias DeleteLayerVersionRequest = NamedTuple(
      "LayerName" : String,
      "VersionNumber" : Int64
    )

    alias DeleteProvisionedConcurrencyConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias Description = String

    alias DestinationArn = String

    alias DestinationConfig = NamedTuple(
      "OnSuccess" : OnSuccess,
      "OnFailure" : OnFailure
    )

    alias EC2AccessDeniedException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias EC2ThrottledException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias EC2UnexpectedException = NamedTuple(
      "Type" : String,
      "Message" : String,
      "EC2ErrorCode" : String
    )

    alias EFSIOException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias EFSMountConnectivityException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias EFSMountFailureException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias EFSMountTimeoutException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias ENILimitReachedException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias Enabled = Bool

    alias EndPointType = String

    alias Endpoint = String

    alias EndpointLists = Array(String)

    alias Endpoints = Hash(String,Array(String))

    alias Environment = NamedTuple(
      "Variables" : Hash(String,String)
    )

    alias EnvironmentError = NamedTuple(
      "ErrorCode" : String,
      "Message" : String
    )

    alias EnvironmentResponse = NamedTuple(
      "Variables" : Hash(String,String),
      "Error" : EnvironmentError
    )

    alias EnvironmentVariableName = String

    alias EnvironmentVariableValue = String

    alias EnvironmentVariables = Hash(String,String)

    alias EventSourceMappingConfiguration = NamedTuple(
      "UUID" : String,
      "StartingPosition" : String,
      "StartingPositionTimestamp" : (String | UInt64 | Time)?,
      "BatchSize" : Int32,
      "MaximumBatchingWindowInSeconds" : Int32,
      "ParallelizationFactor" : Int32,
      "EventSourceArn" : String,
      "FunctionArn" : String,
      "LastModified" : (String | UInt64 | Time)?,
      "LastProcessingResult" : String,
      "State" : String,
      "StateTransitionReason" : String,
      "DestinationConfig" : DestinationConfig,
      "Topics" : Array(String),
      "Queues" : Array(String),
      "SourceAccessConfigurations" : Array(SourceAccessConfiguration),
      "SelfManagedEventSource" : SelfManagedEventSource,
      "MaximumRecordAgeInSeconds" : Int32,
      "BisectBatchOnFunctionError" : Bool,
      "MaximumRetryAttempts" : Int32,
      "TumblingWindowInSeconds" : Int32,
      "FunctionResponseTypes" : Array(String)
    )

    alias EventSourceMappingsList = Array(EventSourceMappingConfiguration)

    alias EventSourcePosition = String

    alias EventSourceToken = String

    alias FileSystemArn = String

    alias FileSystemConfig = NamedTuple(
      "Arn" : String,
      "LocalMountPath" : String
    )

    alias FileSystemConfigList = Array(FileSystemConfig)

    alias FunctionArn = String

    alias FunctionArnList = Array(String)

    alias FunctionCode = NamedTuple(
      "ZipFile" : (String | Array(UInt8) | IO)?,
      "S3Bucket" : String,
      "S3Key" : String,
      "S3ObjectVersion" : String,
      "ImageUri" : String
    )

    alias FunctionCodeLocation = NamedTuple(
      "RepositoryType" : String,
      "Location" : String,
      "ImageUri" : String,
      "ResolvedImageUri" : String
    )

    alias FunctionConfiguration = NamedTuple(
      "FunctionName" : String,
      "FunctionArn" : String,
      "Runtime" : String,
      "Role" : String,
      "Handler" : String,
      "CodeSize" : Int64,
      "Description" : String,
      "Timeout" : Int32,
      "MemorySize" : Int32,
      "LastModified" : (String | UInt64 | Time)?,
      "CodeSha256" : String,
      "Version" : String,
      "VpcConfig" : VpcConfigResponse,
      "DeadLetterConfig" : DeadLetterConfig,
      "Environment" : EnvironmentResponse,
      "KMSKeyArn" : String,
      "TracingConfig" : TracingConfigResponse,
      "MasterArn" : String,
      "RevisionId" : String,
      "Layers" : Array(Layer),
      "State" : String,
      "StateReason" : String,
      "StateReasonCode" : String,
      "LastUpdateStatus" : String,
      "LastUpdateStatusReason" : String,
      "LastUpdateStatusReasonCode" : String,
      "FileSystemConfigs" : Array(FileSystemConfig),
      "PackageType" : String,
      "ImageConfigResponse" : ImageConfigResponse,
      "SigningProfileVersionArn" : String,
      "SigningJobArn" : String
    )

    alias FunctionEventInvokeConfig = NamedTuple(
      "LastModified" : (String | UInt64 | Time)?,
      "FunctionArn" : String,
      "MaximumRetryAttempts" : Int32,
      "MaximumEventAgeInSeconds" : Int32,
      "DestinationConfig" : DestinationConfig
    )

    alias FunctionEventInvokeConfigList = Array(FunctionEventInvokeConfig)

    alias FunctionList = Array(FunctionConfiguration)

    alias FunctionName = String

    alias FunctionResponseType = String

    alias FunctionResponseTypeList = Array(String)

    alias FunctionVersion = String

    alias GetAccountSettingsRequest = NamedTuple(
      
    )

    alias GetAccountSettingsResponse = NamedTuple(
      "AccountLimit" : AccountLimit,
      "AccountUsage" : AccountUsage
    )

    alias GetAliasRequest = NamedTuple(
      "FunctionName" : String,
      "Name" : String
    )

    alias GetCodeSigningConfigRequest = NamedTuple(
      "CodeSigningConfigArn" : String
    )

    alias GetCodeSigningConfigResponse = NamedTuple(
      "CodeSigningConfig" : CodeSigningConfig
    )

    alias GetEventSourceMappingRequest = NamedTuple(
      "UUID" : String
    )

    alias GetFunctionCodeSigningConfigRequest = NamedTuple(
      "FunctionName" : String
    )

    alias GetFunctionCodeSigningConfigResponse = NamedTuple(
      "CodeSigningConfigArn" : String,
      "FunctionName" : String
    )

    alias GetFunctionConcurrencyRequest = NamedTuple(
      "FunctionName" : String
    )

    alias GetFunctionConcurrencyResponse = NamedTuple(
      "ReservedConcurrentExecutions" : Int32
    )

    alias GetFunctionConfigurationRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias GetFunctionEventInvokeConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias GetFunctionRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias GetFunctionResponse = NamedTuple(
      "Configuration" : FunctionConfiguration,
      "Code" : FunctionCodeLocation,
      "Tags" : Hash(String,String),
      "Concurrency" : Concurrency
    )

    alias GetLayerVersionByArnRequest = NamedTuple(
      "Arn" : String
    )

    alias GetLayerVersionPolicyRequest = NamedTuple(
      "LayerName" : String,
      "VersionNumber" : Int64
    )

    alias GetLayerVersionPolicyResponse = NamedTuple(
      "Policy" : String,
      "RevisionId" : String
    )

    alias GetLayerVersionRequest = NamedTuple(
      "LayerName" : String,
      "VersionNumber" : Int64
    )

    alias GetLayerVersionResponse = NamedTuple(
      "Content" : LayerVersionContentOutput,
      "LayerArn" : String,
      "LayerVersionArn" : String,
      "Description" : String,
      "CreatedDate" : (String | UInt64 | Time)?,
      "Version" : Int64,
      "CompatibleRuntimes" : Array(String),
      "LicenseInfo" : String
    )

    alias GetPolicyRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias GetPolicyResponse = NamedTuple(
      "Policy" : String,
      "RevisionId" : String
    )

    alias GetProvisionedConcurrencyConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String
    )

    alias GetProvisionedConcurrencyConfigResponse = NamedTuple(
      "RequestedProvisionedConcurrentExecutions" : Int32,
      "AvailableProvisionedConcurrentExecutions" : Int32,
      "AllocatedProvisionedConcurrentExecutions" : Int32,
      "Status" : String,
      "StatusReason" : String,
      "LastModified" : (String | UInt64 | Time)?
    )

    alias Handler = String

    alias HttpStatus = Int32

    alias ImageConfig = NamedTuple(
      "EntryPoint" : Array(String),
      "Command" : Array(String),
      "WorkingDirectory" : String
    )

    alias ImageConfigError = NamedTuple(
      "ErrorCode" : String,
      "Message" : String
    )

    alias ImageConfigResponse = NamedTuple(
      "ImageConfig" : ImageConfig,
      "Error" : ImageConfigError
    )

    alias Integer = Int32

    alias InvalidCodeSignatureException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias InvalidParameterValueException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias InvalidRequestContentException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias InvalidRuntimeException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias InvalidSecurityGroupIDException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias InvalidSubnetIDException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias InvalidZipFileException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias InvocationRequest = NamedTuple(
      "FunctionName" : String,
      "InvocationType" : String,
      "LogType" : String,
      "ClientContext" : String,
      "Payload" : (String | Array(UInt8) | IO)?,
      "Qualifier" : String
    )

    alias InvocationResponse = NamedTuple(
      "StatusCode" : Int32,
      "FunctionError" : String,
      "LogResult" : String,
      "Payload" : (String | Array(UInt8) | IO)?,
      "ExecutedVersion" : String
    )

    alias InvocationType = String

    alias InvokeAsyncRequest = NamedTuple(
      "FunctionName" : String,
      "InvokeArgs" : String | Array(UInt8) | IO
    )

    alias InvokeAsyncResponse = NamedTuple(
      "Status" : Int32
    )

    alias KMSAccessDeniedException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias KMSDisabledException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias KMSInvalidStateException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias KMSKeyArn = String

    alias KMSNotFoundException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias LastUpdateStatus = String

    alias LastUpdateStatusReason = String

    alias LastUpdateStatusReasonCode = String

    alias Layer = NamedTuple(
      "Arn" : String,
      "CodeSize" : Int64,
      "SigningProfileVersionArn" : String,
      "SigningJobArn" : String
    )

    alias LayerArn = String

    alias LayerList = Array(String)

    alias LayerName = String

    alias LayerPermissionAllowedAction = String

    alias LayerPermissionAllowedPrincipal = String

    alias LayerVersionArn = String

    alias LayerVersionContentInput = NamedTuple(
      "S3Bucket" : String,
      "S3Key" : String,
      "S3ObjectVersion" : String,
      "ZipFile" : (String | Array(UInt8) | IO)?
    )

    alias LayerVersionContentOutput = NamedTuple(
      "Location" : String,
      "CodeSha256" : String,
      "CodeSize" : Int64,
      "SigningProfileVersionArn" : String,
      "SigningJobArn" : String
    )

    alias LayerVersionNumber = Int64

    alias LayerVersionsList = Array(LayerVersionsListItem)

    alias LayerVersionsListItem = NamedTuple(
      "LayerVersionArn" : String,
      "Version" : Int64,
      "Description" : String,
      "CreatedDate" : (String | UInt64 | Time)?,
      "CompatibleRuntimes" : Array(String),
      "LicenseInfo" : String
    )

    alias LayersList = Array(LayersListItem)

    alias LayersListItem = NamedTuple(
      "LayerName" : String,
      "LayerArn" : String,
      "LatestMatchingVersion" : LayerVersionsListItem
    )

    alias LayersReferenceList = Array(Layer)

    alias LicenseInfo = String

    alias ListAliasesRequest = NamedTuple(
      "FunctionName" : String,
      "FunctionVersion" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListAliasesResponse = NamedTuple(
      "NextMarker" : String,
      "Aliases" : Array(AliasConfiguration)
    )

    alias ListCodeSigningConfigsRequest = NamedTuple(
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListCodeSigningConfigsResponse = NamedTuple(
      "NextMarker" : String,
      "CodeSigningConfigs" : Array(CodeSigningConfig)
    )

    alias ListEventSourceMappingsRequest = NamedTuple(
      "EventSourceArn" : String,
      "FunctionName" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListEventSourceMappingsResponse = NamedTuple(
      "NextMarker" : String,
      "EventSourceMappings" : Array(EventSourceMappingConfiguration)
    )

    alias ListFunctionEventInvokeConfigsRequest = NamedTuple(
      "FunctionName" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListFunctionEventInvokeConfigsResponse = NamedTuple(
      "FunctionEventInvokeConfigs" : Array(FunctionEventInvokeConfig),
      "NextMarker" : String
    )

    alias ListFunctionsByCodeSigningConfigRequest = NamedTuple(
      "CodeSigningConfigArn" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListFunctionsByCodeSigningConfigResponse = NamedTuple(
      "NextMarker" : String,
      "FunctionArns" : Array(String)
    )

    alias ListFunctionsRequest = NamedTuple(
      "MasterRegion" : String,
      "FunctionVersion" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListFunctionsResponse = NamedTuple(
      "NextMarker" : String,
      "Functions" : Array(FunctionConfiguration)
    )

    alias ListLayerVersionsRequest = NamedTuple(
      "CompatibleRuntime" : String,
      "LayerName" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListLayerVersionsResponse = NamedTuple(
      "NextMarker" : String,
      "LayerVersions" : Array(LayerVersionsListItem)
    )

    alias ListLayersRequest = NamedTuple(
      "CompatibleRuntime" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListLayersResponse = NamedTuple(
      "NextMarker" : String,
      "Layers" : Array(LayersListItem)
    )

    alias ListProvisionedConcurrencyConfigsRequest = NamedTuple(
      "FunctionName" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListProvisionedConcurrencyConfigsResponse = NamedTuple(
      "ProvisionedConcurrencyConfigs" : Array(ProvisionedConcurrencyConfigListItem),
      "NextMarker" : String
    )

    alias ListTagsRequest = NamedTuple(
      "Resource" : String
    )

    alias ListTagsResponse = NamedTuple(
      "Tags" : Hash(String,String)
    )

    alias ListVersionsByFunctionRequest = NamedTuple(
      "FunctionName" : String,
      "Marker" : String,
      "MaxItems" : Int32
    )

    alias ListVersionsByFunctionResponse = NamedTuple(
      "NextMarker" : String,
      "Versions" : Array(FunctionConfiguration)
    )

    alias LocalMountPath = String

    alias LogType = String

    alias Long = Int64

    alias MasterRegion = String

    alias MaxFunctionEventInvokeConfigListItems = Int32

    alias MaxLayerListItems = Int32

    alias MaxListItems = Int32

    alias MaxProvisionedConcurrencyConfigListItems = Int32

    alias MaximumBatchingWindowInSeconds = Int32

    alias MaximumEventAgeInSeconds = Int32

    alias MaximumRecordAgeInSeconds = Int32

    alias MaximumRetryAttempts = Int32

    alias MaximumRetryAttemptsEventSourceMapping = Int32

    alias MemorySize = Int32

    alias NameSpacedFunctionArn = String

    alias NamespacedFunctionName = String

    alias NamespacedStatementId = String

    alias NonNegativeInteger = Int32

    alias OnFailure = NamedTuple(
      "Destination" : String
    )

    alias OnSuccess = NamedTuple(
      "Destination" : String
    )

    alias OrganizationId = String

    alias PackageType = String

    alias ParallelizationFactor = Int32

    alias PolicyLengthExceededException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias PositiveInteger = Int32

    alias PreconditionFailedException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias Principal = String

    alias ProvisionedConcurrencyConfigList = Array(ProvisionedConcurrencyConfigListItem)

    alias ProvisionedConcurrencyConfigListItem = NamedTuple(
      "FunctionArn" : String,
      "RequestedProvisionedConcurrentExecutions" : Int32,
      "AvailableProvisionedConcurrentExecutions" : Int32,
      "AllocatedProvisionedConcurrentExecutions" : Int32,
      "Status" : String,
      "StatusReason" : String,
      "LastModified" : (String | UInt64 | Time)?
    )

    alias ProvisionedConcurrencyConfigNotFoundException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias ProvisionedConcurrencyStatusEnum = String

    alias PublishLayerVersionRequest = NamedTuple(
      "LayerName" : String,
      "Description" : String,
      "Content" : LayerVersionContentInput,
      "CompatibleRuntimes" : Array(String),
      "LicenseInfo" : String
    )

    alias PublishLayerVersionResponse = NamedTuple(
      "Content" : LayerVersionContentOutput,
      "LayerArn" : String,
      "LayerVersionArn" : String,
      "Description" : String,
      "CreatedDate" : (String | UInt64 | Time)?,
      "Version" : Int64,
      "CompatibleRuntimes" : Array(String),
      "LicenseInfo" : String
    )

    alias PublishVersionRequest = NamedTuple(
      "FunctionName" : String,
      "CodeSha256" : String,
      "Description" : String,
      "RevisionId" : String
    )

    alias PutFunctionCodeSigningConfigRequest = NamedTuple(
      "CodeSigningConfigArn" : String,
      "FunctionName" : String
    )

    alias PutFunctionCodeSigningConfigResponse = NamedTuple(
      "CodeSigningConfigArn" : String,
      "FunctionName" : String
    )

    alias PutFunctionConcurrencyRequest = NamedTuple(
      "FunctionName" : String,
      "ReservedConcurrentExecutions" : Int32
    )

    alias PutFunctionEventInvokeConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String,
      "MaximumRetryAttempts" : Int32,
      "MaximumEventAgeInSeconds" : Int32,
      "DestinationConfig" : DestinationConfig
    )

    alias PutProvisionedConcurrencyConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String,
      "ProvisionedConcurrentExecutions" : Int32
    )

    alias PutProvisionedConcurrencyConfigResponse = NamedTuple(
      "RequestedProvisionedConcurrentExecutions" : Int32,
      "AvailableProvisionedConcurrentExecutions" : Int32,
      "AllocatedProvisionedConcurrentExecutions" : Int32,
      "Status" : String,
      "StatusReason" : String,
      "LastModified" : (String | UInt64 | Time)?
    )

    alias Qualifier = String

    alias Queue = String

    alias Queues = Array(String)

    alias RemoveLayerVersionPermissionRequest = NamedTuple(
      "LayerName" : String,
      "VersionNumber" : Int64,
      "StatementId" : String,
      "RevisionId" : String
    )

    alias RemovePermissionRequest = NamedTuple(
      "FunctionName" : String,
      "StatementId" : String,
      "Qualifier" : String,
      "RevisionId" : String
    )

    alias RequestTooLargeException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias ReservedConcurrentExecutions = Int32

    alias ResourceArn = String

    alias ResourceConflictException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias ResourceInUseException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias ResourceNotFoundException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias ResourceNotReadyException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias RoleArn = String

    alias Runtime = String

    alias S3Bucket = String

    alias S3Key = String

    alias S3ObjectVersion = String

    alias SecurityGroupId = String

    alias SecurityGroupIds = Array(String)

    alias SelfManagedEventSource = NamedTuple(
      "Endpoints" : Hash(String,Array(String))
    )

    alias SensitiveString = String

    alias ServiceException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias SigningProfileVersionArns = Array(String)

    alias SourceAccessConfiguration = NamedTuple(
      "Type" : String,
      "URI" : String
    )

    alias SourceAccessConfigurations = Array(SourceAccessConfiguration)

    alias SourceAccessType = String

    alias SourceOwner = String

    alias State = String

    alias StateReason = String

    alias StateReasonCode = String

    alias StatementId = String

    alias String = String

    alias StringList = Array(String)

    alias SubnetIPAddressLimitReachedException = NamedTuple(
      "Type" : String,
      "Message" : String
    )

    alias SubnetId = String

    alias SubnetIds = Array(String)

    alias TagKey = String

    alias TagKeyList = Array(String)

    alias TagResourceRequest = NamedTuple(
      "Resource" : String,
      "Tags" : Hash(String,String)
    )

    alias TagValue = String

    alias Tags = Hash(String,String)

    alias ThrottleReason = String

    alias Timeout = Int32

    alias Timestamp = String | UInt64 | Time

    alias TooManyRequestsException = NamedTuple(
      "retryAfterSeconds" : String,
      "Type" : String,
      "message" : String,
      "Reason" : String
    )

    alias Topic = String

    alias Topics = Array(String)

    alias TracingConfig = NamedTuple(
      "Mode" : String
    )

    alias TracingConfigResponse = NamedTuple(
      "Mode" : String
    )

    alias TracingMode = String

    alias TumblingWindowInSeconds = Int32

    alias URI = String

    alias UnreservedConcurrentExecutions = Int32

    alias UnsupportedMediaTypeException = NamedTuple(
      "Type" : String,
      "message" : String
    )

    alias UntagResourceRequest = NamedTuple(
      "Resource" : String,
      "TagKeys" : Array(String)
    )

    alias UpdateAliasRequest = NamedTuple(
      "FunctionName" : String,
      "Name" : String,
      "FunctionVersion" : String,
      "Description" : String,
      "RoutingConfig" : AliasRoutingConfiguration,
      "RevisionId" : String
    )

    alias UpdateCodeSigningConfigRequest = NamedTuple(
      "CodeSigningConfigArn" : String,
      "Description" : String,
      "AllowedPublishers" : AllowedPublishers,
      "CodeSigningPolicies" : CodeSigningPolicies
    )

    alias UpdateCodeSigningConfigResponse = NamedTuple(
      "CodeSigningConfig" : CodeSigningConfig
    )

    alias UpdateEventSourceMappingRequest = NamedTuple(
      "UUID" : String,
      "FunctionName" : String,
      "Enabled" : Bool,
      "BatchSize" : Int32,
      "MaximumBatchingWindowInSeconds" : Int32,
      "DestinationConfig" : DestinationConfig,
      "MaximumRecordAgeInSeconds" : Int32,
      "BisectBatchOnFunctionError" : Bool,
      "MaximumRetryAttempts" : Int32,
      "ParallelizationFactor" : Int32,
      "SourceAccessConfigurations" : Array(SourceAccessConfiguration),
      "TumblingWindowInSeconds" : Int32,
      "FunctionResponseTypes" : Array(String)
    )

    alias UpdateFunctionCodeRequest = NamedTuple(
      "FunctionName" : String,
      "ZipFile" : (String | Array(UInt8) | IO)?,
      "S3Bucket" : String,
      "S3Key" : String,
      "S3ObjectVersion" : String,
      "ImageUri" : String,
      "Publish" : Bool,
      "DryRun" : Bool,
      "RevisionId" : String
    )

    alias UpdateFunctionConfigurationRequest = NamedTuple(
      "FunctionName" : String,
      "Role" : String,
      "Handler" : String,
      "Description" : String,
      "Timeout" : Int32,
      "MemorySize" : Int32,
      "VpcConfig" : VpcConfig,
      "Environment" : Environment,
      "Runtime" : String,
      "DeadLetterConfig" : DeadLetterConfig,
      "KMSKeyArn" : String,
      "TracingConfig" : TracingConfig,
      "RevisionId" : String,
      "Layers" : Array(String),
      "FileSystemConfigs" : Array(FileSystemConfig),
      "ImageConfig" : ImageConfig
    )

    alias UpdateFunctionEventInvokeConfigRequest = NamedTuple(
      "FunctionName" : String,
      "Qualifier" : String,
      "MaximumRetryAttempts" : Int32,
      "MaximumEventAgeInSeconds" : Int32,
      "DestinationConfig" : DestinationConfig
    )

    alias Version = String

    alias VpcConfig = NamedTuple(
      "SubnetIds" : Array(String),
      "SecurityGroupIds" : Array(String)
    )

    alias VpcConfigResponse = NamedTuple(
      "SubnetIds" : Array(String),
      "SecurityGroupIds" : Array(String),
      "VpcId" : String
    )

    alias VpcId = String

    alias Weight = Float64

    alias WorkingDirectory = String
  end
end
