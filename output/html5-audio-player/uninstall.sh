#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'h5ap_settings'
wp option delete 'h5ap-notice-import'
wp option delete 'bpllch5ap'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'h5vp_playlist_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_h5ap_plyr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_h5ap_plyr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_h5ap_plyr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_h5ap_plyr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahp_quick-audio-file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahp_quick-audio-file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahp_quick-audio-file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahp_quick-audio-file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_h5applaylist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_h5applaylist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_h5applaylist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_h5applaylist'"
