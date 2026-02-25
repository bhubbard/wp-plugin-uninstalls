<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharethis_follow');
delete_site_option('sharethis_follow');
delete_option('sharethis_first_product');
delete_site_option('sharethis_first_product');
delete_option('sharethis_property_id');
delete_site_option('sharethis_property_id');
delete_option('sharethis_token');
delete_site_option('sharethis_token');
delete_option('sharethis_button_config');
delete_site_option('sharethis_button_config');
delete_option('sharethis_inline-follow_settings');
delete_site_option('sharethis_inline-follow_settings');
delete_option('sharethis_inline-follow');
delete_site_option('sharethis_inline-follow');
delete_option('sharethis_inline-follows');
delete_site_option('sharethis_inline-follows');
delete_option('sharethis_follow_settings');
delete_site_option('sharethis_follow_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_on' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_off' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('st-follow-activation');
delete_site_transient('st-follow-activation');
delete_transient('st-follow-connection');
delete_site_transient('st-follow-connection');

