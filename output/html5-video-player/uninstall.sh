#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'h5vp_option'
wp option delete 'nothdddding'
wp option delete 'csf_demo_mode'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_aws_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_aws_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_aws_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_aws_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_total_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_total_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_total_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_total_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_protected_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_protected_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_protected_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_protected_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_quality_playerio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_quality_playerio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_quality_playerio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_quality_playerio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_video_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_video_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_video_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_video_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_video_link_youtube_vimeo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_video_link_youtube_vimeo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_video_link_youtube_vimeo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_video_link_youtube_vimeo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_playlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_playlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_playlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_playlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
