<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openai_api_key');
delete_site_option('openai_api_key');
delete_option('api_key_type');
delete_site_option('api_key_type');
delete_option('kissai_db_version');
delete_site_option('kissai_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kissai_vars_nonce_%', '_site_transient_kissai_vars_nonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('kissai_service_key');
delete_site_transient('kissai_service_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('kissai_cleanup_expired_guids');

