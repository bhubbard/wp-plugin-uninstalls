#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_wordpress_flowplayer_deferred_notices'
wp option delete 'fv_wordpress_flowplayer_persistent_notices'
wp option delete 'fvwpflowplayer'
wp option delete 'fv_flowplayer_extension_install'
wp option delete 'fvwpflowplayer_core_ver'
wp option delete 'fv_wordpress_flowplayer_expired_license_update_notice'
wp option delete 'fvwpflowplayer_conversion'
wp option delete 'fv-player-pro-release'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extension_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-prev-ver'"
wp option delete 'fv_flowplayer_checker_queue'
wp option delete 'fv_player_email_lists'
wp option delete 'fv_player_mailchimp_lists'
wp option delete 'fv_player_mailchimp_time'
wp option delete 'rewrite_rules'
wp option delete 'fv_player_popups'
wp option delete '_transient_timeout_fv_flowplayer_license'
wp option delete '_transient_timeout_fv-player-pro_license'
wp option delete '_transient_timeout_fv-player-vast_license'
wp option delete '_transient_timeout_fv-player-pay-per-view_license'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"
wp option delete 'fv_player_pro_youtube_error'
wp option delete 'fv_preview_hls'
wp option delete 'fv_flowplayer_ppv'
wp option delete 'fv_flowplayer_vast'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fv_flowplayer_license'
wp transient delete 'plugin_slugs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license' OR option_name LIKE '_site_transient_%_license'"
wp transient delete 'fv_player_s3_browser_cf'
wp transient delete 'available_translations'
wp transient delete 'fv-player-pro_license'
wp transient delete 'fv-player-vast_license'
wp transient delete 'fv-player-pay-per-view_license'

# Clear Cron Jobs
wp cron event delete 'fv_flowplayer_checker_event'
wp cron event delete 'fv_player_stats'
wp cron event delete 'fv_player_pro_update_cloudflare_ips'
wp cron event delete 'fv_player_pro_clear_cache'
wp cron event delete 'fv_player_pro_update_vimeo_cache'
wp cron event delete 'fv_player_pro_update_youtube_cache'
wp cron event delete 'fv_player_pro_update_transcript_cache'
wp cron event delete 'fv_player_pro_stream_loader_clear_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_player_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_player_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_player_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_player_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_player_featured_image_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_player_featured_image_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_player_featured_image_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_player_featured_image_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_player_featured_image_splash_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_player_featured_image_splash_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_player_featured_image_splash_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_player_featured_image_splash_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_player_featured_image_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_player_featured_image_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_player_featured_image_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_player_featured_image_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_player_splash_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_player_splash_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_player_splash_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_player_splash_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_player_mobile_native_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_player_mobile_native_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_player_mobile_native_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_player_mobile_native_fullscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_player_mobile_force_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_player_mobile_force_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_player_mobile_force_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_player_mobile_force_fullscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwplayermodule_playlist_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwplayermodule_playlist_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwplayermodule_playlist_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwplayermodule_playlist_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwplayermodule_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwplayermodule_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwplayermodule_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwplayermodule_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_flowplayer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_flowplayer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_flowplayer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_flowplayer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_use_fvplayer_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_use_fvplayer_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_use_fvplayer_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_use_fvplayer_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_fv_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_fv_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_fv_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_fv_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_position_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_top_position_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_saw_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fv_wp_flowplayer_player_playlist_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fv_player_original_splash_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fv_player_original_splash_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fv_player_original_splash_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fv_player_original_splash_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
