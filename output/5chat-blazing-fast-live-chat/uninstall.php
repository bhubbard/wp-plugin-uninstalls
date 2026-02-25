<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fivechat_website_token');
delete_site_option('fivechat_website_token');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fivechat_token_valid_%', '_site_transient_fivechat_token_valid_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

