#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'peiwm_enable_admin_download_buttons'
wp option delete 'peiwm_batch_settings'
wp option delete 'peiwm_scheduled_exports'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_peiwm_batch_export_%' OR option_name LIKE '_site_transient_peiwm_batch_export_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_peiwm_batch_export_media_%' OR option_name LIKE '_site_transient_peiwm_batch_export_media_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_peiwm_batch_import_%' OR option_name LIKE '_site_transient_peiwm_batch_import_%'"
wp transient delete 'peiwm_recommendations_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_peiwm_media_batch_%' OR option_name LIKE '_site_transient_peiwm_media_batch_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'peiwm_scheduled_export_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
