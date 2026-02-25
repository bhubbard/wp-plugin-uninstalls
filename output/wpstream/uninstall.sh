#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpstream_api_username_from_token'
wp option delete 'wpstream_user_streaming_global_channel_options'
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpstream_%'"
wp option delete 'wpstream_logs'
wp option delete 'wp_estate_token_expire'
wp option delete 'wp_estate_curent_token'
wp option delete 'wpstream_api_username'
wp option delete 'wpstream_api_password'
wp option delete 'wpstream_curl_failed'
wp option delete 'wpstream_global_sub'
wp option delete 'wpstream_notices'
wp option delete 'wp_stream_notices'
wp option delete 'wpstream_options'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wpstream_you_are_not_live'
wp option delete 'wpstream_api_key'
wp option delete 'wpstream_api_secret_key'
wp option delete 'wpstream_product_not_bought'
wp option delete 'wpstream_product_not_login'
wp option delete 'wpstream_player_logo_position'
wp option delete 'wpstream_vod_domain_lock'
wp option delete 'wpstream_vod_encrypt'
wp option delete 'wpstream_video_player_theme'
wp option delete 'wpstream_vod_start_muted'
wp option delete 'wpstream_vod_autoplay'
wp option delete 'wpstream_player_logo_opacity'
wp option delete 'wpstream_global_sub_id'
wp option delete 'wpstream_subscription_active'
wp option delete 'wpstream_product_not_subscribe'
wp option delete 'wpstream_player_logo'
wp option delete 'wpstream_user_streaming_channel_type'
wp option delete 'wpstream_stream_role'
wp option delete 'wpstream_user_streaming_default_price'
wp option delete 'wpstream_free_media_slug'
wp option delete 'wpstream_free_media_slug_vod'
wp option delete 'wpstream_updated_50'
wp option delete 'woocommerce_coming_soon'
wp option delete 'wpstream_product_thankyou'
wp option delete 'elementor_space_between_widgets'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpstream_token_api'
wp transient delete 'wpstream_token_request_30'
wp transient delete 'wpstream_request_pack_data_per_user_transient'
wp transient delete 'wpstream_live_stream_for_user_for_shortcode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_free_event_streamName_%' OR option_name LIKE '_site_transient_free_event_streamName_%'"
wp transient delete 'wpstream_user_pack_data'
wp transient delete 'update_themes'
wp transient delete 'wpstream_woo_movie_category_values'
wp transient delete 'wpstream_woo_actors_category_values'
wp transient delete 'wpstream_woo_product_cat'
wp transient delete 'wpstream_woo_movie_rating_category_values'
wp transient delete 'wpstream_woo_movie_category_values_label'
wp transient delete 'wpstream_woo_actors_category_values_label'
wp transient delete 'wpstream_woo_product_cat_label'
wp transient delete 'wpstream_woo_movie_rating_category_values_label'
wp transient delete 'wpstream_bb_get_live_event_for_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_paid_event_streamName_%' OR option_name LIKE '_site_transient_paid_event_streamName_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_api20_streamName' OR option_name LIKE '_site_transient_%_api20_streamName'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vod_decryption_key_index_%' OR option_name LIKE '_site_transient_vod_decryption_key_index_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_paid_vod_key_index_%' OR option_name LIKE '_site_transient_paid_vod_key_index_%'"

# Clear Cron Jobs
wp cron event delete 'wpstreamify_cleanup_event'
wp cron event delete 'wpstream_log_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscript_live_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscript_live_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscript_live_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscript_live_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_shows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_shows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_shows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_shows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_passed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_passed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_passed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_passed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qos_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qos_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qos_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qos_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'server_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'server_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'server_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'server_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obs_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obs_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obs_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obs_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obs_stream'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obs_stream'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obs_stream'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obs_stream'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webcaster_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webcaster_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webcaster_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webcaster_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_global_event_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_global_event_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_global_event_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_global_event_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'local_event_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'local_event_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'local_event_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'local_event_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'local_event_options_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'local_event_options_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'local_event_options_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'local_event_options_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_free_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_free_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_free_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_free_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_closed_captions_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_closed_captions_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_closed_captions_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_closed_captions_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_free_video_external'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_free_video_external'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_free_video_external'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_free_video_external'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_movie_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_movie_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_movie_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_movie_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpstream_parent_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpstream_parent_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpstream_parent_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpstream_parent_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_user_watch_later_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_user_watch_later_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_user_watch_later_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_user_watch_later_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_elementor_search_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_elementor_search_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_elementor_search_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_elementor_search_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_picture_small'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_picture_small'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_picture_small'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_picture_small'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_meda_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_meda_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_meda_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_meda_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_agent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_agent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_agent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_agent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_trailer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_trailer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_trailer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_trailer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_bundle_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_bundle_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_bundle_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_bundle_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_part_of_bundle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_part_of_bundle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_part_of_bundle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_part_of_bundle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_like_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_like_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_like_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_like_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_chat_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_chat_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_chat_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_chat_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_tagline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_tagline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_tagline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_tagline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_start_streaming_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_start_streaming_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_start_streaming_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_start_streaming_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_theme_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_theme_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_theme_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_theme_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'broadcast_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'broadcast_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'broadcast_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'broadcast_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whipUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whipUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whipUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whipUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stats_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stats_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stats_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stats_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hls_playback_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hls_playback_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hls_playback_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hls_playback_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stream_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stream_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stream_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stream_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hls_key_retrieval_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hls_key_retrieval_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hls_key_retrieval_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hls_key_retrieval_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlsDecryptionKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlsDecryptionKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlsDecryptionKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlsDecryptionKey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hlsDecryptionKeyIndex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hlsDecryptionKeyIndex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hlsDecryptionKeyIndex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hlsDecryptionKeyIndex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basicStreaming'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basicStreaming'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basicStreaming'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basicStreaming'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'budyboss_selected_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'budyboss_selected_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'budyboss_selected_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'budyboss_selected_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_youtube_rtmp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_youtube_rtmp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_youtube_rtmp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_youtube_rtmp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpstream_twich_rtmp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpstream_twich_rtmp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpstream_twich_rtmp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpstream_twich_rtmp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_event_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_event_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_event_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_event_uri'"
