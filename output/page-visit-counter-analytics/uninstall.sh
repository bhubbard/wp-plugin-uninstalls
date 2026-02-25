#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PageVICO_post_types'
wp option delete 'PageVICO_block_posts'
wp option delete 'PageVICO_exclude_posts'
wp option delete 'PageVICO_geo_db_last_updated'
wp option delete 'pagevico_apvc_import_status'
wp option delete 'PageVICO_enable_tracking'
wp option delete 'PageVICO_short_number'
wp option delete 'PageVICO_exclude_roles'
wp option delete 'PageVICO_block_users'
wp option delete 'PageVICO_block_ips'
wp option delete 'PageVICO_analytics_retention'
wp option delete 'PageVICO_heatmap_retention'
wp option delete 'session_timeout_minutes'
wp option delete 'pagevico_views_retention'
wp option delete 'data_retention_months'
wp option delete 'PageVICO_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'pagevico_pro_tables_created'

# Delete Transients
wp transient delete 'pagevico_data_cleanup'
wp transient delete 'PageVICO_geo_db_check'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'pagevico_apvc_data_available'

# Clear Cron Jobs
wp cron event delete 'pagevico_import_apvc_cron'
wp cron event delete 'pagevico_daily_cleanup'
wp cron event delete 'pagevico_prune_old_data'
wp cron event delete 'pagevico_manage_partitions'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'pagevico_expire_sessions'
wp cron event delete 'pagevico_refresh_geo_db'

