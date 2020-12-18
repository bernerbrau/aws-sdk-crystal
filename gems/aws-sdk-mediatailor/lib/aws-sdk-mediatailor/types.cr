# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaTailor
  module Types

    # @note When making an API call, you may pass AdMarkerPassthrough
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AdMarkerPassthrough AWS API Documentation
    #
    class AdMarkerPassthrough < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AvailSuppression
    #   data as a hash:
    #
    #       {
    #         mode: "OFF", # accepts OFF, BEHIND_LIVE_EDGE
    #         value: "__string",
    #       }
    #
    # @!attribute [rw] mode
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Sets the mode for avail suppression, also known as ad suppression.
    #   By default, ad suppression is off and all ad breaks are filled by
    #   MediaTailor with ads or slate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/AvailSuppression AWS API Documentation
    #
    class AvailSuppression < Struct.new(
      :mode,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is invalid.
    #
    # @!attribute [rw] message
    #   One of the parameters in the request is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for bumpers. Bumpers are short audio or video clips
    # that play at the start or before the end of an ad break.
    #
    # @note When making an API call, you may pass Bumper
    #   data as a hash:
    #
    #       {
    #         end_url: "__string",
    #         start_url: "__string",
    #       }
    #
    # @!attribute [rw] end_url
    #   @return [String]
    #
    # @!attribute [rw] start_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/Bumper AWS API Documentation
    #
    class Bumper < Struct.new(
      :end_url,
      :start_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for using a content delivery network (CDN), like
    # Amazon CloudFront, for content and ad segment management.
    #
    # @note When making an API call, you may pass CdnConfiguration
    #   data as a hash:
    #
    #       {
    #         ad_segment_url_prefix: "__string",
    #         content_segment_url_prefix: "__string",
    #       }
    #
    # @!attribute [rw] ad_segment_url_prefix
    #   A non-default content delivery network (CDN) to serve ad segments.
    #   By default, AWS Elemental MediaTailor uses Amazon CloudFront with
    #   default cache settings as its CDN for ad segments. To set up an
    #   alternate CDN, create a rule in your CDN for the following origin:
    #   ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's
    #   name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor
    #   serves a manifest, it reports your CDN as the source for ad
    #   segments.
    #   @return [String]
    #
    # @!attribute [rw] content_segment_url_prefix
    #   A content delivery network (CDN) to cache content segments, so that
    #   content requests don’t always have to go to the origin server.
    #   First, create a rule in your CDN for the content segment origin
    #   server. Then specify the rule's name in this
    #   ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a
    #   manifest, it reports your CDN as the source for content segments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CdnConfiguration AWS API Documentation
    #
    class CdnConfiguration < Struct.new(
      :ad_segment_url_prefix,
      :content_segment_url_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for DASH content.
    #
    # @!attribute [rw] manifest_endpoint_prefix
    #   The URL generated by MediaTailor to initiate a playback session. The
    #   session uses server-side reporting. This setting is ignored in PUT
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] mpd_location
    #   The setting that controls whether MediaTailor includes the Location
    #   tag in DASH manifests. MediaTailor populates the Location tag with
    #   the URL for manifest update requests, to be used by players that
    #   don't support sticky redirects. Disable this if you have CDN
    #   routing rules set up for accessing MediaTailor manifests, and you
    #   are either using client-side reporting or your players support
    #   sticky HTTP redirects. Valid values are DISABLED and EMT\_DEFAULT.
    #   The EMT\_DEFAULT setting enables the inclusion of the tag and is the
    #   default value.
    #   @return [String]
    #
    # @!attribute [rw] origin_manifest_type
    #   The setting that controls whether MediaTailor handles manifests from
    #   the origin server as multi-period manifests or single-period
    #   manifests. If your origin server produces single-period manifests,
    #   set this to SINGLE\_PERIOD. The default setting is MULTI\_PERIOD.
    #   For multi-period manifests, omit this setting or set it to
    #   MULTI\_PERIOD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DashConfiguration AWS API Documentation
    #
    class DashConfiguration < Struct.new(
      :manifest_endpoint_prefix,
      :mpd_location,
      :origin_manifest_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for DASH PUT operations.
    #
    # @note When making an API call, you may pass DashConfigurationForPut
    #   data as a hash:
    #
    #       {
    #         mpd_location: "__string",
    #         origin_manifest_type: "SINGLE_PERIOD", # accepts SINGLE_PERIOD, MULTI_PERIOD
    #       }
    #
    # @!attribute [rw] mpd_location
    #   The setting that controls whether MediaTailor includes the Location
    #   tag in DASH manifests. MediaTailor populates the Location tag with
    #   the URL for manifest update requests, to be used by players that
    #   don't support sticky redirects. Disable this if you have CDN
    #   routing rules set up for accessing MediaTailor manifests, and you
    #   are either using client-side reporting or your players support
    #   sticky HTTP redirects. Valid values are DISABLED and EMT\_DEFAULT.
    #   The EMT\_DEFAULT setting enables the inclusion of the tag and is the
    #   default value.
    #   @return [String]
    #
    # @!attribute [rw] origin_manifest_type
    #   The setting that controls whether MediaTailor handles manifests from
    #   the origin server as multi-period manifests or single-period
    #   manifests. If your origin server produces single-period manifests,
    #   set this to SINGLE\_PERIOD. The default setting is MULTI\_PERIOD.
    #   For multi-period manifests, omit this setting or set it to
    #   MULTI\_PERIOD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DashConfigurationForPut AWS API Documentation
    #
    class DashConfigurationForPut < Struct.new(
      :mpd_location,
      :origin_manifest_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfigurationRequest AWS API Documentation
    #
    class DeletePlaybackConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfigurationResponse AWS API Documentation
    #
    class DeletePlaybackConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetPlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationRequest AWS API Documentation
    #
    class GetPlaybackConfigurationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing, you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for Avail Suppression.
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break.
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   The maximum duration of underfilled ad time (in seconds) allowed in
    #   an ad break.
    #   @return [Integer]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_arn
    #   The Amazon Resource Name (ARN) for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   The URL that the player accesses to get a manifest from AWS
    #   Elemental MediaTailor. This session will use server-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   The URL that the player uses to initialize a session that uses
    #   client-side reporting.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID playback configurations. For VPAID, the slate
    #   is required because MediaTailor provides it in the slots designated
    #   for dynamic ad content. The slate must be a high-quality asset that
    #   contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the playback configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfigurationResponse AWS API Documentation
    #
    class GetPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :personalization_threshold_seconds,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :manifest_processing_rules,
      :name,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for HLS content.
    #
    # @!attribute [rw] manifest_endpoint_prefix
    #   The URL that is used to initiate a playback session for devices that
    #   support Apple HLS. The session uses server-side reporting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/HlsConfiguration AWS API Documentation
    #
    class HlsConfiguration < Struct.new(
      :manifest_endpoint_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPlaybackConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsRequest AWS API Documentation
    #
    class ListPlaybackConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Array of playback configurations. This might be all the available
    #   configurations or a subset, depending on the settings that you
    #   provide and the total number of configurations stored.
    #   @return [Array<Types::PlaybackConfiguration>]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by the GET list request when results
    #   exceed the maximum allowed. Use the token to fetch the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurationsResponse AWS API Documentation
    #
    class ListPlaybackConfigurationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for manifest processing rules. Manifest processing
    # rules enable customization of the personalized manifests created by
    # MediaTailor.
    #
    # @note When making an API call, you may pass ManifestProcessingRules
    #   data as a hash:
    #
    #       {
    #         ad_marker_passthrough: {
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] ad_marker_passthrough
    #   For HLS, when set to `true`, MediaTailor passes through
    #   EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers
    #   from the origin manifest to the MediaTailor personalized manifest.
    #
    #   No logic is applied to these ad markers. For example, if
    #   EXT-X-CUE-OUT has a value of `60`, but no ads are filled for that ad
    #   break, MediaTailor will not set the value to 0.
    #   @return [Types::AdMarkerPassthrough]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ManifestProcessingRules AWS API Documentation
    #
    class ManifestProcessingRules < Struct.new(
      :ad_marker_passthrough)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   @return [String]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] playback_configuration_arn
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PlaybackConfiguration AWS API Documentation
    #
    class PlaybackConfiguration < Struct.new(
      :ad_decision_server_url,
      :cdn_configuration,
      :personalization_threshold_seconds,
      :dash_configuration,
      :hls_configuration,
      :name,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for pre-roll ad insertion.
    #
    # @note When making an API call, you may pass LivePreRollConfiguration
    #   data as a hash:
    #
    #       {
    #         ad_decision_server_url: "__string",
    #         max_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS) for pre-roll ads. This
    #   includes the specification of static parameters and placeholders for
    #   dynamic parameters. AWS Elemental MediaTailor substitutes
    #   player-specific and session-specific parameters as needed when
    #   calling the ADS. Alternately, for testing, you can provide a static
    #   VAST URL. The maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] max_duration_seconds
    #   The maximum allowed duration for the pre-roll ad avail. AWS
    #   Elemental MediaTailor won't play pre-roll ads to exceed this
    #   duration, regardless of the total duration of ads that the ADS
    #   returns.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/LivePreRollConfiguration AWS API Documentation
    #
    class LivePreRollConfiguration < Struct.new(
      :ad_decision_server_url,
      :max_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPlaybackConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         ad_decision_server_url: "__string",
    #         avail_suppression: {
    #           mode: "OFF", # accepts OFF, BEHIND_LIVE_EDGE
    #           value: "__string",
    #         },
    #         bumper: {
    #           end_url: "__string",
    #           start_url: "__string",
    #         },
    #         cdn_configuration: {
    #           ad_segment_url_prefix: "__string",
    #           content_segment_url_prefix: "__string",
    #         },
    #         personalization_threshold_seconds: 1,
    #         dash_configuration: {
    #           mpd_location: "__string",
    #           origin_manifest_type: "SINGLE_PERIOD", # accepts SINGLE_PERIOD, MULTI_PERIOD
    #         },
    #         live_pre_roll_configuration: {
    #           ad_decision_server_url: "__string",
    #           max_duration_seconds: 1,
    #         },
    #         manifest_processing_rules: {
    #           ad_marker_passthrough: {
    #             enabled: false,
    #           },
    #         },
    #         name: "__string",
    #         slate_ad_url: "__string",
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         transcode_profile_name: "__string",
    #         video_content_source_url: "__string",
    #       }
    #
    # @!attribute [rw] ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific
    #   and session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   The configuration for Avail Suppression.
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break.
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] personalization_threshold_seconds
    #   The maximum duration of underfilled ad time (in seconds) allowed in
    #   an ad break.
    #   @return [Integer]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfigurationForPut]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] name
    #   The identifier for the playback configuration.
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill
    #   in time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots that are
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the playback configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   The name that is used to associate this playback configuration with
    #   a custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the
    #   asset ID. The maximum length is 512 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationRequest AWS API Documentation
    #
    class PutPlaybackConfigurationRequest < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :personalization_threshold_seconds,
      :dash_configuration,
      :live_pre_roll_configuration,
      :manifest_processing_rules,
      :name,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ad_decision_server_url
    #   @return [String]
    #
    # @!attribute [rw] avail_suppression
    #   @return [Types::AvailSuppression]
    #
    # @!attribute [rw] bumper
    #   The configuration for bumpers. Bumpers are short audio or video
    #   clips that play at the start or before the end of an ad break.
    #   @return [Types::Bumper]
    #
    # @!attribute [rw] cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #   @return [Types::CdnConfiguration]
    #
    # @!attribute [rw] dash_configuration
    #   The configuration for DASH content.
    #   @return [Types::DashConfiguration]
    #
    # @!attribute [rw] hls_configuration
    #   The configuration for HLS content.
    #   @return [Types::HlsConfiguration]
    #
    # @!attribute [rw] live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #   @return [Types::LivePreRollConfiguration]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #   @return [Types::ManifestProcessingRules]
    #
    # @!attribute [rw] playback_configuration_arn
    #   @return [String]
    #
    # @!attribute [rw] playback_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] session_initialization_endpoint_prefix
    #   @return [String]
    #
    # @!attribute [rw] slate_ad_url
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transcode_profile_name
    #   @return [String]
    #
    # @!attribute [rw] video_content_source_url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfigurationResponse AWS API Documentation
    #
    class PutPlaybackConfigurationResponse < Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :name,
      :manifest_processing_rules,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of tags assigned to a resource.
    #
    # @!attribute [rw] tags
    #   A comma-separated list of tag key:value pairs. For example: \\\{
    #   "Key1": "Value1", "Key2": "Value2" \\}
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TagsModel AWS API Documentation
    #
    class TagsModel < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    alias AdMarkerPassthrough = NamedTuple(
      "Enabled" : Bool
    )

    alias AvailSuppression = NamedTuple(
      "Mode" : String,
      "Value" : String
    )

    alias BadRequestException = NamedTuple(
      "Message" : String
    )

    alias Bumper = NamedTuple(
      "EndUrl" : String,
      "StartUrl" : String
    )

    alias CdnConfiguration = NamedTuple(
      "AdSegmentUrlPrefix" : String,
      "ContentSegmentUrlPrefix" : String
    )

    alias DashConfiguration = NamedTuple(
      "ManifestEndpointPrefix" : String,
      "MpdLocation" : String,
      "OriginManifestType" : String
    )

    alias DashConfigurationForPut = NamedTuple(
      "MpdLocation" : String,
      "OriginManifestType" : String
    )

    alias DeletePlaybackConfigurationRequest = NamedTuple(
      "Name" : String
    )

    alias DeletePlaybackConfigurationResponse = NamedTuple(
      
    )

    alias GetPlaybackConfigurationRequest = NamedTuple(
      "Name" : String
    )

    alias GetPlaybackConfigurationResponse = NamedTuple(
      "AdDecisionServerUrl" : String,
      "AvailSuppression" : AvailSuppression,
      "Bumper" : Bumper,
      "CdnConfiguration" : CdnConfiguration,
      "PersonalizationThresholdSeconds" : Int32,
      "DashConfiguration" : DashConfiguration,
      "HlsConfiguration" : HlsConfiguration,
      "LivePreRollConfiguration" : LivePreRollConfiguration,
      "ManifestProcessingRules" : ManifestProcessingRules,
      "Name" : String,
      "PlaybackConfigurationArn" : String,
      "PlaybackEndpointPrefix" : String,
      "SessionInitializationEndpointPrefix" : String,
      "SlateAdUrl" : String,
      "Tags" : Hash(String,String),
      "TranscodeProfileName" : String,
      "VideoContentSourceUrl" : String
    )

    alias HlsConfiguration = NamedTuple(
      "ManifestEndpointPrefix" : String
    )

    alias ListPlaybackConfigurationsRequest = NamedTuple(
      "MaxResults" : Int32,
      "NextToken" : String
    )

    alias ListPlaybackConfigurationsResponse = NamedTuple(
      "Items" : Array(PlaybackConfiguration),
      "NextToken" : String
    )

    alias ListTagsForResourceRequest = NamedTuple(
      "ResourceArn" : String
    )

    alias ListTagsForResourceResponse = NamedTuple(
      "Tags" : Hash(String,String)
    )

    alias OriginManifestType = String

    alias ManifestProcessingRules = NamedTuple(
      "AdMarkerPassthrough" : AdMarkerPassthrough
    )

    alias Mode = String

    alias PlaybackConfiguration = NamedTuple(
      "AdDecisionServerUrl" : String,
      "CdnConfiguration" : CdnConfiguration,
      "PersonalizationThresholdSeconds" : Int32,
      "DashConfiguration" : DashConfiguration,
      "HlsConfiguration" : HlsConfiguration,
      "Name" : String,
      "PlaybackConfigurationArn" : String,
      "PlaybackEndpointPrefix" : String,
      "SessionInitializationEndpointPrefix" : String,
      "SlateAdUrl" : String,
      "Tags" : Hash(String,String),
      "TranscodeProfileName" : String,
      "VideoContentSourceUrl" : String
    )

    alias LivePreRollConfiguration = NamedTuple(
      "AdDecisionServerUrl" : String,
      "MaxDurationSeconds" : Int32
    )

    alias PutPlaybackConfigurationRequest = NamedTuple(
      "AdDecisionServerUrl" : String,
      "AvailSuppression" : AvailSuppression,
      "Bumper" : Bumper,
      "CdnConfiguration" : CdnConfiguration,
      "PersonalizationThresholdSeconds" : Int32,
      "DashConfiguration" : DashConfigurationForPut,
      "LivePreRollConfiguration" : LivePreRollConfiguration,
      "ManifestProcessingRules" : ManifestProcessingRules,
      "Name" : String,
      "SlateAdUrl" : String,
      "Tags" : Hash(String,String),
      "TranscodeProfileName" : String,
      "VideoContentSourceUrl" : String
    )

    alias PutPlaybackConfigurationResponse = NamedTuple(
      "AdDecisionServerUrl" : String,
      "AvailSuppression" : AvailSuppression,
      "Bumper" : Bumper,
      "CdnConfiguration" : CdnConfiguration,
      "DashConfiguration" : DashConfiguration,
      "HlsConfiguration" : HlsConfiguration,
      "LivePreRollConfiguration" : LivePreRollConfiguration,
      "Name" : String,
      "ManifestProcessingRules" : ManifestProcessingRules,
      "PlaybackConfigurationArn" : String,
      "PlaybackEndpointPrefix" : String,
      "SessionInitializationEndpointPrefix" : String,
      "SlateAdUrl" : String,
      "Tags" : Hash(String,String),
      "TranscodeProfileName" : String,
      "VideoContentSourceUrl" : String
    )

    alias TagResourceRequest = NamedTuple(
      "ResourceArn" : String,
      "Tags" : Hash(String,String)
    )

    alias TagsModel = NamedTuple(
      "Tags" : Hash(String,String)
    )

    alias UntagResourceRequest = NamedTuple(
      "ResourceArn" : String,
      "TagKeys" : Array(String)
    )

    alias __boolean = Bool

    alias __double = Float64

    alias __integer = Int32

    alias __integerMin1 = Int32

    alias __integerMin1Max100 = Int32

    alias __listOfPlaybackConfigurations = Array(PlaybackConfiguration)

    alias __listOf__string = Array(String)

    alias __long = Int64

    alias __mapOf__string = Hash(String,String)

    alias __string = String

    alias __timestampIso8601 = String | UInt64 | Time

    alias __timestampUnix = String | UInt64 | Time
  end
end
