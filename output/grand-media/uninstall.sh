#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmediaDbVersion'
wp option delete 'gmediaInstallDate'
wp option delete 'gmedia_ajax_long_operations'
wp option delete 'gmediaOptions'
wp option delete 'GmediaHashID_salt'
wp option delete 'gmediaInitCheck'
wp option delete 'gmediaActivated'
wp option delete 'gmediaVersion'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'gmediaUpgrade'
wp transient delete 'gmediaHeavyJob'
wp transient delete 'gmedia_new_gallery_id'
wp transient delete 'gmedia_action_msg'
wp transient delete 'gmedia_action_error'
wp transient delete 'gmedia_new_preset_id'
wp transient delete 'gmedia_module_deleted'
wp transient delete 'gmediaUpgradeSteps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gm_cache_%' OR option_name LIKE '_site_transient_gm_cache_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'gmedia_modules_update'
wp cron event delete 'gmedia_app_cronjob'
wp cron event delete 'gmedia_db_update'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gm_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gm_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gm_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gm_screen_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmedia_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmedia_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmedia_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmedia_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmedia_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmedia_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmedia_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmedia_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmedia_term_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmedia_term_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmedia_term_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmedia_term_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_gmedia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_gmedia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_gmedia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_gmedia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_gmedia_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_gmedia_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_gmedia_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_gmedia_per_page'"
