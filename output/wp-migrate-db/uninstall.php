<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmdb_addon_requirement_check');
delete_site_option('wpmdb_addon_requirement_check');
delete_option('wpmdb_settings');
delete_site_option('wpmdb_settings');
delete_option('wpmdb_error_log');
delete_site_option('wpmdb_error_log');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpmdb_migration_state');
delete_site_option('wpmdb_migration_state');
delete_option('wpmdb_usage');
delete_site_option('wpmdb_usage');
delete_option('wpmdb_remote_response');
delete_site_option('wpmdb_remote_response');
delete_option('wpmdb_recent_migrations');
delete_site_option('wpmdb_recent_migrations');
delete_option('wpmdb_migration_options');
delete_site_option('wpmdb_migration_options');
delete_option('wpmdb_wpe_remote_cookie');
delete_site_option('wpmdb_wpe_remote_cookie');
delete_option('wpmdb_migration_id');
delete_site_option('wpmdb_migration_id');
delete_option('wpmdb_saved_profiles');
delete_site_option('wpmdb_saved_profiles');
delete_option('wpmdb_schema_version');
delete_site_option('wpmdb_schema_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpmdb_folder_transfers_media_files_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpmdb_folder_transfers_themes_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpmdb_folder_transfers_plugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpmdb_folder_transfers_muplugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpmdb_folder_transfers_others_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');

// Delete Transients
delete_transient('wpmdb_upgrade_data');
delete_site_transient('wpmdb_upgrade_data');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wpmdb_disabled_legacy_addons');
delete_site_transient('wpmdb_disabled_legacy_addons');
delete_transient('wpmdb_queue_status');
delete_site_transient('wpmdb_queue_status');
delete_transient('wpmdb_migration_id');
delete_site_transient('wpmdb_migration_id');
delete_transient('wp_migrate_db_deactivated_notice_id');
delete_site_transient('wp_migrate_db_deactivated_notice_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpmdb_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpmdb_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpmdb_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpmdb_dismiss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpmdb_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpmdb_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpmdb_reminder_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpmdb_reminder_%' ) );

