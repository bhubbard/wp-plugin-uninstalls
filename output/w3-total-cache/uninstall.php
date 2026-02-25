<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w3tc_browsercache_flush_timestamp');
delete_site_option('w3tc_browsercache_flush_timestamp');
delete_option('w3tc_state');
delete_site_option('w3tc_state');
delete_option('w3tc_alwayscached_worker_timestamp');
delete_site_option('w3tc_alwayscached_worker_timestamp');
delete_option('w3tc_alwayscached_wp_cron_time');
delete_site_option('w3tc_alwayscached_wp_cron_time');
delete_option('w3tc_alwayscached_wp_cron_interval');
delete_site_option('w3tc_alwayscached_wp_cron_interval');
delete_option('w3tc_nr_frontend_response_time');
delete_site_option('w3tc_nr_frontend_response_time');
delete_option('w3tc_nr_browser_applications');
delete_site_option('w3tc_nr_browser_applications');
delete_option('w3tc_nr_account_id');
delete_site_option('w3tc_nr_account_id');
delete_option('w3tc_nr_application_id');
delete_site_option('w3tc_nr_application_id');
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');
delete_option('w3tc_extensions_hooks');
delete_site_option('w3tc_extensions_hooks');
delete_option('w3tc_message');
delete_site_option('w3tc_message');
delete_option('w3tc_post_update_generic_tasks_ran_versions');
delete_site_option('w3tc_post_update_generic_tasks_ran_versions');
delete_option('w3tc_cached_notices');
delete_site_option('w3tc_cached_notices');
delete_option('w3tc_setupguide_completed');
delete_site_option('w3tc_setupguide_completed');
delete_option('w3tc_install_date');
delete_site_option('w3tc_install_date');
delete_option('w3tc_post_update_admin_tasks_ran_versions');
delete_site_option('w3tc_post_update_admin_tasks_ran_versions');
delete_option('w3tc_post_update_tasks_ran_versions');
delete_site_option('w3tc_post_update_tasks_ran_versions');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('w3tc_remove_data');
delete_site_option('w3tc_remove_data');
delete_option('license_update_messages');
delete_site_option('license_update_messages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'w3tc_minify_filter_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'w3tc_minify_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('w3tcps_refresh_fail');
delete_site_option('w3tcps_refresh_fail');
delete_option('w3tcps_refresh_fail_message');
delete_site_option('w3tcps_refresh_fail_message');
delete_option('w3tcps_authorize_success');
delete_site_option('w3tcps_authorize_success');
delete_option('w3tcps_authorize_fail');
delete_site_option('w3tcps_authorize_fail');
delete_option('w3tcps_authorize_fail_message');
delete_site_option('w3tcps_authorize_fail_message');
delete_option('w3tcps_revoke_fail');
delete_site_option('w3tcps_revoke_fail');
delete_option('w3tcps_revoke_fail_message');
delete_site_option('w3tcps_revoke_fail_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'w3tc_pagespeed_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('w3tc_pgcache_prime_offset');
delete_site_option('w3tc_pgcache_prime_offset');
delete_option('w3tc_generic_widgetservices');
delete_site_option('w3tc_generic_widgetservices');
delete_option('w3tc_stats_history_access_log');
delete_site_option('w3tc_stats_history_access_log');
delete_option('w3tc_stats_history');
delete_site_option('w3tc_stats_history');
delete_option('w3tc_stats_hotspot_start');
delete_site_option('w3tc_stats_hotspot_start');
delete_option('w3tc_dashboard_widget_options');
delete_site_option('w3tc_dashboard_widget_options');

// Delete Transients
delete_transient('w3tc_cdn_google_drive_folder_ids');
delete_site_transient('w3tc_cdn_google_drive_folder_ids');
delete_transient('w3tc_cdn_error');
delete_site_transient('w3tc_cdn_error');
delete_transient('w3tc_remove_add_in_dbcache');
delete_site_transient('w3tc_remove_add_in_dbcache');
delete_transient('w3tc_cloudflare_stats');
delete_site_transient('w3tc_cloudflare_stats');
delete_transient('w3tc_imageservice_limited');
delete_site_transient('w3tc_imageservice_limited');
delete_transient('w3tc_imageservice_usage');
delete_site_transient('w3tc_imageservice_usage');
delete_transient('w3tc_activation_imageservice');
delete_site_transient('w3tc_activation_imageservice');
delete_transient('w3tc_nr_widgetdata_basic');
delete_site_transient('w3tc_nr_widgetdata_basic');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w3tc_activation_%', '_site_transient_w3tc_activation_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w3tc_remove_add_in_%', '_site_transient_w3tc_remove_add_in_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('w3tc_remove_add_in_pgcache');
delete_site_transient('w3tc_remove_add_in_pgcache');
delete_transient('w3tc_license_status');
delete_site_transient('w3tc_license_status');
delete_transient('w3tc.verify_plugins');
delete_site_transient('w3tc.verify_plugins');
delete_transient('w3tc_ustats_minify_size');
delete_site_transient('w3tc_ustats_minify_size');
delete_transient('w3tc_remove_add_in_objectcache');
delete_site_transient('w3tc_remove_add_in_objectcache');
delete_transient('w3tc_ustats_pagecache_size');
delete_site_transient('w3tc_ustats_pagecache_size');
delete_transient('w3tc_config_changes');
delete_site_transient('w3tc_config_changes');

// Clear Cron Jobs
wp_clear_scheduled_hook('w3_cdn_cron_queue_process');
wp_clear_scheduled_hook('w3_cdn_cron_upload');
wp_clear_scheduled_hook('w3_dbcache_cleanup');
wp_clear_scheduled_hook('w3tc_dbcache_purge_wpcron');
wp_clear_scheduled_hook('w3tc_alwayscached_wp_cron');
wp_clear_scheduled_hook('w3_fragmentcache_cleanup');
wp_clear_scheduled_hook('w3tc_imageservice_cron');
wp_clear_scheduled_hook('w3tc_purgeall_wpcron');
wp_clear_scheduled_hook('w3tc_purge_all_wpcron');
wp_clear_scheduled_hook('w3_minify_cleanup');
wp_clear_scheduled_hook('w3tc_minifycache_purge_wpcron');
wp_clear_scheduled_hook('w3_objectcache_cleanup');
wp_clear_scheduled_hook('w3tc_objectcache_purge_wpcron');
wp_clear_scheduled_hook('w3_pgcache_cleanup');
wp_clear_scheduled_hook('w3_pgcache_prime');
wp_clear_scheduled_hook('w3tc_pgcache_purge_wpcron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'w3tc_imageservice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'w3tc_imageservice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'w3tc_imageservice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'w3tc_imageservice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'w3tc_imageservice_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'w3tc_imageservice_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'w3tc_imageservice_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'w3tc_imageservice_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'w3tc_features_seen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'w3tc_features_seen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'w3tc_features_seen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'w3tc_features_seen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

