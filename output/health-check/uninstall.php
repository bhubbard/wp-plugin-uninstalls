<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('health-check-beta-features');
delete_site_option('health-check-beta-features');
delete_option('health-check-disable-plugin-hash');
delete_site_option('health-check-disable-plugin-hash');
delete_option('health-check-default-theme');
delete_site_option('health-check-default-theme');
delete_option('health-check-allowed-plugins');
delete_site_option('health-check-allowed-plugins');
delete_option('health-check-current-theme');
delete_site_option('health-check-current-theme');
delete_option('health-check-dashboard-notices');
delete_site_option('health-check-dashboard-notices');
delete_option('health-check-backup-plugin-list');
delete_site_option('health-check-backup-plugin-list');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');
delete_transient('health-check-checksums');
delete_site_transient('health-check-checksums');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_php_check_%', '_site_transient_php_check_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('health-check-scheduled-site-status-check');

