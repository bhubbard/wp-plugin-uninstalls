#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kgvid_video_embed_network_options'
wp option delete 'kgvid_video_embed_options'
wp option delete 'kgvid_video_embed_cms_switch'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_options'
wp option delete 'jetpack-twitter-cards-site-tag'
wp option delete 'kgvid_video_embed_queue'
wp option delete 'cron'
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kgvid_%' OR option_name LIKE '_site_transient_kgvid_%'"
wp transient delete 'kgvid_new_attachment_transient'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'kgvid_cleanup_queue'
wp cron event delete 'kgvid_cron_new_attachment'
wp cron event delete 'kgvid_cron_check_post_parent'
wp cron event delete 'kgvid_cleanup_generated_logfiles'
wp cron event delete 'kgvid_cleanup_generated_thumbnails'
wp cron event delete 'kgvid_cron_queue_check'
wp cron event delete 'kgvid_cron_replace_video_check'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-pickedformat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-pickedformat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-pickedformat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-pickedformat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-poster-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-poster-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-poster-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-poster-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-video-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-video-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-video-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-video-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgvid-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgvid-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgvid-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgvid-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_kgflashmediaplayer-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_kgflashmediaplayer-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_kgflashmediaplayer-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kgflashmediaplayer-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgflashmediaplayer-externalurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgflashmediaplayer-externalurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgflashmediaplayer-externalurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgflashmediaplayer-externalurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-mime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-mime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-mime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-mime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kgvid_first_embedded_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kgvid_first_embedded_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kgvid_first_embedded_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kgvid_first_embedded_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
