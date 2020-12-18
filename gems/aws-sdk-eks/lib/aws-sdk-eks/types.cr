# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  module Types

    # An Amazon EKS add-on.
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   An object that represents the health of the add-on.
    #   @return [Types::AddonHealth]
    #
    # @!attribute [rw] addon_arn
    #   The Amazon Resource Name (ARN) of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the add-on was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the add-on was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is bound to the
    #   Kubernetes service account used by the add-on.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Cluster tags do not
    #   propagate to any other resources associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Addon AWS API Documentation
    #
    class Addon < Struct.new(
      :addon_name,
      :cluster_name,
      :status,
      :addon_version,
      :health,
      :addon_arn,
      :created_at,
      :modified_at,
      :service_account_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The health of the add-on.
    #
    # @!attribute [rw] issues
    #   An object that represents the add-on's health issues.
    #   @return [Array<Types::AddonIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonHealth AWS API Documentation
    #
    class AddonHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an add-on.
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] addon_versions
    #   An object that represents information about available add-on
    #   versions and compatible Kubernetes versions.
    #   @return [Array<Types::AddonVersionInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonInfo AWS API Documentation
    #
    class AddonInfo < Struct.new(
      :addon_name,
      :type,
      :addon_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue related to an add-on.
    #
    # @!attribute [rw] code
    #   A code that describes the type of issue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides details about the issue and what might cause
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The resource IDs of the issue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonIssue AWS API Documentation
    #
    class AddonIssue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an add-on version.
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architectures that the version supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compatibilities
    #   An object that represents the compatibilities of a version.
    #   @return [Array<Types::Compatibility>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AddonVersionInfo AWS API Documentation
    #
    class AddonVersionInfo < Struct.new(
      :addon_version,
      :architecture,
      :compatibilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Auto Scaling group that is associated with an Amazon EKS managed
    # node group.
    #
    # @!attribute [rw] name
    #   The name of the Auto Scaling group associated with an Amazon EKS
    #   managed node group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/AutoScalingGroup AWS API Documentation
    #
    class AutoScalingGroup < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if the request contains a semantic error. The
    # precise meaning will depend on the API, and will be documented in the
    # error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the `certificate-authority-data` for your
    # cluster.
    #
    # @!attribute [rw] data
    #   The Base64-encoded certificate data required to communicate with
    #   your cluster. Add this to the `certificate-authority-data` section
    #   of the `kubeconfig` file for your cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a client action. Actions can
    # include using an action or resource on behalf of a user that doesn't
    # have permissions to use the action or resource or specifying an
    # identifier that is not valid.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster.
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the cluster was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The Kubernetes server version for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for your Kubernetes API server.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to AWS
    #   API operations on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #   @return [Types::KubernetesNetworkConfigResponse]
    #
    # @!attribute [rw] logging
    #   The logging configuration for your cluster.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] identity
    #   The identity provider information for the cluster.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] status
    #   The current status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The `certificate-authority-data` for your cluster.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of your Amazon EKS cluster. For more
    #   information, see [Platform Versions][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Cluster tags do not
    #   propagate to any other resources associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_config
    #   The encryption configuration for the cluster.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :name,
      :arn,
      :created_at,
      :version,
      :endpoint,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :identity,
      :status,
      :certificate_authority,
      :client_request_token,
      :platform_version,
      :tags,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compatibility information.
    #
    # @!attribute [rw] cluster_version
    #   The supported Kubernetes version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] platform_versions
    #   The supported compute platform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_version
    #   The supported default version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Compatibility AWS API Documentation
    #
    class Compatibility < Struct.new(
      :cluster_version,
      :platform_versions,
      :default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAddonRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "ClusterName", # required
    #         addon_name: "String", # required
    #         addon_version: "String",
    #         service_account_role_arn: "RoleArn",
    #         resolve_conflicts: "OVERWRITE", # accepts OVERWRITE, NONE
    #         client_request_token: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster to create the add-on for.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to
    #   the add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an
    #   existing IAM role, then the add-on uses the permissions assigned to
    #   the node IAM role. For more information, see [Amazon EKS node IAM
    #   role][1] in the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #   @return [String]
    #
    # @!attribute [rw] resolve_conflicts
    #   How to resolve parameter value conflicts when migrating an existing
    #   add-on to an Amazon EKS add-on.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the cluster to assist with categorization
    #   and organization. Each tag consists of a key and an optional value,
    #   both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAddonRequest AWS API Documentation
    #
    class CreateAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on.
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateAddonResponse AWS API Documentation
    #
    class CreateAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "ClusterName", # required
    #         version: "String",
    #         role_arn: "String", # required
    #         resources_vpc_config: { # required
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #           endpoint_public_access: false,
    #           endpoint_private_access: false,
    #           public_access_cidrs: ["String"],
    #         },
    #         kubernetes_network_config: {
    #           service_ipv_4_cidr: "String",
    #         },
    #         logging: {
    #           cluster_logging: [
    #             {
    #               types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #               enabled: false,
    #             },
    #           ],
    #         },
    #         client_request_token: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         encryption_config: [
    #           {
    #             resources: ["String"],
    #             provider: {
    #               key_arn: "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The unique name to give to your cluster.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version for your cluster. If you don't
    #   specify a value here, the latest version available in Amazon EKS is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to AWS
    #   API operations on your behalf. For more information, see [Amazon EKS
    #   Service IAM Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You can specify up to five security groups, but we recommend that
    #   you use a dedicated security group for your cluster control plane.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] kubernetes_network_config
    #   The Kubernetes network configuration for the cluster.
    #   @return [Types::KubernetesNetworkConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the cluster to assist with categorization
    #   and organization. Each tag consists of a key and an optional value,
    #   both of which you define.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_config
    #   The encryption configuration for the cluster.
    #   @return [Array<Types::EncryptionConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :name,
      :version,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :client_request_token,
      :tags,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your new cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFargateProfileRequest
    #   data as a hash:
    #
    #       {
    #         fargate_profile_name: "String", # required
    #         cluster_name: "String", # required
    #         pod_execution_role_arn: "String", # required
    #         subnets: ["String"],
    #         selectors: [
    #           {
    #             namespace: "String",
    #             labels: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         client_request_token: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster to apply the Fargate profile to.
    #   @return [String]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the pod execution role to use for
    #   pods that match the selectors in the Fargate profile. The pod
    #   execution role allows Fargate infrastructure to register with your
    #   cluster as a node, and it provides read access to Amazon ECR image
    #   repositories. For more information, see [Pod Execution Role][1] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch your pods into. At this time, pods
    #   running on Fargate are not assigned public IP addresses, so only
    #   private subnets (with no direct route to an Internet Gateway) are
    #   accepted for this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for pods to use this Fargate profile. Each
    #   selector must have an associated namespace. Optionally, you can also
    #   specify labels for a namespace. You may specify up to five selectors
    #   in a Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the Fargate profile to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Fargate profile tags do
    #   not propagate to any other resources associated with the Fargate
    #   profile, such as the pods that are scheduled with it.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfileRequest AWS API Documentation
    #
    class CreateFargateProfileRequest < Struct.new(
      :fargate_profile_name,
      :cluster_name,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The full description of your new Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateFargateProfileResponse AWS API Documentation
    #
    class CreateFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNodegroupRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         nodegroup_name: "String", # required
    #         scaling_config: {
    #           min_size: 1,
    #           max_size: 1,
    #           desired_size: 1,
    #         },
    #         disk_size: 1,
    #         subnets: ["String"], # required
    #         instance_types: ["String"],
    #         ami_type: "AL2_x86_64", # accepts AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64
    #         remote_access: {
    #           ec2_ssh_key: "String",
    #           source_security_groups: ["String"],
    #         },
    #         node_role: "String", # required
    #         labels: {
    #           "labelKey" => "labelValue",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_request_token: "String",
    #         launch_template: {
    #           name: "String",
    #           version: "String",
    #           id: "String",
    #         },
    #         capacity_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #         version: "String",
    #         release_version: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster to create the node group in.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The unique name to give your node group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   created for your node group.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] disk_size
    #   The root device disk size (in GiB) for your node group instances.
    #   The default disk size is 20 GiB. If you specify `launchTemplate`,
    #   then don't specify `diskSize`, or the node group deployment will
    #   fail. For more information about using launch templates with Amazon
    #   EKS, see [Launch template support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The subnets to use for the Auto Scaling group that is created for
    #   your node group. These subnets must have the tag key
    #   `kubernetes.io/cluster/CLUSTER_NAME` with a value of `shared`, where
    #   `CLUSTER_NAME` is replaced with the name of your cluster. If you
    #   specify `launchTemplate`, then don't specify [ `SubnetId` ][1] in
    #   your launch template, or the node group deployment will fail. For
    #   more information about using launch templates with Amazon EKS, see
    #   [Launch template support][2] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_types
    #   Specify the instance types for a node group. If you specify a GPU
    #   instance type, be sure to specify `AL2_x86_64_GPU` with the
    #   `amiType` parameter. If you specify `launchTemplate`, then you can
    #   specify zero or one instance type in your launch template *or* you
    #   can specify 0-20 instance types for `instanceTypes`. If however, you
    #   specify an instance type in your launch template *and* specify any
    #   `instanceTypes`, the node group deployment will fail. If you don't
    #   specify an instance type in a launch template or for
    #   `instanceTypes`, then `t3.medium` is used, by default. If you
    #   specify `Spot` for `capacityType`, then we recommend specifying
    #   multiple values for `instanceTypes`. For more information, see
    #   [Managed node group capacity types][1] and [Launch template
    #   support][2] in the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/managed-node-groups.html#managed-node-group-capacity-types
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] ami_type
    #   The AMI type for your node group. GPU instance types should use the
    #   `AL2_x86_64_GPU` AMI type. Non-GPU instances should use the
    #   `AL2_x86_64` AMI type. Arm instances should use the `AL2_ARM_64` AMI
    #   type. All types use the Amazon EKS optimized Amazon Linux 2 AMI. If
    #   you specify `launchTemplate`, and your launch template uses a custom
    #   AMI, then don't specify `amiType`, or the node group deployment
    #   will fail. For more information about using launch templates with
    #   Amazon EKS, see [Launch template support][1] in the Amazon EKS User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] remote_access
    #   The remote access (SSH) configuration to use with your node group.
    #   If you specify `launchTemplate`, then don't specify `remoteAccess`,
    #   or the node group deployment will fail. For more information about
    #   using launch templates with Amazon EKS, see [Launch template
    #   support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [Types::RemoteAccessConfig]
    #
    # @!attribute [rw] node_role
    #   The Amazon Resource Name (ARN) of the IAM role to associate with
    #   your node group. The Amazon EKS worker node `kubelet` daemon makes
    #   calls to AWS APIs on your behalf. Worker nodes receive permissions
    #   for these API calls through an IAM instance profile and associated
    #   policies. Before you can launch worker nodes and register them into
    #   a cluster, you must create an IAM role for those worker nodes to use
    #   when they are launched. For more information, see [Amazon EKS Worker
    #   Node IAM Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>. If
    #   you specify `launchTemplate`, then don't specify [
    #   `IamInstanceProfile` ][2] in your launch template, or the node group
    #   deployment will fail. For more information about using launch
    #   templates with Amazon EKS, see [Launch template support][3] in the
    #   Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   when they are created.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The metadata to apply to the node group to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Node group tags do not
    #   propagate to any other resources associated with the node group,
    #   such as the Amazon EC2 instances or subnets.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   An object representing a node group's launch template
    #   specification. If specified, then do not specify `instanceTypes`,
    #   `diskSize`, or `remoteAccess` and make sure that the launch template
    #   meets the requirements in `launchTemplateSpecification`.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] capacity_type
    #   The capacity type for your node group.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version to use for your managed nodes. By default,
    #   the Kubernetes version of the cluster is used, and this is the only
    #   accepted specified value. If you specify `launchTemplate`, and your
    #   launch template uses a custom AMI, then don't specify `version`, or
    #   the node group deployment will fail. For more information about
    #   using launch templates with Amazon EKS, see [Launch template
    #   support][1] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The AMI version of the Amazon EKS optimized AMI to use with your
    #   node group. By default, the latest available AMI version for the
    #   node group's current Kubernetes version is used. For more
    #   information, see [Amazon EKS optimized Amazon Linux 2 AMI
    #   versions][1] in the *Amazon EKS User Guide*. If you specify
    #   `launchTemplate`, and your launch template uses a custom AMI, then
    #   don't specify `releaseVersion`, or the node group deployment will
    #   fail. For more information about using launch templates with Amazon
    #   EKS, see [Launch template support][2] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroupRequest AWS API Documentation
    #
    class CreateNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :scaling_config,
      :disk_size,
      :subnets,
      :instance_types,
      :ami_type,
      :remote_access,
      :node_role,
      :labels,
      :tags,
      :client_request_token,
      :launch_template,
      :capacity_type,
      :version,
      :release_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your new node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateNodegroupResponse AWS API Documentation
    #
    class CreateNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAddonRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "ClusterName", # required
    #         addon_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster to delete the add-on from.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAddonRequest AWS API Documentation
    #
    class DeleteAddonRequest < Struct.new(
      :cluster_name,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on.
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteAddonResponse AWS API Documentation
    #
    class DeleteAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the cluster to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of the cluster to delete.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFargateProfileRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         fargate_profile_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate
    #   profile to delete.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfileRequest AWS API Documentation
    #
    class DeleteFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The deleted Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteFargateProfileResponse AWS API Documentation
    #
    class DeleteFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNodegroupRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         nodegroup_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that is associated with your node
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the node group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroupRequest AWS API Documentation
    #
    class DeleteNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your deleted node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteNodegroupResponse AWS API Documentation
    #
    class DeleteNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAddonRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "ClusterName", # required
    #         addon_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonRequest AWS API Documentation
    #
    class DescribeAddonRequest < Struct.new(
      :cluster_name,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon
    #   An Amazon EKS add-on.
    #   @return [Types::Addon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonResponse AWS API Documentation
    #
    class DescribeAddonResponse < Struct.new(
      :addon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAddonVersionsRequest
    #   data as a hash:
    #
    #       {
    #         kubernetes_version: "String",
    #         max_results: 1,
    #         next_token: "String",
    #         addon_name: "String",
    #       }
    #
    # @!attribute [rw] kubernetes_version
    #   The Kubernetes versions that the add-on can be used with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeAddonVersionsRequest` where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonVersionsRequest AWS API Documentation
    #
    class DescribeAddonVersionsRequest < Struct.new(
      :kubernetes_version,
      :max_results,
      :next_token,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addons
    #   The list of available versions with Kubernetes version
    #   compatibility.
    #   @return [Array<Types::AddonInfo>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeAddonVersionsResponse` where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeAddonVersionsResponse AWS API Documentation
    #
    class DescribeAddonVersionsResponse < Struct.new(
      :addons,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the cluster to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your specified cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFargateProfileRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         fargate_profile_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the Fargate
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfileRequest AWS API Documentation
    #
    class DescribeFargateProfileRequest < Struct.new(
      :cluster_name,
      :fargate_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile
    #   The full description of your Fargate profile.
    #   @return [Types::FargateProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeFargateProfileResponse AWS API Documentation
    #
    class DescribeFargateProfileResponse < Struct.new(
      :fargate_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNodegroupRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         nodegroup_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster associated with the node group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the node group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroupRequest AWS API Documentation
    #
    class DescribeNodegroupRequest < Struct.new(
      :cluster_name,
      :nodegroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroup
    #   The full description of your node group.
    #   @return [Types::Nodegroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeNodegroupResponse AWS API Documentation
    #
    class DescribeNodegroupResponse < Struct.new(
      :nodegroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUpdateRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         update_id: "String", # required
    #         nodegroup_name: "String",
    #         addon_name: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster associated with the update.
    #   @return [String]
    #
    # @!attribute [rw] update_id
    #   The ID of the update to describe.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the Amazon EKS node group associated with the update.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateRequest AWS API Documentation
    #
    class DescribeUpdateRequest < Struct.new(
      :name,
      :update_id,
      :nodegroup_name,
      :addon_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateResponse AWS API Documentation
    #
    class DescribeUpdateResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the cluster.
    #
    # @note When making an API call, you may pass EncryptionConfig
    #   data as a hash:
    #
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String",
    #         },
    #       }
    #
    # @!attribute [rw] resources
    #   Specifies the resources to be encrypted. The only supported value is
    #   "secrets".
    #   @return [Array<String>]
    #
    # @!attribute [rw] provider
    #   AWS Key Management Service (AWS KMS) customer master key (CMK).
    #   Either the ARN or the alias can be used.
    #   @return [Types::Provider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :resources,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an error when an asynchronous operation fails.
    #
    # @!attribute [rw] error_code
    #   A brief description of the error.
    #
    #   * **SubnetNotFound**\: We couldn't find one of the subnets
    #     associated with the cluster.
    #
    #   * **SecurityGroupNotFound**\: We couldn't find one of the security
    #     groups associated with the cluster.
    #
    #   * **EniLimitReached**\: You have reached the elastic network
    #     interface limit for your account.
    #
    #   * **IpNotAvailable**\: A subnet associated with the cluster doesn't
    #     have any free IP addresses.
    #
    #   * **AccessDenied**\: You don't have permissions to perform the
    #     specified operation.
    #
    #   * **OperationNotPermitted**\: The service role associated with the
    #     cluster doesn't have the required access permissions for Amazon
    #     EKS.
    #
    #   * **VpcIdNotFound**\: We couldn't find the VPC associated with the
    #     cluster.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A more complete description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   An optional field that contains the resource IDs associated with the
    #   error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an AWS Fargate profile.
    #
    # @!attribute [rw] fargate_profile_name
    #   The name of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_arn
    #   The full Amazon Resource Name (ARN) of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that the Fargate profile belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the Fargate profile was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] pod_execution_role_arn
    #   The Amazon Resource Name (ARN) of the pod execution role to use for
    #   pods that match the selectors in the Fargate profile. For more
    #   information, see [Pod Execution Role][1] in the *Amazon EKS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of subnets to launch pods into.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selectors
    #   The selectors to match for pods to use this Fargate profile.
    #   @return [Array<Types::FargateProfileSelector>]
    #
    # @!attribute [rw] status
    #   The current status of the Fargate profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata applied to the Fargate profile to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Fargate profile tags do
    #   not propagate to any other resources associated with the Fargate
    #   profile, such as the pods that are scheduled with it.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfile AWS API Documentation
    #
    class FargateProfile < Struct.new(
      :fargate_profile_name,
      :fargate_profile_arn,
      :cluster_name,
      :created_at,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an AWS Fargate profile selector.
    #
    # @note When making an API call, you may pass FargateProfileSelector
    #   data as a hash:
    #
    #       {
    #         namespace: "String",
    #         labels: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] namespace
    #   The Kubernetes namespace that the selector should match.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels that the selector should match. A pod must
    #   contain all of the labels that are specified in the selector for it
    #   to be considered a match.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/FargateProfileSelector AWS API Documentation
    #
    class FargateProfileSelector < Struct.new(
      :namespace,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an identity provider for authentication
    # credentials.
    #
    # @!attribute [rw] oidc
    #   The [OpenID Connect][1] identity provider information for the
    #   cluster.
    #
    #
    #
    #   [1]: https://openid.net/connect/
    #   @return [Types::OIDC]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :oidc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The Fargate profile associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid given the state of the cluster. Check the state
    # of the cluster and the associated operations.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an issue with an Amazon EKS resource.
    #
    # @!attribute [rw] code
    #   A brief description of the error.
    #
    #   * **AccessDenied**\: Amazon EKS or one or more of your managed nodes
    #     is failing to authenticate or authorize with your Kubernetes
    #     cluster API server.
    #
    #   * **AsgInstanceLaunchFailures**\: Your Auto Scaling group is
    #     experiencing failures while attempting to launch instances.
    #
    #   * **AutoScalingGroupNotFound**\: We couldn't find the Auto Scaling
    #     group associated with the managed node group. You may be able to
    #     recreate an Auto Scaling group with the same settings to recover.
    #
    #   * **ClusterUnreachable**\: Amazon EKS or one or more of your managed
    #     nodes is unable to to communicate with your Kubernetes cluster API
    #     server. This can happen if there are network disruptions or if API
    #     servers are timing out processing requests.
    #
    #   * **Ec2LaunchTemplateNotFound**\: We couldn't find the Amazon EC2
    #     launch template for your managed node group. You may be able to
    #     recreate a launch template with the same settings to recover.
    #
    #   * **Ec2LaunchTemplateVersionMismatch**\: The Amazon EC2 launch
    #     template version for your managed node group does not match the
    #     version that Amazon EKS created. You may be able to revert to the
    #     version that Amazon EKS created to recover.
    #
    #   * **Ec2SecurityGroupDeletionFailure**\: We could not delete the
    #     remote access security group for your managed node group. Remove
    #     any dependencies from the security group.
    #
    #   * **Ec2SecurityGroupNotFound**\: We couldn't find the cluster
    #     security group for the cluster. You must recreate your cluster.
    #
    #   * **Ec2SubnetInvalidConfiguration**\: One or more Amazon EC2 subnets
    #     specified for a node group do not automatically assign public IP
    #     addresses to instances launched into it. If you want your
    #     instances to be assigned a public IP address, then you need to
    #     enable the `auto-assign public IP address` setting for the subnet.
    #     See [Modifying the public IPv4 addressing attribute for your
    #     subnet][1] in the Amazon VPC User Guide.
    #
    #   * **IamInstanceProfileNotFound**\: We couldn't find the IAM
    #     instance profile for your managed node group. You may be able to
    #     recreate an instance profile with the same settings to recover.
    #
    #   * **IamNodeRoleNotFound**\: We couldn't find the IAM role for your
    #     managed node group. You may be able to recreate an IAM role with
    #     the same settings to recover.
    #
    #   * **InstanceLimitExceeded**\: Your AWS account is unable to launch
    #     any more instances of the specified instance type. You may be able
    #     to request an Amazon EC2 instance limit increase to recover.
    #
    #   * **InsufficientFreeAddresses**\: One or more of the subnets
    #     associated with your managed node group does not have enough
    #     available IP addresses for new nodes.
    #
    #   * **InternalFailure**\: These errors are usually caused by an Amazon
    #     EKS server-side issue.
    #
    #   * **NodeCreationFailure**\: Your launched instances are unable to
    #     register with your Amazon EKS cluster. Common causes of this
    #     failure are insufficient [worker node IAM role][2] permissions or
    #     lack of outbound internet access for the nodes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message associated with the issue.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The AWS resources that are afflicted by this issue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Issue AWS API Documentation
    #
    class Issue < Struct.new(
      :code,
      :message,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Kubernetes network configuration for the cluster.
    #
    # @note When making an API call, you may pass KubernetesNetworkConfigRequest
    #   data as a hash:
    #
    #       {
    #         service_ipv_4_cidr: "String",
    #       }
    #
    # @!attribute [rw] service_ipv_4_cidr
    #   The CIDR block to assign Kubernetes service IP addresses from. If
    #   you don't specify a block, Kubernetes assigns addresses from either
    #   the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that
    #   you specify a block that does not overlap with resources in other
    #   networks that are peered or connected to your VPC. The block must
    #   meet the following requirements:
    #
    #   * Within one of the following private IP address blocks: 10.0.0.0/8,
    #     172.16.0.0.0/12, or 192.168.0.0/16.
    #
    #   * Doesn't overlap with any CIDR block assigned to the VPC that you
    #     selected for VPC.
    #
    #   * Between /24 and /12.
    #
    #   You can only specify a custom CIDR block when you create a cluster
    #   and can't change this value once the cluster is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigRequest AWS API Documentation
    #
    class KubernetesNetworkConfigRequest < Struct.new(
      :service_ipv_4_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Kubernetes network configuration for the cluster.
    #
    # @!attribute [rw] service_ipv_4_cidr
    #   The CIDR block that Kubernetes service IP addresses are assigned
    #   from. If you didn't specify a CIDR block when you created the
    #   cluster, then Kubernetes assigns addresses from either the
    #   10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. If this was specified,
    #   then it was specified when the cluster was created and it cannot be
    #   changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/KubernetesNetworkConfigResponse AWS API Documentation
    #
    class KubernetesNetworkConfigResponse < Struct.new(
      :service_ipv_4_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a node group launch template specification. The
    # launch template cannot include [ `SubnetId` ][1], [
    # `IamInstanceProfile` ][2], [ `RequestSpotInstances` ][3], [
    # `HibernationOptions` ][4], or [ `TerminateInstances` ][5], or the node
    # group deployment or update will fail. For more information about
    # launch templates, see [ `CreateLaunchTemplate` ][6] in the Amazon EC2
    # API Reference. For more information about using launch templates with
    # Amazon EKS, see [Launch template support][7] in the Amazon EKS User
    # Guide.
    #
    # Specify either `name` or `id`, but not both.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html
    # [3]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html
    # [4]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html
    # [5]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html
    # [6]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html
    # [7]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #
    # @note When making an API call, you may pass LaunchTemplateSpecification
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         version: "String",
    #         id: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the launch template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the launch template to use. If no version is
    #   specified, then the template's default version is used.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the launch template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :name,
      :version,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAddonsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "ClusterName", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of add-on results returned by `ListAddonsRequest`
    #   in paginated output. When you use this parameter,
    #   `ListAddonsRequest` returns only `maxResults` results in a single
    #   page along with a `nextToken` response element. You can see the
    #   remaining results of the initial request by sending another
    #   `ListAddonsRequest` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this
    #   parameter, `ListAddonsRequest` returns up to 100 results and a
    #   `nextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAddonsRequest` where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAddonsRequest AWS API Documentation
    #
    class ListAddonsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addons
    #   A list of available add-ons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAddonsResponse` where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListAddonsResponse AWS API Documentation
    #
    class ListAddonsResponse < Struct.new(
      :addons,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When you use this parameter, `ListClusters`
    #   returns only `maxResults` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If you don't use this parameter, `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of all of the clusters for your account in the specified
    #   Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListClusters` request.
    #   When the results of a `ListClusters` request exceed `maxResults`,
    #   you can use this value to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFargateProfilesRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that you would like to
    #   listFargate profiles in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Fargate profile results returned by
    #   `ListFargateProfiles` in paginated output. When you use this
    #   parameter, `ListFargateProfiles` returns only `maxResults` results
    #   in a single page along with a `nextToken` response element. You can
    #   see the remaining results of the initial request by sending another
    #   `ListFargateProfiles` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this
    #   parameter, `ListFargateProfiles` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListFargateProfiles` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfilesRequest AWS API Documentation
    #
    class ListFargateProfilesRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fargate_profile_names
    #   A list of all of the Fargate profiles associated with the specified
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListFargateProfiles`
    #   request. When the results of a `ListFargateProfiles` request exceed
    #   `maxResults`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListFargateProfilesResponse AWS API Documentation
    #
    class ListFargateProfilesResponse < Struct.new(
      :fargate_profile_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNodegroupsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that you would like to list node
    #   groups in.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of node group results returned by
    #   `ListNodegroups` in paginated output. When you use this parameter,
    #   `ListNodegroups` returns only `maxResults` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another `ListNodegroups`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If you don't use this parameter,
    #   `ListNodegroups` returns up to 100 results and a `nextToken` value
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListNodegroups` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroupsRequest AWS API Documentation
    #
    class ListNodegroupsRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodegroups
    #   A list of all of the node groups associated with the specified
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListNodegroups`
    #   request. When the results of a `ListNodegroups` request exceed
    #   `maxResults`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListNodegroupsResponse AWS API Documentation
    #
    class ListNodegroupsResponse < Struct.new(
      :nodegroups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   Amazon EKS clusters and managed node groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUpdatesRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         nodegroup_name: "String",
    #         addon_name: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to list updates for.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the Amazon EKS managed node group to list updates for.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The names of the installed add-ons that have available updates.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListUpdates` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of update results returned by `ListUpdates` in
    #   paginated output. When you use this parameter, `ListUpdates` returns
    #   only `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListUpdates` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you
    #   don't use this parameter, `ListUpdates` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesRequest AWS API Documentation
    #
    class ListUpdatesRequest < Struct.new(
      :name,
      :nodegroup_name,
      :addon_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_ids
    #   A list of all the updates for the specified cluster and Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListUpdates` request.
    #   When the results of a `ListUpdates` request exceed `maxResults`, you
    #   can use this value to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesResponse AWS API Documentation
    #
    class ListUpdatesResponse < Struct.new(
      :update_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the enabled or disabled Kubernetes control
    # plane logs for your cluster.
    #
    # @note When making an API call, you may pass LogSetup
    #   data as a hash:
    #
    #       {
    #         types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] types
    #   The available cluster control plane log types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   If a log type is enabled, that log type exports its control plane
    #   logs to CloudWatch Logs. If a log type isn't enabled, that log type
    #   doesn't export its control plane logs. Each individual log type can
    #   be enabled or disabled independently.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/LogSetup AWS API Documentation
    #
    class LogSetup < Struct.new(
      :types,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the logging configuration for resources in your
    # cluster.
    #
    # @note When making an API call, you may pass Logging
    #   data as a hash:
    #
    #       {
    #         cluster_logging: [
    #           {
    #             types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #             enabled: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_logging
    #   The cluster control plane logging configuration for your cluster.
    #   @return [Array<Types::LogSetup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :cluster_logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS managed node group.
    #
    # @!attribute [rw] nodegroup_name
    #   The name associated with an Amazon EKS managed node group.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_arn
    #   The Amazon Resource Name (ARN) associated with the managed node
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that the managed node group resides in.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version of the managed node group.
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   If the node group was deployed using a launch template with a custom
    #   AMI, then this is the AMI ID that was specified in the launch
    #   template. For node groups that weren't deployed using a launch
    #   template, this is the version of the Amazon EKS optimized AMI that
    #   the node group was deployed with.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the managed node group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The Unix epoch timestamp in seconds for when the managed node group
    #   was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the managed node group.
    #   @return [String]
    #
    # @!attribute [rw] capacity_type
    #   The capacity type of your managed node group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group that is
    #   associated with your node group.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] instance_types
    #   If the node group wasn't deployed with a launch template, then this
    #   is the instance type that is associated with the node group. If the
    #   node group was deployed with a launch template, then this is `null`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The subnets that were specified for the Auto Scaling group that is
    #   associated with your node group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remote_access
    #   If the node group wasn't deployed with a launch template, then this
    #   is the remote access configuration that is associated with the node
    #   group. If the node group was deployed with a launch template, then
    #   this is `null`.
    #   @return [Types::RemoteAccessConfig]
    #
    # @!attribute [rw] ami_type
    #   If the node group was deployed using a launch template with a custom
    #   AMI, then this is `CUSTOM`. For node groups that weren't deployed
    #   using a launch template, this is the AMI type that was specified in
    #   the node group configuration.
    #   @return [String]
    #
    # @!attribute [rw] node_role
    #   The IAM role associated with your node group. The Amazon EKS worker
    #   node `kubelet` daemon makes calls to AWS APIs on your behalf. Worker
    #   nodes receive permissions for these API calls through an IAM
    #   instance profile and associated policies.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels applied to the nodes in the node group.
    #
    #   <note markdown="1"> Only labels that are applied with the Amazon EKS API are shown here.
    #   There may be other Kubernetes labels applied to the nodes in this
    #   group.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resources
    #   The resources associated with the node group, such as Auto Scaling
    #   groups and security groups for remote access.
    #   @return [Types::NodegroupResources]
    #
    # @!attribute [rw] disk_size
    #   If the node group wasn't deployed with a launch template, then this
    #   is the disk size in the node group configuration. If the node group
    #   was deployed with a launch template, then this is `null`.
    #   @return [Integer]
    #
    # @!attribute [rw] health
    #   The health status of the node group. If there are issues with your
    #   node group's health, they are listed here.
    #   @return [Types::NodegroupHealth]
    #
    # @!attribute [rw] launch_template
    #   If a launch template was used to create the node group, then this is
    #   the launch template that was used.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] tags
    #   The metadata applied to the node group to assist with categorization
    #   and organization. Each tag consists of a key and an optional value,
    #   both of which you define. Node group tags do not propagate to any
    #   other resources associated with the node group, such as the Amazon
    #   EC2 instances or subnets.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Nodegroup AWS API Documentation
    #
    class Nodegroup < Struct.new(
      :nodegroup_name,
      :nodegroup_arn,
      :cluster_name,
      :version,
      :release_version,
      :created_at,
      :modified_at,
      :status,
      :capacity_type,
      :scaling_config,
      :instance_types,
      :subnets,
      :remote_access,
      :ami_type,
      :node_role,
      :labels,
      :resources,
      :disk_size,
      :health,
      :launch_template,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the health status of the node group.
    #
    # @!attribute [rw] issues
    #   Any issues that are associated with the node group.
    #   @return [Array<Types::Issue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupHealth AWS API Documentation
    #
    class NodegroupHealth < Struct.new(
      :issues)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the resources associated with the node group,
    # such as Auto Scaling groups and security groups for remote access.
    #
    # @!attribute [rw] auto_scaling_groups
    #   The Auto Scaling groups associated with the node group.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @!attribute [rw] remote_access_security_group
    #   The remote access security group associated with the node group.
    #   This security group controls SSH access to the worker nodes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupResources AWS API Documentation
    #
    class NodegroupResources < Struct.new(
      :auto_scaling_groups,
      :remote_access_security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the scaling configuration details for the Auto
    # Scaling group that is associated with your node group. If you specify
    # a value for any property, then you must specify values for all of the
    # properties.
    #
    # @note When making an API call, you may pass NodegroupScalingConfig
    #   data as a hash:
    #
    #       {
    #         min_size: 1,
    #         max_size: 1,
    #         desired_size: 1,
    #       }
    #
    # @!attribute [rw] min_size
    #   The minimum number of worker nodes that the managed node group can
    #   scale in to. This number must be greater than zero.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of worker nodes that the managed node group can
    #   scale out to. Managed node groups can support up to 100 nodes by
    #   default.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_size
    #   The current number of worker nodes that the managed node group
    #   should maintain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NodegroupScalingConfig AWS API Documentation
    #
    class NodegroupScalingConfig < Struct.new(
      :min_size,
      :max_size,
      :desired_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service resource associated with the request could not be found.
    # Clients should not retry such requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the [OpenID Connect][1] identity provider
    # information for the cluster.
    #
    #
    #
    # [1]: https://openid.net/connect/
    #
    # @!attribute [rw] issuer
    #   The issuer URL for the OpenID Connect identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/OIDC AWS API Documentation
    #
    class OIDC < Struct.new(
      :issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the AWS Key Management Service (AWS KMS) customer master
    # key (CMK) used to encrypt the secrets.
    #
    # @note When making an API call, you may pass Provider
    #   data as a hash:
    #
    #       {
    #         key_arn: "String",
    #       }
    #
    # @!attribute [rw] key_arn
    #   Amazon Resource Name (ARN) or alias of the customer master key
    #   (CMK). The CMK must be symmetric, created in the same region as the
    #   cluster, and if the CMK was created in a different account, the user
    #   must have access to the CMK. For more information, see [Allowing
    #   Users in Other Accounts to Use a CMK][1] in the *AWS Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Provider AWS API Documentation
    #
    class Provider < Struct.new(
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the remote access configuration for the managed
    # node group.
    #
    # @note When making an API call, you may pass RemoteAccessConfig
    #   data as a hash:
    #
    #       {
    #         ec2_ssh_key: "String",
    #         source_security_groups: ["String"],
    #       }
    #
    # @!attribute [rw] ec2_ssh_key
    #   The Amazon EC2 SSH key that provides access for SSH communication
    #   with the worker nodes in the managed node group. For more
    #   information, see [Amazon EC2 Key Pairs][1] in the *Amazon Elastic
    #   Compute Cloud User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #   @return [String]
    #
    # @!attribute [rw] source_security_groups
    #   The security groups that are allowed SSH access (port 22) to the
    #   worker nodes. If you specify an Amazon EC2 SSH key but do not
    #   specify a source security group when you create a managed node
    #   group, then port 22 on the worker nodes is opened to the internet
    #   (0.0.0.0/0). For more information, see [Security Groups for Your
    #   VPC][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/RemoteAccessConfig AWS API Documentation
    #
    class RemoteAccessConfig < Struct.new(
      :ec2_ssh_key,
      :source_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have encountered a service limit on the specified resource.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found. You can view your available
    # clusters with ListClusters. You can view your available managed node
    # groups with ListNodegroups. Amazon EKS clusters and node groups are
    # Region-specific.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] fargate_profile_name
    #   The Fargate profile associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   Currently, the supported resources are Amazon EKS clusters and
    #   managed node groups.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # At least one of your specified cluster subnets is in an Availability
    # Zone that does not support Amazon EKS. The exception output specifies
    # the supported Availability Zones for your account, from which you can
    # choose subnets for your cluster.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The Amazon EKS managed node group associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] valid_zones
    #   The supported Availability Zones for your account. Choose subnets in
    #   these Availability Zones for your cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UnsupportedAvailabilityZoneException AWS API Documentation
    #
    class UnsupportedAvailabilityZoneException < Struct.new(
      :message,
      :cluster_name,
      :nodegroup_name,
      :valid_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Currently, the supported resources are Amazon EKS clusters and
    #   managed node groups.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # An object representing an asynchronous update.
    #
    # @!attribute [rw] id
    #   A UUID that is used to track the update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the update.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the update.
    #   @return [String]
    #
    # @!attribute [rw] params
    #   A key-value map that contains the parameters associated with the
    #   update.
    #   @return [Array<Types::UpdateParam>]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the update was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Any errors associated with a `Failed` update.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Update AWS API Documentation
    #
    class Update < Struct.new(
      :id,
      :status,
      :type,
      :params,
      :created_at,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAddonRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "ClusterName", # required
    #         addon_name: "String", # required
    #         addon_version: "String",
    #         service_account_role_arn: "RoleArn",
    #         resolve_conflicts: "OVERWRITE", # accepts OVERWRITE, NONE
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the add-on. The name must match one of the names
    #   returned by [ `ListAddons` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html
    #   @return [String]
    #
    # @!attribute [rw] addon_version
    #   The version of the add-on. The version must match one of the
    #   versions returned by [ `DescribeAddonVersions` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html
    #   @return [String]
    #
    # @!attribute [rw] service_account_role_arn
    #   The Amazon Resource Name (ARN) of an existing IAM role to bind to
    #   the add-on's service account. The role must be assigned the IAM
    #   permissions required by the add-on. If you don't specify an
    #   existing IAM role, then the add-on uses the permissions assigned to
    #   the node IAM role. For more information, see [Amazon EKS node IAM
    #   role][1] in the *Amazon EKS User Guide*.
    #
    #   <note markdown="1"> To specify an existing IAM role, you must have an IAM OpenID Connect
    #   (OIDC) provider created for your cluster. For more information, see
    #   [Enabling IAM roles for service accounts on your cluster][2] in the
    #   *Amazon EKS User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
    #   @return [String]
    #
    # @!attribute [rw] resolve_conflicts
    #   How to resolve parameter value conflicts when applying the new
    #   version of the add-on to the cluster.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAddonRequest AWS API Documentation
    #
    class UpdateAddonRequest < Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateAddonResponse AWS API Documentation
    #
    class UpdateAddonResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterConfigRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         resources_vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #           endpoint_public_access: false,
    #           endpoint_private_access: false,
    #           public_access_cidrs: ["String"],
    #         },
    #         logging: {
    #           cluster_logging: [
    #             {
    #               types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #               enabled: false,
    #             },
    #           ],
    #         },
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   An object representing the VPC configuration to use for an Amazon
    #   EKS cluster.
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigRequest AWS API Documentation
    #
    class UpdateClusterConfigRequest < Struct.new(
      :name,
      :resources_vpc_config,
      :logging,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigResponse AWS API Documentation
    #
    class UpdateClusterConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         version: "String", # required
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version following a successful update.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionRequest AWS API Documentation
    #
    class UpdateClusterVersionRequest < Struct.new(
      :name,
      :version,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionResponse AWS API Documentation
    #
    class UpdateClusterVersionResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a Kubernetes label change for a managed node
    # group.
    #
    # @note When making an API call, you may pass UpdateLabelsPayload
    #   data as a hash:
    #
    #       {
    #         add_or_update_labels: {
    #           "labelKey" => "labelValue",
    #         },
    #         remove_labels: ["String"],
    #       }
    #
    # @!attribute [rw] add_or_update_labels
    #   Kubernetes labels to be added or updated.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] remove_labels
    #   Kubernetes labels to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateLabelsPayload AWS API Documentation
    #
    class UpdateLabelsPayload < Struct.new(
      :add_or_update_labels,
      :remove_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateNodegroupConfigRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         nodegroup_name: "String", # required
    #         labels: {
    #           add_or_update_labels: {
    #             "labelKey" => "labelValue",
    #           },
    #           remove_labels: ["String"],
    #         },
    #         scaling_config: {
    #           min_size: 1,
    #           max_size: 1,
    #           desired_size: 1,
    #         },
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that the managed node group
    #   resides in.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   The Kubernetes labels to be applied to the nodes in the node group
    #   after the update.
    #   @return [Types::UpdateLabelsPayload]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration details for the Auto Scaling group after
    #   the update.
    #   @return [Types::NodegroupScalingConfig]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfigRequest AWS API Documentation
    #
    class UpdateNodegroupConfigRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :labels,
      :scaling_config,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupConfigResponse AWS API Documentation
    #
    class UpdateNodegroupConfigResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateNodegroupVersionRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         nodegroup_name: "String", # required
    #         version: "String",
    #         release_version: "String",
    #         launch_template: {
    #           name: "String",
    #           version: "String",
    #           id: "String",
    #         },
    #         force: false,
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the Amazon EKS cluster that is associated with the
    #   managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] nodegroup_name
    #   The name of the managed node group to update.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The Kubernetes version to update to. If no version is specified,
    #   then the Kubernetes version of the node group does not change. You
    #   can specify the Kubernetes version of the cluster to update the node
    #   group to the latest AMI version of the cluster's Kubernetes
    #   version. If you specify `launchTemplate`, and your launch template
    #   uses a custom AMI, then don't specify `version`, or the node group
    #   update will fail. For more information about using launch templates
    #   with Amazon EKS, see [Launch template support][1] in the Amazon EKS
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] release_version
    #   The AMI version of the Amazon EKS optimized AMI to use for the
    #   update. By default, the latest available AMI version for the node
    #   group's Kubernetes version is used. For more information, see
    #   [Amazon EKS optimized Amazon Linux 2 AMI versions ][1] in the
    #   *Amazon EKS User Guide*. If you specify `launchTemplate`, and your
    #   launch template uses a custom AMI, then don't specify
    #   `releaseVersion`, or the node group update will fail. For more
    #   information about using launch templates with Amazon EKS, see
    #   [Launch template support][2] in the Amazon EKS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   An object representing a node group's launch template
    #   specification. You can only update a node group using a launch
    #   template if the node group was originally deployed with a launch
    #   template.
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] force
    #   Force the update if the existing node group's pods are unable to be
    #   drained due to a pod disruption budget issue. If an update fails
    #   because pods could not be drained, you can force the update after it
    #   fails to terminate the old node whether or not any pods are running
    #   on the node.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersionRequest AWS API Documentation
    #
    class UpdateNodegroupVersionRequest < Struct.new(
      :cluster_name,
      :nodegroup_name,
      :version,
      :release_version,
      :launch_template,
      :force,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateNodegroupVersionResponse AWS API Documentation
    #
    class UpdateNodegroupVersionResponse < Struct.new(
      :update)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of an update request.
    #
    # @!attribute [rw] type
    #   The keys associated with an update request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the keys submitted as part of an update request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateParam AWS API Documentation
    #
    class UpdateParam < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the VPC configuration to use for an Amazon EKS
    # cluster.
    #
    # @note When making an API call, you may pass VpcConfigRequest
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates
    #   cross-account elastic network interfaces in these subnets to allow
    #   communication between your worker nodes and the Kubernetes control
    #   plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specify one or more security groups for the cross-account elastic
    #   network interfaces that Amazon EKS creates to use to allow
    #   communication between your worker nodes and the Kubernetes control
    #   plane. If you don't specify any security groups, then familiarize
    #   yourself with the difference between Amazon EKS defaults for
    #   clusters deployed with Kubernetes:
    #
    #   * 1\.14 Amazon EKS platform version `eks.2` and earlier
    #
    #   * 1\.14 Amazon EKS platform version `eks.3` and later
    #
    #   For more information, see [Amazon EKS security group
    #   considerations][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_public_access
    #   Set this value to `false` to disable public access to your
    #   cluster's Kubernetes API server endpoint. If you disable public
    #   access, your cluster's Kubernetes API server can only receive
    #   requests from within the cluster VPC. The default value for this
    #   parameter is `true`, which enables public access for your Kubernetes
    #   API server. For more information, see [Amazon EKS Cluster Endpoint
    #   Access Control][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   Set this value to `true` to enable private access for your
    #   cluster's Kubernetes API server endpoint. If you enable private
    #   access, Kubernetes API requests from within your cluster's VPC use
    #   the private VPC endpoint. The default value for this parameter is
    #   `false`, which disables private access for your Kubernetes API
    #   server. If you disable private access and you have worker nodes or
    #   AWS Fargate pods in the cluster, then ensure that
    #   `publicAccessCidrs` includes the necessary CIDR blocks for
    #   communication with the worker nodes or Fargate pods. For more
    #   information, see [Amazon EKS Cluster Endpoint Access Control][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] public_access_cidrs
    #   The CIDR blocks that are allowed access to your cluster's public
    #   Kubernetes API server endpoint. Communication to the endpoint from
    #   addresses outside of the CIDR blocks that you specify is denied. The
    #   default value is `0.0.0.0/0`. If you've disabled private endpoint
    #   access and you have worker nodes or AWS Fargate pods in the cluster,
    #   then ensure that you specify the necessary CIDR blocks. For more
    #   information, see [Amazon EKS Cluster Endpoint Access Control][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigRequest AWS API Documentation
    #
    class VpcConfigRequest < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster VPC configuration
    # response.
    #
    # @!attribute [rw] subnet_ids
    #   The subnets associated with your cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups associated with the cross-account elastic
    #   network interfaces that are used to allow communication between your
    #   worker nodes and the Kubernetes control plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_security_group_id
    #   The cluster security group that was created by Amazon EKS for the
    #   cluster. Managed node groups use this security group for
    #   control-plane-to-data-plane communication.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC associated with your cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_public_access
    #   This parameter indicates whether the Amazon EKS public API server
    #   endpoint is enabled. If the Amazon EKS public API server endpoint is
    #   disabled, your cluster's Kubernetes API server can only receive
    #   requests that originate from within the cluster VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   This parameter indicates whether the Amazon EKS private API server
    #   endpoint is enabled. If the Amazon EKS private API server endpoint
    #   is enabled, Kubernetes API requests that originate from within your
    #   cluster's VPC use the private VPC endpoint instead of traversing
    #   the internet. If this value is disabled and you have worker nodes or
    #   AWS Fargate pods in the cluster, then ensure that
    #   `publicAccessCidrs` includes the necessary CIDR blocks for
    #   communication with the worker nodes or Fargate pods. For more
    #   information, see [Amazon EKS Cluster Endpoint Access Control][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] public_access_cidrs
    #   The CIDR blocks that are allowed access to your cluster's public
    #   Kubernetes API server endpoint. Communication to the endpoint from
    #   addresses outside of the listed CIDR blocks is denied. The default
    #   value is `0.0.0.0/0`. If you've disabled private endpoint access
    #   and you have worker nodes or AWS Fargate pods in the cluster, then
    #   ensure that the necessary CIDR blocks are listed. For more
    #   information, see [Amazon EKS Cluster Endpoint Access Control][1] in
    #   the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :cluster_security_group_id,
      :vpc_id,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs)
      SENSITIVE = []
      include Aws::Structure
    end

    alias AMITypes = String

    alias Addon = NamedTuple(
      "addonName" : String,
      "clusterName" : String,
      "status" : String,
      "addonVersion" : String,
      "health" : AddonHealth,
      "addonArn" : String,
      "createdAt" : (String | UInt64 | Time)?,
      "modifiedAt" : (String | UInt64 | Time)?,
      "serviceAccountRoleArn" : String,
      "tags" : Hash(String,String)
    )

    alias AddonHealth = NamedTuple(
      "issues" : Array(AddonIssue)
    )

    alias AddonInfo = NamedTuple(
      "addonName" : String,
      "type" : String,
      "addonVersions" : Array(AddonVersionInfo)
    )

    alias AddonIssue = NamedTuple(
      "code" : String,
      "message" : String,
      "resourceIds" : Array(String)
    )

    alias AddonIssueCode = String

    alias AddonIssueList = Array(AddonIssue)

    alias AddonStatus = String

    alias AddonVersionInfo = NamedTuple(
      "addonVersion" : String,
      "architecture" : Array(String),
      "compatibilities" : Array(Compatibility)
    )

    alias AddonVersionInfoList = Array(AddonVersionInfo)

    alias Addons = Array(AddonInfo)

    alias AutoScalingGroup = NamedTuple(
      "name" : String
    )

    alias AutoScalingGroupList = Array(AutoScalingGroup)

    alias BadRequestException = NamedTuple(
      "message" : String
    )

    alias Boolean = Bool

    alias BoxedBoolean = Bool

    alias BoxedInteger = Int32

    alias Capacity = UInt32

    alias CapacityTypes = String

    alias Certificate = NamedTuple(
      "data" : String
    )

    alias ClientException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "addonName" : String,
      "message" : String
    )

    alias Cluster = NamedTuple(
      "name" : String,
      "arn" : String,
      "createdAt" : (String | UInt64 | Time)?,
      "version" : String,
      "endpoint" : String,
      "roleArn" : String,
      "resourcesVpcConfig" : VpcConfigResponse,
      "kubernetesNetworkConfig" : KubernetesNetworkConfigResponse,
      "logging" : Logging,
      "identity" : Identity,
      "status" : String,
      "certificateAuthority" : Certificate,
      "clientRequestToken" : String,
      "platformVersion" : String,
      "tags" : Hash(String,String),
      "encryptionConfig" : Array(EncryptionConfig)
    )

    alias ClusterName = String

    alias ClusterStatus = String

    alias Compatibilities = Array(Compatibility)

    alias Compatibility = NamedTuple(
      "clusterVersion" : String,
      "platformVersions" : Array(String),
      "defaultVersion" : Bool
    )

    alias CreateAddonRequest = NamedTuple(
      "clusterName" : String,
      "addonName" : String,
      "addonVersion" : String,
      "serviceAccountRoleArn" : String,
      "resolveConflicts" : String,
      "clientRequestToken" : String,
      "tags" : Hash(String,String)
    )

    alias CreateAddonResponse = NamedTuple(
      "addon" : Addon
    )

    alias CreateClusterRequest = NamedTuple(
      "name" : String,
      "version" : String,
      "roleArn" : String,
      "resourcesVpcConfig" : VpcConfigRequest,
      "kubernetesNetworkConfig" : KubernetesNetworkConfigRequest,
      "logging" : Logging,
      "clientRequestToken" : String,
      "tags" : Hash(String,String),
      "encryptionConfig" : Array(EncryptionConfig)
    )

    alias CreateClusterResponse = NamedTuple(
      "cluster" : Cluster
    )

    alias CreateFargateProfileRequest = NamedTuple(
      "fargateProfileName" : String,
      "clusterName" : String,
      "podExecutionRoleArn" : String,
      "subnets" : Array(String),
      "selectors" : Array(FargateProfileSelector),
      "clientRequestToken" : String,
      "tags" : Hash(String,String)
    )

    alias CreateFargateProfileResponse = NamedTuple(
      "fargateProfile" : FargateProfile
    )

    alias CreateNodegroupRequest = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "scalingConfig" : NodegroupScalingConfig,
      "diskSize" : Int32,
      "subnets" : Array(String),
      "instanceTypes" : Array(String),
      "amiType" : String,
      "remoteAccess" : RemoteAccessConfig,
      "nodeRole" : String,
      "labels" : Hash(String,String),
      "tags" : Hash(String,String),
      "clientRequestToken" : String,
      "launchTemplate" : LaunchTemplateSpecification,
      "capacityType" : String,
      "version" : String,
      "releaseVersion" : String
    )

    alias CreateNodegroupResponse = NamedTuple(
      "nodegroup" : Nodegroup
    )

    alias DeleteAddonRequest = NamedTuple(
      "clusterName" : String,
      "addonName" : String
    )

    alias DeleteAddonResponse = NamedTuple(
      "addon" : Addon
    )

    alias DeleteClusterRequest = NamedTuple(
      "name" : String
    )

    alias DeleteClusterResponse = NamedTuple(
      "cluster" : Cluster
    )

    alias DeleteFargateProfileRequest = NamedTuple(
      "clusterName" : String,
      "fargateProfileName" : String
    )

    alias DeleteFargateProfileResponse = NamedTuple(
      "fargateProfile" : FargateProfile
    )

    alias DeleteNodegroupRequest = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String
    )

    alias DeleteNodegroupResponse = NamedTuple(
      "nodegroup" : Nodegroup
    )

    alias DescribeAddonRequest = NamedTuple(
      "clusterName" : String,
      "addonName" : String
    )

    alias DescribeAddonResponse = NamedTuple(
      "addon" : Addon
    )

    alias DescribeAddonVersionsRequest = NamedTuple(
      "kubernetesVersion" : String,
      "maxResults" : UInt8,
      "nextToken" : String,
      "addonName" : String
    )

    alias DescribeAddonVersionsRequestMaxResults = UInt8

    alias DescribeAddonVersionsResponse = NamedTuple(
      "addons" : Array(AddonInfo),
      "nextToken" : String
    )

    alias DescribeClusterRequest = NamedTuple(
      "name" : String
    )

    alias DescribeClusterResponse = NamedTuple(
      "cluster" : Cluster
    )

    alias DescribeFargateProfileRequest = NamedTuple(
      "clusterName" : String,
      "fargateProfileName" : String
    )

    alias DescribeFargateProfileResponse = NamedTuple(
      "fargateProfile" : FargateProfile
    )

    alias DescribeNodegroupRequest = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String
    )

    alias DescribeNodegroupResponse = NamedTuple(
      "nodegroup" : Nodegroup
    )

    alias DescribeUpdateRequest = NamedTuple(
      "name" : String,
      "updateId" : String,
      "nodegroupName" : String,
      "addonName" : String
    )

    alias DescribeUpdateResponse = NamedTuple(
      "update" : Update
    )

    alias EncryptionConfig = NamedTuple(
      "resources" : Array(String),
      "provider" : Provider
    )

    alias EncryptionConfigList = Array(EncryptionConfig)

    alias ErrorCode = String

    alias ErrorDetail = NamedTuple(
      "errorCode" : String,
      "errorMessage" : String,
      "resourceIds" : Array(String)
    )

    alias ErrorDetails = Array(ErrorDetail)

    alias FargateProfile = NamedTuple(
      "fargateProfileName" : String,
      "fargateProfileArn" : String,
      "clusterName" : String,
      "createdAt" : (String | UInt64 | Time)?,
      "podExecutionRoleArn" : String,
      "subnets" : Array(String),
      "selectors" : Array(FargateProfileSelector),
      "status" : String,
      "tags" : Hash(String,String)
    )

    alias FargateProfileLabel = Hash(String,String)

    alias FargateProfileSelector = NamedTuple(
      "namespace" : String,
      "labels" : Hash(String,String)
    )

    alias FargateProfileSelectors = Array(FargateProfileSelector)

    alias FargateProfileStatus = String

    alias FargateProfilesRequestMaxResults = UInt8

    alias Identity = NamedTuple(
      "oidc" : OIDC
    )

    alias InvalidParameterException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "fargateProfileName" : String,
      "addonName" : String,
      "message" : String
    )

    alias InvalidRequestException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "addonName" : String,
      "message" : String
    )

    alias Issue = NamedTuple(
      "code" : String,
      "message" : String,
      "resourceIds" : Array(String)
    )

    alias IssueList = Array(Issue)

    alias KubernetesNetworkConfigRequest = NamedTuple(
      "serviceIpv4Cidr" : String
    )

    alias KubernetesNetworkConfigResponse = NamedTuple(
      "serviceIpv4Cidr" : String
    )

    alias LaunchTemplateSpecification = NamedTuple(
      "name" : String,
      "version" : String,
      "id" : String
    )

    alias ListAddonsRequest = NamedTuple(
      "clusterName" : String,
      "maxResults" : UInt8,
      "nextToken" : String
    )

    alias ListAddonsRequestMaxResults = UInt8

    alias ListAddonsResponse = NamedTuple(
      "addons" : Array(String),
      "nextToken" : String
    )

    alias ListClustersRequest = NamedTuple(
      "maxResults" : UInt8,
      "nextToken" : String
    )

    alias ListClustersRequestMaxResults = UInt8

    alias ListClustersResponse = NamedTuple(
      "clusters" : Array(String),
      "nextToken" : String
    )

    alias ListFargateProfilesRequest = NamedTuple(
      "clusterName" : String,
      "maxResults" : UInt8,
      "nextToken" : String
    )

    alias ListFargateProfilesResponse = NamedTuple(
      "fargateProfileNames" : Array(String),
      "nextToken" : String
    )

    alias ListNodegroupsRequest = NamedTuple(
      "clusterName" : String,
      "maxResults" : UInt8,
      "nextToken" : String
    )

    alias ListNodegroupsRequestMaxResults = UInt8

    alias ListNodegroupsResponse = NamedTuple(
      "nodegroups" : Array(String),
      "nextToken" : String
    )

    alias ListTagsForResourceRequest = NamedTuple(
      "resourceArn" : String
    )

    alias ListTagsForResourceResponse = NamedTuple(
      "tags" : Hash(String,String)
    )

    alias ListUpdatesRequest = NamedTuple(
      "name" : String,
      "nodegroupName" : String,
      "addonName" : String,
      "nextToken" : String,
      "maxResults" : UInt8
    )

    alias ListUpdatesRequestMaxResults = UInt8

    alias ListUpdatesResponse = NamedTuple(
      "updateIds" : Array(String),
      "nextToken" : String
    )

    alias LogSetup = NamedTuple(
      "types" : Array(String),
      "enabled" : Bool
    )

    alias LogSetups = Array(LogSetup)

    alias LogType = String

    alias LogTypes = Array(String)

    alias Logging = NamedTuple(
      "clusterLogging" : Array(LogSetup)
    )

    alias Nodegroup = NamedTuple(
      "nodegroupName" : String,
      "nodegroupArn" : String,
      "clusterName" : String,
      "version" : String,
      "releaseVersion" : String,
      "createdAt" : (String | UInt64 | Time)?,
      "modifiedAt" : (String | UInt64 | Time)?,
      "status" : String,
      "capacityType" : String,
      "scalingConfig" : NodegroupScalingConfig,
      "instanceTypes" : Array(String),
      "subnets" : Array(String),
      "remoteAccess" : RemoteAccessConfig,
      "amiType" : String,
      "nodeRole" : String,
      "labels" : Hash(String,String),
      "resources" : NodegroupResources,
      "diskSize" : Int32,
      "health" : NodegroupHealth,
      "launchTemplate" : LaunchTemplateSpecification,
      "tags" : Hash(String,String)
    )

    alias NodegroupHealth = NamedTuple(
      "issues" : Array(Issue)
    )

    alias NodegroupIssueCode = String

    alias NodegroupResources = NamedTuple(
      "autoScalingGroups" : Array(AutoScalingGroup),
      "remoteAccessSecurityGroup" : String
    )

    alias NodegroupScalingConfig = NamedTuple(
      "minSize" : UInt32,
      "maxSize" : UInt32,
      "desiredSize" : UInt32
    )

    alias NodegroupStatus = String

    alias NotFoundException = NamedTuple(
      "message" : String
    )

    alias OIDC = NamedTuple(
      "issuer" : String
    )

    alias Provider = NamedTuple(
      "keyArn" : String
    )

    alias RemoteAccessConfig = NamedTuple(
      "ec2SshKey" : String,
      "sourceSecurityGroups" : Array(String)
    )

    alias ResolveConflicts = String

    alias ResourceInUseException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "addonName" : String,
      "message" : String
    )

    alias ResourceLimitExceededException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "message" : String
    )

    alias ResourceNotFoundException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "fargateProfileName" : String,
      "addonName" : String,
      "message" : String
    )

    alias RoleArn = String

    alias ServerException = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "addonName" : String,
      "message" : String
    )

    alias ServiceUnavailableException = NamedTuple(
      "message" : String
    )

    alias String = String

    alias StringList = Array(String)

    alias TagKey = String

    alias TagKeyList = Array(String)

    alias TagMap = Hash(String,String)

    alias TagResourceRequest = NamedTuple(
      "resourceArn" : String,
      "tags" : Hash(String,String)
    )

    alias TagResourceResponse = NamedTuple(
      
    )

    alias TagValue = String

    alias Timestamp = String | UInt64 | Time

    alias UnsupportedAvailabilityZoneException = NamedTuple(
      "message" : String,
      "clusterName" : String,
      "nodegroupName" : String,
      "validZones" : Array(String)
    )

    alias UntagResourceRequest = NamedTuple(
      "resourceArn" : String,
      "tagKeys" : Array(String)
    )

    alias UntagResourceResponse = NamedTuple(
      
    )

    alias Update = NamedTuple(
      "id" : String,
      "status" : String,
      "type" : String,
      "params" : Array(UpdateParam),
      "createdAt" : (String | UInt64 | Time)?,
      "errors" : Array(ErrorDetail)
    )

    alias UpdateAddonRequest = NamedTuple(
      "clusterName" : String,
      "addonName" : String,
      "addonVersion" : String,
      "serviceAccountRoleArn" : String,
      "resolveConflicts" : String,
      "clientRequestToken" : String
    )

    alias UpdateAddonResponse = NamedTuple(
      "update" : Update
    )

    alias UpdateClusterConfigRequest = NamedTuple(
      "name" : String,
      "resourcesVpcConfig" : VpcConfigRequest,
      "logging" : Logging,
      "clientRequestToken" : String
    )

    alias UpdateClusterConfigResponse = NamedTuple(
      "update" : Update
    )

    alias UpdateClusterVersionRequest = NamedTuple(
      "name" : String,
      "version" : String,
      "clientRequestToken" : String
    )

    alias UpdateClusterVersionResponse = NamedTuple(
      "update" : Update
    )

    alias UpdateLabelsPayload = NamedTuple(
      "addOrUpdateLabels" : Hash(String,String),
      "removeLabels" : Array(String)
    )

    alias UpdateNodegroupConfigRequest = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "labels" : UpdateLabelsPayload,
      "scalingConfig" : NodegroupScalingConfig,
      "clientRequestToken" : String
    )

    alias UpdateNodegroupConfigResponse = NamedTuple(
      "update" : Update
    )

    alias UpdateNodegroupVersionRequest = NamedTuple(
      "clusterName" : String,
      "nodegroupName" : String,
      "version" : String,
      "releaseVersion" : String,
      "launchTemplate" : LaunchTemplateSpecification,
      "force" : Bool,
      "clientRequestToken" : String
    )

    alias UpdateNodegroupVersionResponse = NamedTuple(
      "update" : Update
    )

    alias UpdateParam = NamedTuple(
      "type" : String,
      "value" : String
    )

    alias UpdateParamType = String

    alias UpdateParams = Array(UpdateParam)

    alias UpdateStatus = String

    alias UpdateType = String

    alias VpcConfigRequest = NamedTuple(
      "subnetIds" : Array(String),
      "securityGroupIds" : Array(String),
      "endpointPublicAccess" : Bool,
      "endpointPrivateAccess" : Bool,
      "publicAccessCidrs" : Array(String)
    )

    alias VpcConfigResponse = NamedTuple(
      "subnetIds" : Array(String),
      "securityGroupIds" : Array(String),
      "clusterSecurityGroupId" : String,
      "vpcId" : String,
      "endpointPublicAccess" : Bool,
      "endpointPrivateAccess" : Bool,
      "publicAccessCidrs" : Array(String)
    )

    alias labelKey = String

    alias labelValue = String

    alias labelsKeyList = Array(String)

    alias labelsMap = Hash(String,String)
  end
end
