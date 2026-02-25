<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PageVICO_post_types');
delete_site_option('PageVICO_post_types');
delete_option('PageVICO_block_posts');
delete_site_option('PageVICO_block_posts');
delete_option('PageVICO_exclude_posts');
delete_site_option('PageVICO_exclude_posts');
delete_option('PageVICO_geo_db_last_updated');
delete_site_option('PageVICO_geo_db_last_updated');
delete_option('pagevico_apvc_import_status');
delete_site_option('pagevico_apvc_import_status');
delete_option('PageVICO_enable_tracking');
delete_site_option('PageVICO_enable_tracking');
delete_option('PageVICO_short_number');
delete_site_option('PageVICO_short_number');
delete_option('PageVICO_exclude_roles');
delete_site_option('PageVICO_exclude_roles');
delete_option('PageVICO_block_users');
delete_site_option('PageVICO_block_users');
delete_option('PageVICO_block_ips');
delete_site_option('PageVICO_block_ips');
delete_option('PageVICO_analytics_retention');
delete_site_option('PageVICO_analytics_retention');
delete_option('PageVICO_heatmap_retention');
delete_site_option('PageVICO_heatmap_retention');
delete_option('session_timeout_minutes');
delete_site_option('session_timeout_minutes');
delete_option('pagevico_views_retention');
delete_site_option('pagevico_views_retention');
delete_option('data_retention_months');
delete_site_option('data_retention_months');
delete_option('PageVICO_db_version');
delete_site_option('PageVICO_db_version');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('pagevico_pro_tables_created');
delete_site_option('pagevico_pro_tables_created');

// Delete Transients
delete_transient('pagevico_data_cleanup');
delete_site_transient('pagevico_data_cleanup');
delete_transient('PageVICO_geo_db_check');
delete_site_transient('PageVICO_geo_db_check');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('pagevico_apvc_data_available');
delete_site_transient('pagevico_apvc_data_available');

// Clear Cron Jobs
wp_clear_scheduled_hook('pagevico_import_apvc_cron');
wp_clear_scheduled_hook('pagevico_daily_cleanup');
wp_clear_scheduled_hook('pagevico_prune_old_data');
wp_clear_scheduled_hook('pagevico_manage_partitions');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('pagevico_expire_sessions');
wp_clear_scheduled_hook('pagevico_refresh_geo_db');

