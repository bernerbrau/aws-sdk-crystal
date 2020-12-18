# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkManager
  module Types

    # Specifies a location in AWS.
    #
    # @note When making an API call, you may pass AWSLocation
    #   data as a hash:
    #
    #       {
    #         zone: "String",
    #         subnet_arn: "String",
    #       }
    #
    # @!attribute [rw] zone
    #   The Zone the device is located in. This can be the ID of an
    #   Availability Zone, Local Zone, Wavelength Zone, or an Outpost.
    #   @return [String]
    #
    # @!attribute [rw] subnet_arn
    #   The Amazon Resource Name (ARN) of the subnet the device is located
    #   in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AWSLocation AWS API Documentation
    #
    class AWSLocation < Struct.new(
      :zone,
      :subnet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateCustomerGatewayRequest
    #   data as a hash:
    #
    #       {
    #         customer_gateway_arn: "String", # required
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #         link_id: "String",
    #       }
    #
    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateCustomerGatewayRequest AWS API Documentation
    #
    class AssociateCustomerGatewayRequest < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_association
    #   The customer gateway association.
    #   @return [Types::CustomerGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateCustomerGatewayResponse AWS API Documentation
    #
    class AssociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateLinkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #         link_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateLinkRequest AWS API Documentation
    #
    class AssociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_association
    #   The link association.
    #   @return [Types::LinkAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateLinkResponse AWS API Documentation
    #
    class AssociateLinkResponse < Struct.new(
      :link_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateTransitGatewayConnectPeerRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_connect_peer_arn: "String", # required
    #         device_id: "String", # required
    #         link_id: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateTransitGatewayConnectPeerRequest AWS API Documentation
    #
    class AssociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_association
    #   The transit gateway Connect peer association.
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateTransitGatewayConnectPeerResponse AWS API Documentation
    #
    class AssociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes bandwidth information.
    #
    # @note When making an API call, you may pass Bandwidth
    #   data as a hash:
    #
    #       {
    #         upload_speed: 1,
    #         download_speed: 1,
    #       }
    #
    # @!attribute [rw] upload_speed
    #   Upload speed in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] download_speed
    #   Download speed in Mbps.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Bandwidth AWS API Documentation
    #
    class Bandwidth < Struct.new(
      :upload_speed,
      :download_speed)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict processing the request. Updating or deleting the
    # resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a connection.
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_device_id
    #   The ID of the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the connection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the connection.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_id,
      :connection_arn,
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :created_at,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #         connected_device_id: "String", # required
    #         link_id: "String",
    #         connected_link_id: "String",
    #         description: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_device_id
    #   The ID of the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeviceRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         aws_location: {
    #           zone: "String",
    #           subnet_arn: "String",
    #         },
    #         description: "String",
    #         type: "String",
    #         vendor: "String",
    #         model: "String",
    #         serial_number: "String",
    #         location: {
    #           address: "String",
    #           latitude: "String",
    #           longitude: "String",
    #         },
    #         site_id: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The AWS location of the device.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   A description of the device.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the device.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateDeviceRequest AWS API Documentation
    #
    class CreateDeviceRequest < Struct.new(
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateDeviceResponse AWS API Documentation
    #
    class CreateDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGlobalNetworkRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   A description of the global network.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateGlobalNetworkRequest AWS API Documentation
    #
    class CreateGlobalNetworkRequest < Struct.new(
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network object.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateGlobalNetworkResponse AWS API Documentation
    #
    class CreateGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLinkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         description: "String",
    #         type: "String",
    #         bandwidth: { # required
    #           upload_speed: 1,
    #           download_speed: 1,
    #         },
    #         provider: "String",
    #         site_id: "String", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the link.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #
    #   Constraints: Cannot include the following characters: \| \\ ^
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The upload speed and download speed in Mbps.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #
    #   Constraints: Cannot include the following characters: \| \\ ^
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateLinkRequest AWS API Documentation
    #
    class CreateLinkRequest < Struct.new(
      :global_network_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :site_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateLinkResponse AWS API Documentation
    #
    class CreateLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSiteRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         description: "String",
    #         location: {
    #           address: "String",
    #           latitude: "String",
    #           longitude: "String",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of your site.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location. This information is used for visualization in the
    #   Network Manager console. If you specify the address, the latitude
    #   and longitude are automatically calculated.
    #
    #   * `Address`\: The physical address of the site.
    #
    #   * `Latitude`\: The latitude of the site.
    #
    #   * `Longitude`\: The longitude of the site.
    #   @return [Types::Location]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteRequest AWS API Documentation
    #
    class CreateSiteRequest < Struct.new(
      :global_network_id,
      :description,
      :location,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteResponse AWS API Documentation
    #
    class CreateSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association between a customer gateway, a device, and a
    # link.
    #
    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The association state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CustomerGatewayAssociation AWS API Documentation
    #
    class CustomerGatewayAssociation < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeviceRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteDeviceRequest AWS API Documentation
    #
    class DeleteDeviceRequest < Struct.new(
      :global_network_id,
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGlobalNetworkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteGlobalNetworkRequest AWS API Documentation
    #
    class DeleteGlobalNetworkRequest < Struct.new(
      :global_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteGlobalNetworkResponse AWS API Documentation
    #
    class DeleteGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLinkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         link_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteLinkRequest AWS API Documentation
    #
    class DeleteLinkRequest < Struct.new(
      :global_network_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteLinkResponse AWS API Documentation
    #
    class DeleteLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSiteRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         site_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteSiteRequest AWS API Documentation
    #
    class DeleteSiteRequest < Struct.new(
      :global_network_id,
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteSiteResponse AWS API Documentation
    #
    class DeleteSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterTransitGatewayRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_arn: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeregisterTransitGatewayRequest AWS API Documentation
    #
    class DeregisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registration
    #   The transit gateway registration information.
    #   @return [Types::TransitGatewayRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeregisterTransitGatewayResponse AWS API Documentation
    #
    class DeregisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGlobalNetworksRequest
    #   data as a hash:
    #
    #       {
    #         global_network_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_ids
    #   The IDs of one or more global networks. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DescribeGlobalNetworksRequest AWS API Documentation
    #
    class DescribeGlobalNetworksRequest < Struct.new(
      :global_network_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_networks
    #   Information about the global networks.
    #   @return [Array<Types::GlobalNetwork>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DescribeGlobalNetworksResponse AWS API Documentation
    #
    class DescribeGlobalNetworksResponse < Struct.new(
      :global_networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a device.
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The AWS location of the device.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   The description of the device.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The device type.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The device vendor.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The device model.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The device serial number.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The site ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the site was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The device state.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the device.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Device AWS API Documentation
    #
    class Device < Struct.new(
      :device_id,
      :device_arn,
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :created_at,
      :state,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateCustomerGatewayRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         customer_gateway_arn: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateCustomerGatewayRequest AWS API Documentation
    #
    class DisassociateCustomerGatewayRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_association
    #   Information about the customer gateway association.
    #   @return [Types::CustomerGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateCustomerGatewayResponse AWS API Documentation
    #
    class DisassociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateLinkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #         link_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateLinkRequest AWS API Documentation
    #
    class DisassociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_association
    #   Information about the link association.
    #   @return [Types::LinkAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateLinkResponse AWS API Documentation
    #
    class DisassociateLinkResponse < Struct.new(
      :link_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateTransitGatewayConnectPeerRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_connect_peer_arn: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the transit gateway Connect peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateTransitGatewayConnectPeerRequest AWS API Documentation
    #
    class DisassociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_association
    #   The transit gateway Connect peer association.
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateTransitGatewayConnectPeerResponse AWS API Documentation
    #
    class DisassociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         connection_ids: ["String"],
    #         device_id: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_ids
    #   One or more connection IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectionsRequest AWS API Documentation
    #
    class GetConnectionsRequest < Struct.new(
      :global_network_id,
      :connection_ids,
      :device_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   Information about the connections.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   The token to use for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectionsResponse AWS API Documentation
    #
    class GetConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCustomerGatewayAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         customer_gateway_arns: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_arns
    #   One or more customer gateway Amazon Resource Names (ARNs). For more
    #   information, see [Resources Defined by Amazon EC2][1]. The maximum
    #   is 10.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCustomerGatewayAssociationsRequest AWS API Documentation
    #
    class GetCustomerGatewayAssociationsRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_associations
    #   The customer gateway associations.
    #   @return [Array<Types::CustomerGatewayAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCustomerGatewayAssociationsResponse AWS API Documentation
    #
    class GetCustomerGatewayAssociationsResponse < Struct.new(
      :customer_gateway_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevicesRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_ids: ["String"],
    #         site_id: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_ids
    #   One or more device IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetDevicesRequest AWS API Documentation
    #
    class GetDevicesRequest < Struct.new(
      :global_network_id,
      :device_ids,
      :site_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   The devices.
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetDevicesResponse AWS API Documentation
    #
    class GetDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLinkAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String",
    #         link_id: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinkAssociationsRequest AWS API Documentation
    #
    class GetLinkAssociationsRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_associations
    #   The link associations.
    #   @return [Array<Types::LinkAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinkAssociationsResponse AWS API Documentation
    #
    class GetLinkAssociationsResponse < Struct.new(
      :link_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLinksRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         link_ids: ["String"],
    #         site_id: "String",
    #         type: "String",
    #         provider: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_ids
    #   One or more link IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The link type.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The link provider.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinksRequest AWS API Documentation
    #
    class GetLinksRequest < Struct.new(
      :global_network_id,
      :link_ids,
      :site_id,
      :type,
      :provider,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] links
    #   The links.
    #   @return [Array<Types::Link>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinksResponse AWS API Documentation
    #
    class GetLinksResponse < Struct.new(
      :links,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSitesRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         site_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_ids
    #   One or more site IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSitesRequest AWS API Documentation
    #
    class GetSitesRequest < Struct.new(
      :global_network_id,
      :site_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sites
    #   The sites.
    #   @return [Array<Types::Site>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSitesResponse AWS API Documentation
    #
    class GetSitesResponse < Struct.new(
      :sites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTransitGatewayConnectPeerAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_connect_peer_arns: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arns
    #   One or more transit gateway Connect peer Amazon Resource Names
    #   (ARNs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayConnectPeerAssociationsRequest AWS API Documentation
    #
    class GetTransitGatewayConnectPeerAssociationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_associations
    #   Information about the transit gateway Connect peer associations.
    #   @return [Array<Types::TransitGatewayConnectPeerAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to use for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayConnectPeerAssociationsResponse AWS API Documentation
    #
    class GetTransitGatewayConnectPeerAssociationsResponse < Struct.new(
      :transit_gateway_connect_peer_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTransitGatewayRegistrationsRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_arns: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arns
    #   The Amazon Resource Names (ARNs) of one or more transit gateways.
    #   The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRegistrationsRequest AWS API Documentation
    #
    class GetTransitGatewayRegistrationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registrations
    #   The transit gateway registrations.
    #   @return [Array<Types::TransitGatewayRegistration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRegistrationsResponse AWS API Documentation
    #
    class GetTransitGatewayRegistrationsResponse < Struct.new(
      :transit_gateway_registrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a global network.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] global_network_arn
    #   The Amazon Resource Name (ARN) of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the global network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the global network was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the global network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the global network.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GlobalNetwork AWS API Documentation
    #
    class GlobalNetwork < Struct.new(
      :global_network_id,
      :global_network_arn,
      :description,
      :created_at,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Indicates when to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a link.
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] link_arn
    #   The Amazon Resource Name (ARN) of the link.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the link.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth for the link.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the link.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Link AWS API Documentation
    #
    class Link < Struct.new(
      :link_id,
      :link_arn,
      :global_network_id,
      :site_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :created_at,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association between a device and a link.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device ID for the link association.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] link_association_state
    #   The state of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/LinkAssociation AWS API Documentation
    #
    class LinkAssociation < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :link_association_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a location.
    #
    # @note When making an API call, you may pass Location
    #   data as a hash:
    #
    #       {
    #         address: "String",
    #         latitude: "String",
    #         longitude: "String",
    #       }
    #
    # @!attribute [rw] address
    #   The physical address.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude.
    #   @return [String]
    #
    # @!attribute [rw] longitude
    #   The longitude.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Location AWS API Documentation
    #
    class Location < Struct.new(
      :address,
      :latitude,
      :longitude)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterTransitGatewayRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         transit_gateway_arn: "String", # required
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RegisterTransitGatewayRequest AWS API Documentation
    #
    class RegisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registration
    #   Information about the transit gateway registration.
    #   @return [Types::TransitGatewayRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RegisterTransitGatewayResponse AWS API Documentation
    #
    class RegisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service limit was exceeded.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] limit_code
    #   The limit code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a site.
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] site_arn
    #   The Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the site.
    #   @return [Types::Location]
    #
    # @!attribute [rw] created_at
    #   The date and time that the site was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the site.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Site AWS API Documentation
    #
    class Site < Struct.new(
      :site_id,
      :site_arn,
      :global_network_id,
      :description,
      :location,
      :created_at,
      :state,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The tag key.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Tag AWS API Documentation
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
    #         resource_arn: "ResourceARN", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Indicates when to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a transit gateway Connect peer association.
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the transit gateway Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayConnectPeerAssociation AWS API Documentation
    #
    class TransitGatewayConnectPeerAssociation < Struct.new(
      :transit_gateway_connect_peer_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the registration of a transit gateway to a global network.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the transit gateway registration.
    #   @return [Types::TransitGatewayRegistrationStateReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayRegistration AWS API Documentation
    #
    class TransitGatewayRegistration < Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of a transit gateway registration.
    #
    # @!attribute [rw] code
    #   The code for the state reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the state reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayRegistrationStateReason AWS API Documentation
    #
    class TransitGatewayRegistrationStateReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         connection_id: "String", # required
    #         link_id: "String",
    #         connected_link_id: "String",
    #         description: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id,
      :link_id,
      :connected_link_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDeviceRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         device_id: "String", # required
    #         aws_location: {
    #           zone: "String",
    #           subnet_arn: "String",
    #         },
    #         description: "String",
    #         type: "String",
    #         vendor: "String",
    #         model: "String",
    #         serial_number: "String",
    #         location: {
    #           address: "String",
    #           latitude: "String",
    #           longitude: "String",
    #         },
    #         site_id: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The AWS location of the device.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   A description of the device.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Describes a location.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateDeviceRequest AWS API Documentation
    #
    class UpdateDeviceRequest < Struct.new(
      :global_network_id,
      :device_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateDeviceResponse AWS API Documentation
    #
    class UpdateDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGlobalNetworkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         description: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of your global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the global network.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateGlobalNetworkRequest AWS API Documentation
    #
    class UpdateGlobalNetworkRequest < Struct.new(
      :global_network_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network object.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateGlobalNetworkResponse AWS API Documentation
    #
    class UpdateGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLinkRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         link_id: "String", # required
    #         description: "String",
    #         type: "String",
    #         bandwidth: {
    #           upload_speed: 1,
    #           download_speed: 1,
    #         },
    #         provider: "String",
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the link.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The upload and download speed in Mbps.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateLinkRequest AWS API Documentation
    #
    class UpdateLinkRequest < Struct.new(
      :global_network_id,
      :link_id,
      :description,
      :type,
      :bandwidth,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateLinkResponse AWS API Documentation
    #
    class UpdateLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSiteRequest
    #   data as a hash:
    #
    #       {
    #         global_network_id: "String", # required
    #         site_id: "String", # required
    #         description: "String",
    #         location: {
    #           address: "String",
    #           latitude: "String",
    #           longitude: "String",
    #         },
    #       }
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of your site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of your site.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location:
    #
    #   * `Address`\: The physical address of the site.
    #
    #   * `Latitude`\: The latitude of the site.
    #
    #   * `Longitude`\: The longitude of the site.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateSiteRequest AWS API Documentation
    #
    class UpdateSiteRequest < Struct.new(
      :global_network_id,
      :site_id,
      :description,
      :location)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateSiteResponse AWS API Documentation
    #
    class UpdateSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the error.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validation exception for a field.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    alias AWSLocation = NamedTuple(
      "Zone" : String,
      "SubnetArn" : String
    )

    alias AccessDeniedException = NamedTuple(
      "Message" : String
    )

    alias AssociateCustomerGatewayRequest = NamedTuple(
      "CustomerGatewayArn" : String,
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String
    )

    alias AssociateCustomerGatewayResponse = NamedTuple(
      "CustomerGatewayAssociation" : CustomerGatewayAssociation
    )

    alias AssociateLinkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String
    )

    alias AssociateLinkResponse = NamedTuple(
      "LinkAssociation" : LinkAssociation
    )

    alias AssociateTransitGatewayConnectPeerRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayConnectPeerArn" : String,
      "DeviceId" : String,
      "LinkId" : String
    )

    alias AssociateTransitGatewayConnectPeerResponse = NamedTuple(
      "TransitGatewayConnectPeerAssociation" : TransitGatewayConnectPeerAssociation
    )

    alias Bandwidth = NamedTuple(
      "UploadSpeed" : Int32,
      "DownloadSpeed" : Int32
    )

    alias ConflictException = NamedTuple(
      "Message" : String,
      "ResourceId" : String,
      "ResourceType" : String
    )

    alias Connection = NamedTuple(
      "ConnectionId" : String,
      "ConnectionArn" : String,
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "ConnectedDeviceId" : String,
      "LinkId" : String,
      "ConnectedLinkId" : String,
      "Description" : String,
      "CreatedAt" : (String | UInt64 | Time)?,
      "State" : String,
      "Tags" : Array(Tag)
    )

    alias ConnectionList = Array(Connection)

    alias ConnectionState = String

    alias CreateConnectionRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "ConnectedDeviceId" : String,
      "LinkId" : String,
      "ConnectedLinkId" : String,
      "Description" : String,
      "Tags" : Array(Tag)
    )

    alias CreateConnectionResponse = NamedTuple(
      "Connection" : Connection
    )

    alias CreateDeviceRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "AWSLocation" : AWSLocation,
      "Description" : String,
      "Type" : String,
      "Vendor" : String,
      "Model" : String,
      "SerialNumber" : String,
      "Location" : Location,
      "SiteId" : String,
      "Tags" : Array(Tag)
    )

    alias CreateDeviceResponse = NamedTuple(
      "Device" : Device
    )

    alias CreateGlobalNetworkRequest = NamedTuple(
      "Description" : String,
      "Tags" : Array(Tag)
    )

    alias CreateGlobalNetworkResponse = NamedTuple(
      "GlobalNetwork" : GlobalNetwork
    )

    alias CreateLinkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "Description" : String,
      "Type" : String,
      "Bandwidth" : Bandwidth,
      "Provider" : String,
      "SiteId" : String,
      "Tags" : Array(Tag)
    )

    alias CreateLinkResponse = NamedTuple(
      "Link" : Link
    )

    alias CreateSiteRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "Description" : String,
      "Location" : Location,
      "Tags" : Array(Tag)
    )

    alias CreateSiteResponse = NamedTuple(
      "Site" : Site
    )

    alias CustomerGatewayAssociation = NamedTuple(
      "CustomerGatewayArn" : String,
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String,
      "State" : String
    )

    alias CustomerGatewayAssociationList = Array(CustomerGatewayAssociation)

    alias CustomerGatewayAssociationState = String

    alias DateTime = String | UInt64 | Time

    alias DeleteConnectionRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "ConnectionId" : String
    )

    alias DeleteConnectionResponse = NamedTuple(
      "Connection" : Connection
    )

    alias DeleteDeviceRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String
    )

    alias DeleteDeviceResponse = NamedTuple(
      "Device" : Device
    )

    alias DeleteGlobalNetworkRequest = NamedTuple(
      "GlobalNetworkId" : String
    )

    alias DeleteGlobalNetworkResponse = NamedTuple(
      "GlobalNetwork" : GlobalNetwork
    )

    alias DeleteLinkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "LinkId" : String
    )

    alias DeleteLinkResponse = NamedTuple(
      "Link" : Link
    )

    alias DeleteSiteRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "SiteId" : String
    )

    alias DeleteSiteResponse = NamedTuple(
      "Site" : Site
    )

    alias DeregisterTransitGatewayRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayArn" : String
    )

    alias DeregisterTransitGatewayResponse = NamedTuple(
      "TransitGatewayRegistration" : TransitGatewayRegistration
    )

    alias DescribeGlobalNetworksRequest = NamedTuple(
      "GlobalNetworkIds" : Array(String),
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias DescribeGlobalNetworksResponse = NamedTuple(
      "GlobalNetworks" : Array(GlobalNetwork),
      "NextToken" : String
    )

    alias Device = NamedTuple(
      "DeviceId" : String,
      "DeviceArn" : String,
      "GlobalNetworkId" : String,
      "AWSLocation" : AWSLocation,
      "Description" : String,
      "Type" : String,
      "Vendor" : String,
      "Model" : String,
      "SerialNumber" : String,
      "Location" : Location,
      "SiteId" : String,
      "CreatedAt" : (String | UInt64 | Time)?,
      "State" : String,
      "Tags" : Array(Tag)
    )

    alias DeviceList = Array(Device)

    alias DeviceState = String

    alias DisassociateCustomerGatewayRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "CustomerGatewayArn" : String
    )

    alias DisassociateCustomerGatewayResponse = NamedTuple(
      "CustomerGatewayAssociation" : CustomerGatewayAssociation
    )

    alias DisassociateLinkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String
    )

    alias DisassociateLinkResponse = NamedTuple(
      "LinkAssociation" : LinkAssociation
    )

    alias DisassociateTransitGatewayConnectPeerRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayConnectPeerArn" : String
    )

    alias DisassociateTransitGatewayConnectPeerResponse = NamedTuple(
      "TransitGatewayConnectPeerAssociation" : TransitGatewayConnectPeerAssociation
    )

    alias GetConnectionsRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "ConnectionIds" : Array(String),
      "DeviceId" : String,
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetConnectionsResponse = NamedTuple(
      "Connections" : Array(Connection),
      "NextToken" : String
    )

    alias GetCustomerGatewayAssociationsRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "CustomerGatewayArns" : Array(String),
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetCustomerGatewayAssociationsResponse = NamedTuple(
      "CustomerGatewayAssociations" : Array(CustomerGatewayAssociation),
      "NextToken" : String
    )

    alias GetDevicesRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceIds" : Array(String),
      "SiteId" : String,
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetDevicesResponse = NamedTuple(
      "Devices" : Array(Device),
      "NextToken" : String
    )

    alias GetLinkAssociationsRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String,
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetLinkAssociationsResponse = NamedTuple(
      "LinkAssociations" : Array(LinkAssociation),
      "NextToken" : String
    )

    alias GetLinksRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "LinkIds" : Array(String),
      "SiteId" : String,
      "Type" : String,
      "Provider" : String,
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetLinksResponse = NamedTuple(
      "Links" : Array(Link),
      "NextToken" : String
    )

    alias GetSitesRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "SiteIds" : Array(String),
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetSitesResponse = NamedTuple(
      "Sites" : Array(Site),
      "NextToken" : String
    )

    alias GetTransitGatewayConnectPeerAssociationsRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayConnectPeerArns" : Array(String),
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetTransitGatewayConnectPeerAssociationsResponse = NamedTuple(
      "TransitGatewayConnectPeerAssociations" : Array(TransitGatewayConnectPeerAssociation),
      "NextToken" : String
    )

    alias GetTransitGatewayRegistrationsRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayArns" : Array(String),
      "MaxResults" : UInt16,
      "NextToken" : String
    )

    alias GetTransitGatewayRegistrationsResponse = NamedTuple(
      "TransitGatewayRegistrations" : Array(TransitGatewayRegistration),
      "NextToken" : String
    )

    alias GlobalNetwork = NamedTuple(
      "GlobalNetworkId" : String,
      "GlobalNetworkArn" : String,
      "Description" : String,
      "CreatedAt" : (String | UInt64 | Time)?,
      "State" : String,
      "Tags" : Array(Tag)
    )

    alias GlobalNetworkList = Array(GlobalNetwork)

    alias GlobalNetworkState = String

    alias Integer = Int32

    alias InternalServerException = NamedTuple(
      "Message" : String,
      "RetryAfterSeconds" : Int32
    )

    alias Link = NamedTuple(
      "LinkId" : String,
      "LinkArn" : String,
      "GlobalNetworkId" : String,
      "SiteId" : String,
      "Description" : String,
      "Type" : String,
      "Bandwidth" : Bandwidth,
      "Provider" : String,
      "CreatedAt" : (String | UInt64 | Time)?,
      "State" : String,
      "Tags" : Array(Tag)
    )

    alias LinkAssociation = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String,
      "LinkAssociationState" : String
    )

    alias LinkAssociationList = Array(LinkAssociation)

    alias LinkAssociationState = String

    alias LinkList = Array(Link)

    alias LinkState = String

    alias ListTagsForResourceRequest = NamedTuple(
      "ResourceArn" : String
    )

    alias ListTagsForResourceResponse = NamedTuple(
      "TagList" : Array(Tag)
    )

    alias Location = NamedTuple(
      "Address" : String,
      "Latitude" : String,
      "Longitude" : String
    )

    alias MaxResults = UInt16

    alias RegisterTransitGatewayRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayArn" : String
    )

    alias RegisterTransitGatewayResponse = NamedTuple(
      "TransitGatewayRegistration" : TransitGatewayRegistration
    )

    alias ResourceARN = String

    alias ResourceNotFoundException = NamedTuple(
      "Message" : String,
      "ResourceId" : String,
      "ResourceType" : String
    )

    alias RetryAfterSeconds = Int32

    alias ServiceQuotaExceededException = NamedTuple(
      "Message" : String,
      "ResourceId" : String,
      "ResourceType" : String,
      "LimitCode" : String,
      "ServiceCode" : String
    )

    alias Site = NamedTuple(
      "SiteId" : String,
      "SiteArn" : String,
      "GlobalNetworkId" : String,
      "Description" : String,
      "Location" : Location,
      "CreatedAt" : (String | UInt64 | Time)?,
      "State" : String,
      "Tags" : Array(Tag)
    )

    alias SiteList = Array(Site)

    alias SiteState = String

    alias String = String

    alias StringList = Array(String)

    alias Tag = NamedTuple(
      "Key" : String,
      "Value" : String
    )

    alias TagKey = String

    alias TagKeyList = Array(String)

    alias TagList = Array(Tag)

    alias TagResourceRequest = NamedTuple(
      "ResourceArn" : String,
      "Tags" : Array(Tag)
    )

    alias TagResourceResponse = NamedTuple(
      
    )

    alias TagValue = String

    alias ThrottlingException = NamedTuple(
      "Message" : String,
      "RetryAfterSeconds" : Int32
    )

    alias TransitGatewayConnectPeerAssociation = NamedTuple(
      "TransitGatewayConnectPeerArn" : String,
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "LinkId" : String,
      "State" : String
    )

    alias TransitGatewayConnectPeerAssociationList = Array(TransitGatewayConnectPeerAssociation)

    alias TransitGatewayConnectPeerAssociationState = String

    alias TransitGatewayRegistration = NamedTuple(
      "GlobalNetworkId" : String,
      "TransitGatewayArn" : String,
      "State" : TransitGatewayRegistrationStateReason
    )

    alias TransitGatewayRegistrationList = Array(TransitGatewayRegistration)

    alias TransitGatewayRegistrationState = String

    alias TransitGatewayRegistrationStateReason = NamedTuple(
      "Code" : String,
      "Message" : String
    )

    alias UntagResourceRequest = NamedTuple(
      "ResourceArn" : String,
      "TagKeys" : Array(String)
    )

    alias UntagResourceResponse = NamedTuple(
      
    )

    alias UpdateConnectionRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "ConnectionId" : String,
      "LinkId" : String,
      "ConnectedLinkId" : String,
      "Description" : String
    )

    alias UpdateConnectionResponse = NamedTuple(
      "Connection" : Connection
    )

    alias UpdateDeviceRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "DeviceId" : String,
      "AWSLocation" : AWSLocation,
      "Description" : String,
      "Type" : String,
      "Vendor" : String,
      "Model" : String,
      "SerialNumber" : String,
      "Location" : Location,
      "SiteId" : String
    )

    alias UpdateDeviceResponse = NamedTuple(
      "Device" : Device
    )

    alias UpdateGlobalNetworkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "Description" : String
    )

    alias UpdateGlobalNetworkResponse = NamedTuple(
      "GlobalNetwork" : GlobalNetwork
    )

    alias UpdateLinkRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "LinkId" : String,
      "Description" : String,
      "Type" : String,
      "Bandwidth" : Bandwidth,
      "Provider" : String
    )

    alias UpdateLinkResponse = NamedTuple(
      "Link" : Link
    )

    alias UpdateSiteRequest = NamedTuple(
      "GlobalNetworkId" : String,
      "SiteId" : String,
      "Description" : String,
      "Location" : Location
    )

    alias UpdateSiteResponse = NamedTuple(
      "Site" : Site
    )

    alias ValidationException = NamedTuple(
      "Message" : String,
      "Reason" : String,
      "Fields" : Array(ValidationExceptionField)
    )

    alias ValidationExceptionField = NamedTuple(
      "Name" : String,
      "Message" : String
    )

    alias ValidationExceptionFieldList = Array(ValidationExceptionField)

    alias ValidationExceptionReason = String
  end
end
