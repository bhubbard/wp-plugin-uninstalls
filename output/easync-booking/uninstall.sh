#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
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
wp cron event delete 'bl_cron_7day_email'
wp cron event delete 'bl_cron_3day_email'
wp cron event delete 'bl_cron_1day_email'
wp cron event delete 'bl_cron_check_subscription_expiration'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easync_car'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easync_car'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easync_car'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easync_car'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easync_car_features_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easync_car_features_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easync_car_features_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easync_car_features_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_car_specialrequest_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_car_specialrequest_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_car_specialrequest_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_car_specialrequest_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_restau'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_restau'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_restau'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_restau'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easync_hotel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easync_hotel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easync_hotel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easync_hotel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_room_images_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_room_images_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_room_images_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_room_images_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_customdata_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_customdata_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_customdata_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_customdata_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_specialrequest_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_specialrequest_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_specialrequest_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_specialrequest_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_restau_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_restau_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_restau_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_restau_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_table_images_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_table_images_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_table_images_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_table_images_group'"
