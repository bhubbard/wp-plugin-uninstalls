<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('honeypot_guard_options');
delete_site_option('honeypot_guard_options');
delete_option('honeypot_guard_db_version');
delete_site_option('honeypot_guard_db_version');
delete_option('honeypot_guard_installed_at');
delete_site_option('honeypot_guard_installed_at');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_honeypot_guard_registration_success_%', '_site_transient_honeypot_guard_registration_success_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('honeypot_guard_cleanup_logs');

