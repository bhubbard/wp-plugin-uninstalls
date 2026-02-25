<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirect-url-to-post-onboarding');
delete_site_option('redirect-url-to-post-onboarding');
delete_option('redirect-url-to-post-admin-notice');
delete_site_option('redirect-url-to-post-admin-notice');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_chatty_mango_rutp_post_ids-%', '_site_transient_chatty_mango_rutp_post_ids-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('chatty_mango_rutp_transient_keys');
delete_site_transient('chatty_mango_rutp_transient_keys');

