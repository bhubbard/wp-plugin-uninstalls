#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intentdeep_vf_settings'
wp option delete 'intentdeep_vf_onboarding_status'
wp option delete 'intentdeep_vf_migration_completed'
wp option delete 'virtual-files-settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_intentdeep_vf_error_%' OR option_name LIKE '_site_transient_intentdeep_vf_error_%'"
wp transient delete 'intentdeep_vf_flush_rewrite_rules'
wp transient delete 'intentdeep_vf_limit_banner_dismissed'
wp transient delete 'intentdeep_vf_migration_notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_mime_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_mime_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_mime_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_mime_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_access_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_access_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_access_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_access_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_analytics_daily'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_analytics_daily'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_analytics_daily'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_analytics_daily'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_last_accessed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_last_accessed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_last_accessed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_last_accessed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vf_analytics_hourly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vf_analytics_hourly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vf_analytics_hourly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vf_analytics_hourly'"
