#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secuseek_last_scan_id'
wp option delete 'SecuseekUserJobScheduleId'
wp option delete 'secuseek_scan_creation_timestamp'
wp option delete 'secuseek_delete_data_on_uninstall'
wp option delete 'secuseek_plugin_do_activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_secuseek_scan_error_%' OR option_name LIKE '_site_transient_secuseek_scan_error_%'"
wp transient delete 'secuseek_scan_started'
wp transient delete 'secuseek_scan_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_secuseek_scan_rate_limit_%' OR option_name LIKE '_site_transient_secuseek_scan_rate_limit_%'"

# Clear Cron Jobs
wp cron event delete 'secuseek_fetch_cron_hook'
wp cron event delete 'secuseek_daily_scan'
wp cron event delete 'secuseek_start_scan_after_key_save'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secuseek_scan_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secuseek_scan_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secuseek_scan_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secuseek_scan_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secuseek_api_key_last_rotation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secuseek_api_key_last_rotation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secuseek_api_key_last_rotation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secuseek_api_key_last_rotation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secuseek_api_key_last_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secuseek_api_key_last_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secuseek_api_key_last_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secuseek_api_key_last_used'"
