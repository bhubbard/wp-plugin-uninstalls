<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccews_cfe_settings');
delete_site_option('ccews_cfe_settings');
delete_option('ccews_cfe_billing_fields');
delete_site_option('ccews_cfe_billing_fields');
delete_option('ccews_cfe_shipping_fields');
delete_site_option('ccews_cfe_shipping_fields');
delete_option('ccews_cfe_additional_fields');
delete_site_option('ccews_cfe_additional_fields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_fields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

