<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esherpa_login_guard_max_attempts');
delete_site_option('esherpa_login_guard_max_attempts');
delete_option('esherpa_login_guard_base_minutes');
delete_site_option('esherpa_login_guard_base_minutes');
delete_option('esherpa_login_guard_protected_usernames');
delete_site_option('esherpa_login_guard_protected_usernames');
delete_option('esherpa_login_guard_disable_xmlrpc');
delete_site_option('esherpa_login_guard_disable_xmlrpc');
delete_option('esherpa_login_guard_xmlrpc_fake_users');
delete_site_option('esherpa_login_guard_xmlrpc_fake_users');
delete_option('esherpa_login_guard_disable_rest_users');
delete_site_option('esherpa_login_guard_disable_rest_users');
delete_option('esherpa_login_guard_block_author_archive');
delete_site_option('esherpa_login_guard_block_author_archive');
delete_option('esherpa_login_guard_cleanup_days');
delete_site_option('esherpa_login_guard_cleanup_days');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_esherpa_attempts_%', '_site_transient_esherpa_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_esherpa_lockout_%', '_site_transient_esherpa_lockout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('esherpa_login_guard_cleanup_event');

