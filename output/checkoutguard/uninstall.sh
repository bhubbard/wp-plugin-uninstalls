#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cg_license_status'
wp option delete 'cg_plugin_options'
wp option delete 'cg_plugin_version'
wp option delete 'cg_recent_courier_checks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'cg_api_cache'
wp transient delete 'cg_last_synced'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cg_courier_cache_%' OR option_name LIKE '_site_transient_cg_courier_cache_%'"

# Clear Cron Jobs
wp cron event delete 'cg_daily_sync_hook'
wp cron event delete 'cg_cleanup_expired_blocks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_success_ratio_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_success_ratio_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_success_ratio_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_success_ratio_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_device_fingerprint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_device_fingerprint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_device_fingerprint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_device_fingerprint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_device_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_device_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_device_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_device_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
