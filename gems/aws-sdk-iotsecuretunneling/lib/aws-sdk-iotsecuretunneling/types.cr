# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSecureTunneling
  module Types

    # @note When making an API call, you may pass CloseTunnelRequest
    #   data as a hash:
    #
    #       {
    #         tunnel_id: "TunnelId", # required
    #         delete: false,
    #       }
    #
    # @!attribute [rw] tunnel_id
    #   The ID of the tunnel to close.
    #   @return [String]
    #
    # @!attribute [rw] delete
    #   When set to true, AWS IoT Secure Tunneling deletes the tunnel data
    #   immediately.
    #   @return [Boolean]
    #
    class CloseTunnelRequest < Struct.new(
      :tunnel_id,
      :delete)
      SENSITIVE = []
      include Aws::Structure
    end

    class CloseTunnelResponse < Aws::EmptyStructure; end

    # The state of a connection.
    #
    # @!attribute [rw] status
    #   The connection status of the tunnel. Valid values are `CONNECTED`
    #   and `DISCONNECTED`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The last time the connection status was updated.
    #   @return [Time]
    #
    class ConnectionState < Struct.new(
      :status,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTunnelRequest
    #   data as a hash:
    #
    #       {
    #         tunnel_id: "TunnelId", # required
    #       }
    #
    # @!attribute [rw] tunnel_id
    #   The tunnel to describe.
    #   @return [String]
    #
    class DescribeTunnelRequest < Struct.new(
      :tunnel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tunnel
    #   The tunnel being described.
    #   @return [Types::Tunnel]
    #
    class DescribeTunnelResponse < Struct.new(
      :tunnel)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination configuration.
    #
    # @note When making an API call, you may pass DestinationConfig
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName",
    #         services: ["Service"], # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing to which you want to connect.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   A list of service names that identity the target application. The
    #   AWS IoT client running on the destination device reads this value
    #   and uses it to look up a port or an IP address and a port. The AWS
    #   IoT client instantiates the local proxy which uses this information
    #   to connect to the destination application.
    #   @return [Array<String>]
    #
    class DestinationConfig < Struct.new(
      :thing_name,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when a tunnel limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTunnelsRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing associated with the destination device.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at once.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
    #   @return [String]
    #
    class ListTunnelsRequest < Struct.new(
      :thing_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tunnel_summaries
    #   A short description of the tunnels in an AWS account.
    #   @return [Array<Types::TunnelSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to used to retrieve the next set of results.
    #   @return [String]
    #
    class ListTunnelsResponse < Struct.new(
      :tunnel_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass OpenTunnelRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         destination_config: {
    #           thing_name: "ThingName",
    #           services: ["Service"], # required
    #         },
    #         timeout_config: {
    #           max_lifetime_timeout_minutes: 1,
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   A short text description of the tunnel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of tag metadata.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] destination_config
    #   The destination configuration for the OpenTunnel request.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] timeout_config
    #   Timeout configuration for a tunnel.
    #   @return [Types::TimeoutConfig]
    #
    class OpenTunnelRequest < Struct.new(
      :description,
      :tags,
      :destination_config,
      :timeout_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tunnel_id
    #   A unique alpha-numeric tunnel ID.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_arn
    #   The Amazon Resource Name for the tunnel. The tunnel ARN format is
    #   `arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id>`
    #   @return [String]
    #
    # @!attribute [rw] source_access_token
    #   The access token the source local proxy uses to connect to AWS IoT
    #   Secure Tunneling.
    #   @return [String]
    #
    # @!attribute [rw] destination_access_token
    #   The access token the destination local proxy uses to connect to AWS
    #   IoT Secure Tunneling.
    #   @return [String]
    #
    class OpenTunnelResponse < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :source_access_token,
      :destination_access_token)
      SENSITIVE = [:source_access_token, :destination_access_token]
      include Aws::Structure
    end

    # Thrown when an operation is attempted on a resource that does not
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An arbitary key/value pair used to add searchable metadata to secure
    # tunnel resources.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Tunnel timeout configuration.
    #
    # @note When making an API call, you may pass TimeoutConfig
    #   data as a hash:
    #
    #       {
    #         max_lifetime_timeout_minutes: 1,
    #       }
    #
    # @!attribute [rw] max_lifetime_timeout_minutes
    #   The maximum amount of time (in minutes) a tunnel can remain open. If
    #   not specified, maxLifetimeTimeoutMinutes defaults to 720 minutes.
    #   Valid values are from 1 minute to 12 hours (720 minutes)
    #   @return [Integer]
    #
    class TimeoutConfig < Struct.new(
      :max_lifetime_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A connection between a source computer and a destination device.
    #
    # @!attribute [rw] tunnel_id
    #   A unique alpha-numeric ID that identifies a tunnel.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_arn
    #   The Amazon Resource Name (ARN) of a tunnel. The tunnel ARN format is
    #   `arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id>`
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a tunnel. Valid values are: Open and Closed.
    #   @return [String]
    #
    # @!attribute [rw] source_connection_state
    #   The connection state of the source application.
    #   @return [Types::ConnectionState]
    #
    # @!attribute [rw] destination_connection_state
    #   The connection state of the destination application.
    #   @return [Types::ConnectionState]
    #
    # @!attribute [rw] description
    #   A description of the tunnel.
    #   @return [String]
    #
    # @!attribute [rw] destination_config
    #   The destination configuration that specifies the thing name of the
    #   destination device and a service name that the local proxy uses to
    #   connect to the destination application.
    #   @return [Types::DestinationConfig]
    #
    # @!attribute [rw] timeout_config
    #   Timeout configuration for the tunnel.
    #   @return [Types::TimeoutConfig]
    #
    # @!attribute [rw] tags
    #   A list of tag metadata associated with the secure tunnel.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_at
    #   The time when the tunnel was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The last time the tunnel was updated.
    #   @return [Time]
    #
    class Tunnel < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :status,
      :source_connection_state,
      :destination_connection_state,
      :description,
      :destination_config,
      :timeout_config,
      :tags,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the tunnel.
    #
    # @!attribute [rw] tunnel_id
    #   The unique alpha-numeric identifier for the tunnel.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_arn
    #   The Amazon Resource Name of the tunnel. The tunnel ARN format is
    #   `arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id>`
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a tunnel. Valid values are: Open and Closed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the tunnel.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the tunnel was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time the tunnel was last updated.
    #   @return [Time]
    #
    class TunnelSummary < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :status,
      :description,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    alias AmazonResourceName = String

    alias ClientAccessToken = String

    alias CloseTunnelRequest = NamedTuple(
      "tunnelId" : String,
      "delete" : Bool
    )

    alias CloseTunnelResponse = NamedTuple(
      
    )

    alias ConnectionState = NamedTuple(
      "status" : String,
      "lastUpdatedAt" : (String | UInt64 | Time)?
    )

    alias ConnectionStatus = String

    alias DateType = String | UInt64 | Time

    alias DeleteFlag = Bool

    alias DescribeTunnelRequest = NamedTuple(
      "tunnelId" : String
    )

    alias DescribeTunnelResponse = NamedTuple(
      "tunnel" : Tunnel
    )

    alias Description = String

    alias DestinationConfig = NamedTuple(
      "thingName" : String,
      "services" : Array(String)
    )

    alias ErrorMessage = String

    alias LimitExceededException = NamedTuple(
      "message" : String
    )

    alias ListTagsForResourceRequest = NamedTuple(
      "resourceArn" : String
    )

    alias ListTagsForResourceResponse = NamedTuple(
      "tags" : Array(Tag)
    )

    alias ListTunnelsRequest = NamedTuple(
      "thingName" : String,
      "maxResults" : Int32,
      "nextToken" : String
    )

    alias ListTunnelsResponse = NamedTuple(
      "tunnelSummaries" : Array(TunnelSummary),
      "nextToken" : String
    )

    alias MaxResults = Int32

    alias NextToken = String

    alias OpenTunnelRequest = NamedTuple(
      "description" : String,
      "tags" : Array(Tag),
      "destinationConfig" : DestinationConfig,
      "timeoutConfig" : TimeoutConfig
    )

    alias OpenTunnelResponse = NamedTuple(
      "tunnelId" : String,
      "tunnelArn" : String,
      "sourceAccessToken" : String,
      "destinationAccessToken" : String
    )

    alias ResourceNotFoundException = NamedTuple(
      "message" : String
    )

    alias Service = String

    alias ServiceList = Array(String)

    alias Tag = NamedTuple(
      "key" : String,
      "value" : String
    )

    alias TagKey = String

    alias TagKeyList = Array(String)

    alias TagList = Array(Tag)

    alias TagResourceRequest = NamedTuple(
      "resourceArn" : String,
      "tags" : Array(Tag)
    )

    alias TagResourceResponse = NamedTuple(
      
    )

    alias TagValue = String

    alias ThingName = String

    alias TimeoutConfig = NamedTuple(
      "maxLifetimeTimeoutMinutes" : Int32
    )

    alias TimeoutInMin = Int32

    alias Tunnel = NamedTuple(
      "tunnelId" : String,
      "tunnelArn" : String,
      "status" : String,
      "sourceConnectionState" : ConnectionState,
      "destinationConnectionState" : ConnectionState,
      "description" : String,
      "destinationConfig" : DestinationConfig,
      "timeoutConfig" : TimeoutConfig,
      "tags" : Array(Tag),
      "createdAt" : (String | UInt64 | Time)?,
      "lastUpdatedAt" : (String | UInt64 | Time)?
    )

    alias TunnelArn = String

    alias TunnelId = String

    alias TunnelStatus = String

    alias TunnelSummary = NamedTuple(
      "tunnelId" : String,
      "tunnelArn" : String,
      "status" : String,
      "description" : String,
      "createdAt" : (String | UInt64 | Time)?,
      "lastUpdatedAt" : (String | UInt64 | Time)?
    )

    alias TunnelSummaryList = Array(TunnelSummary)

    alias UntagResourceRequest = NamedTuple(
      "resourceArn" : String,
      "tagKeys" : Array(String)
    )

    alias UntagResourceResponse = NamedTuple(
      
    )
  end
end
