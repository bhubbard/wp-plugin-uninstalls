#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'laa_map_style'
wp option delete 'laa_marker_icon'
wp option delete 'laa_getting_started_notice_dismissed'
wp option delete 'laa_layout_style'
wp option delete 'laa_start_lat'
wp option delete 'laa_start_lng'
wp option delete 'laa_start_zoom'
wp option delete 'laa_disable_areas'
wp option delete 'laa_hide_address'
wp option delete 'laa_disable_gmaps_link'
wp option delete 'laa_disable_cluster'
wp option delete 'laa_enable_frontend_location_adding'
wp option delete 'laa_thankyou_headline'
wp option delete 'laa_thankyou_text'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_laa_location_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_laa_location_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_laa_location_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_laa_location_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_laa_location_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_laa_location_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_laa_location_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_laa_location_image'"
