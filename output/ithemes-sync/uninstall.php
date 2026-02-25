<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ithemes-sync-authenticated');
delete_site_option('ithemes-sync-authenticated');
delete_option('ithemes_sync_hide_authenticate_notice');
delete_site_option('ithemes_sync_hide_authenticate_notice');
delete_option('ithemes-sync-admin_menu');
delete_site_option('ithemes-sync-admin_menu');
delete_option('ithemes-sync-dashboard-metaboxes');
delete_site_option('ithemes-sync-dashboard-metaboxes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ithemes-sync-nonce-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pluginbuddy_plugins');
delete_site_option('pluginbuddy_plugins');
delete_option('wpcomplete_license_key');
delete_site_option('wpcomplete_license_key');
delete_option('pmpro_um_license_key');
delete_site_option('pmpro_um_license_key');
delete_option('rcpcr_license_key');
delete_site_option('rcpcr_license_key');
delete_option('rcprm');
delete_site_option('rcprm');
delete_option('rcpum_license_key');
delete_site_option('rcpum_license_key');
delete_option('rcpvl');
delete_site_option('rcpvl');
delete_option('rcpbp_license_key');
delete_site_option('rcpbp_license_key');
delete_option('view_limit');
delete_site_option('view_limit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sync_login_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ithemes-sync-googst');
delete_site_option('ithemes-sync-googst');
delete_option('sync_wp_deleted_plugins');
delete_site_option('sync_wp_deleted_plugins');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('ithemes_sync_urgent_notice_cache');
delete_site_option('ithemes_sync_urgent_notice_cache');
delete_option('ithemes-sync-cache');
delete_site_option('ithemes-sync-cache');
delete_option('ithemes_sync_optimization');
delete_site_option('ithemes_sync_optimization');
delete_option('wpmu_upgrade_site');
delete_site_option('wpmu_upgrade_site');

// Delete Transients
delete_transient('ithemes-sync-activated');
delete_site_transient('ithemes-sync-activated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_solid_central_ping_%', '_site_transient_solid_central_ping_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('ithemes_sync_daily_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'it-sync-refresh-cd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'it-sync-refresh-cd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'it-sync-refresh-cd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'it-sync-refresh-cd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard-no-css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard-no-css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard-no-css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ithemes-sync-client-dashboard-no-css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ithemes-sync-suppress-admin-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ithemes-sync-suppress-admin-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ithemes-sync-suppress-admin-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ithemes-sync-suppress-admin-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ithemes-sync-admin_menu-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ithemes-sync-admin_menu-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ithemes-sync-admin_menu-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ithemes-sync-admin_menu-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ithemes-sync-admin-bar-item-whitelist-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ithemes-sync-admin-bar-item-whitelist-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ithemes-sync-admin-bar-item-whitelist-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ithemes-sync-admin-bar-item-whitelist-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ithemes-sync-dashboard-widget-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ithemes-sync-dashboard-widget-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ithemes-sync-dashboard-widget-whitelist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ithemes-sync-dashboard-widget-whitelist' ) );

