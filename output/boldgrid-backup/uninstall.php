<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boldgrid_backup_settings');
delete_site_option('boldgrid_backup_settings');
delete_option('boldgrid_backup_latest_backup');
delete_site_option('boldgrid_backup_latest_backup');
delete_option('boldgrid_backup_pending_rollback');
delete_site_option('boldgrid_backup_pending_rollback');
delete_option('boldgrid_backup_id');
delete_site_option('boldgrid_backup_id');
delete_option('boldgrid_backup_last_backup');
delete_site_option('boldgrid_backup_last_backup');
delete_option('boldgrid_settings');
delete_site_option('boldgrid_settings');
delete_option('boldgrid_reseller');
delete_site_option('boldgrid_reseller');
delete_option('boldgrid_api_key');
delete_site_option('boldgrid_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'auto_update_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('boldgrid_backup_tokens');
delete_site_option('boldgrid_backup_tokens');
delete_option('boldgrid_site_hash');
delete_site_option('boldgrid_site_hash');
delete_option('bg_connect_configs');
delete_site_option('bg_connect_configs');
delete_option('bglib_configs');
delete_site_option('bglib_configs');
delete_option('boldgrid_connect_hide_menu');
delete_site_option('boldgrid_connect_hide_menu');
delete_option('boldgrid_plugin_page_notices');
delete_site_option('boldgrid_plugin_page_notices');
delete_option('_transient_timeout_boldgrid_plugin_information');
delete_site_option('_transient_timeout_boldgrid_plugin_information');
delete_option('bglib_activity');
delete_site_option('bglib_activity');
delete_option('bglib_rating_prompt');
delete_site_option('bglib_rating_prompt');

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');
delete_transient('boldgrid_backup_wp_size');
delete_site_transient('boldgrid_backup_wp_size');
delete_transient('boldgrid_backup_db_size');
delete_site_transient('boldgrid_backup_db_size');
delete_transient('boldgrid_available');
delete_site_transient('boldgrid_available');
delete_transient('bg_license_data');
delete_site_transient('bg_license_data');
delete_transient('boldgrid_api_data');
delete_site_transient('boldgrid_api_data');
delete_transient('boldgrid_plugins_filtered');
delete_site_transient('boldgrid_plugins_filtered');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('boldgrid_plugin_information');
delete_site_transient('boldgrid_plugin_information');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('boldgrid_theme_information');
delete_site_transient('boldgrid_theme_information');
delete_transient('random_seed');
delete_site_transient('random_seed');
delete_transient('boldgrid_theme_data');
delete_site_transient('boldgrid_theme_data');
delete_transient('boldgrid_plugins');
delete_site_transient('boldgrid_plugins');
delete_transient('boldgrid_wporg_plugins');
delete_site_transient('boldgrid_wporg_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'meta-box-order_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'meta-box-order_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'meta-box-order_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'meta-box-order_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bglibDashboardOrder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bglibDashboardOrder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bglibDashboardOrder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bglibDashboardOrder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'boldgrid_dismissed_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'boldgrid_dismissed_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'boldgrid_dismissed_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'boldgrid_dismissed_admin_notices' ) );

