<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharethis_inline_settings');
delete_site_option('sharethis_inline_settings');
delete_option('sharethis_sticky_settings');
delete_site_option('sharethis_sticky_settings');
delete_option('sharethis_inline');
delete_site_option('sharethis_inline');
delete_option('sharethis_sticky');
delete_site_option('sharethis_sticky');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
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
delete_option('sharethis_sticky_category_off');
delete_site_option('sharethis_sticky_category_off');
delete_option('sharethis_property_id');
delete_site_option('sharethis_property_id');
delete_option('sharethis_first_product');
delete_site_option('sharethis_first_product');
delete_option('sharethis_gdpr');
delete_site_option('sharethis_gdpr');
delete_option('sharethis_token');
delete_site_option('sharethis_token');
delete_option('sharethis_button_config');
delete_site_option('sharethis_button_config');
delete_option('sharethis_fract');
delete_site_option('sharethis_fract');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sticky_page_off' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sticky_category_off' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sharethis_sticky_page_on');
delete_site_option('sharethis_sticky_page_on');
delete_option('sharethis_sticky_page_off');
delete_site_option('sharethis_sticky_page_off');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sharethis_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('st-activation');
delete_site_transient('st-activation');
delete_transient('st-connection');
delete_site_transient('st-connection');

