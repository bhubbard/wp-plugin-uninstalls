#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gs_posts_grid_shortcode_prefs'
wp option delete 'gs_posts_grid_version'
wp option delete 'gs_pg_activation_redirect'
wp option delete 'gs_pg_active_time'
wp option delete 'gs_pg_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gs_posts_grid_popup_visibility_order_%'"
wp option delete 'GS_Posts_Grid_plugin_permalinks_flushed'
wp option delete 'gs_posts_grid_shortcode_layout'
wp option delete 'gs_posts_grid_visibility_order'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_posts_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_posts_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_posts_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_posts_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_posts_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_posts_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_posts_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_posts_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_posts_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_posts_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_posts_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_posts_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_posts_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_posts_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_posts_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_posts_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
