#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'archm_selected_database'
wp option delete 'archm_queue_batch_ids'
wp option delete 'archm_archive_orders_count'
wp option delete 'arcm_unarchive_cancelled'
wp option delete 'arcm_dublicate_order'
wp option delete 'archm_last_archive_order'
wp option delete 'archm_queue_ids'
wp option delete 'archm_background_process_running'
wp option delete 'archm_sqlite_db_file_hash'
wp option delete 'archive_master_google_access_token'
wp option delete 'archive_master_google_refresh_token'
wp option delete 'archm_analytics_sync_enabled'
wp option delete 'archived_analytics_version'
wp option delete 'archm_exclude_subscriptions'
wp option delete 'archm_exclude_memberships'
wp option delete 'archm_analytics_version'
wp option delete 'archm_db_switch'
wp option delete 'archive_master_google_user_email'
wp option delete 'archive_master_google_user_name'
wp option delete 'archm_bg_bulk_archive'
wp option delete '_archm_background_process_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete '_archm_archive_user'
wp option delete 'archm_background_process_stop'
wp option delete 'archm_enable_related_order_metadata_archiving'
wp option delete 'archm_related_order_metadata_selected'
wp option delete 'archm_corn_archive_running'
wp option delete 'archm_archive_cancelled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_batch_1'"
wp option delete 'arcm_export_cancelled'
wp option delete 'arcm_export_jobs'
wp option delete 'arcm_bg_export_running'
wp option delete 'archm_accoutn_page_archived_oder'
wp option delete 'archm_flush_rewrite_rules'
wp option delete 'arcm_unarchive_jobs'
wp option delete 'arcm_unarchive_processed_orders'
wp option delete 'arcm_bg_unarchive_running'
wp option delete 'osgsw_license_sync'
wp option delete 'arcm_order_sync_hooks_disabled'
wp option delete 'archm_cmysql_db_connection'
wp option delete 'archm_cmysql_username'
wp option delete 'archm_cmysql_password'
wp option delete 'archm_cmysql_dbname'
wp option delete 'archm_cmysql_endpoint'
wp option delete 'archm_cmysql_port'
wp option delete 'archm_rds_db_connection'
wp option delete 'archm_rds_dbname'
wp option delete 'archm_rds_endpoint'
wp option delete 'archm_rds_username'
wp option delete 'archm_rds_port'
wp option delete 'archm_rds_password'
wp option delete 'archm_archive_statuses'
wp option delete '_master_archive_installed'
wp option delete '_master_archive_version'
wp option delete 'archm_archive_range'
wp option delete 'archm_archive_range_datetime'
wp option delete 'archm_archive_completed'

# Delete Transients
wp transient delete 'archm_total_archived_orders_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'arcm_cleanup_old_exports'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'host_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'host_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'host_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'host_post_id'"
