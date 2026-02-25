<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcs_base_domain');
delete_site_option('mcs_base_domain');
delete_option('mcs_default_city_id');
delete_site_option('mcs_default_city_id');
delete_option('mcs_seo_mode');
delete_site_option('mcs_seo_mode');
delete_option('mcs_country_choose_enabled');
delete_site_option('mcs_country_choose_enabled');
delete_option('mcs_province_choose_enabled');
delete_site_option('mcs_province_choose_enabled');
delete_option('mcs_ask_mode');
delete_site_option('mcs_ask_mode');
delete_option('mcs_redirect_next_visits');
delete_site_option('mcs_redirect_next_visits');
delete_option('mcs_log_enabled');
delete_site_option('mcs_log_enabled');
delete_option('mcs_debug_enabled');
delete_site_option('mcs_debug_enabled');
delete_option('mcs_default_location_id');
delete_site_option('mcs_default_location_id');
delete_option('mcs_default_location_type');
delete_site_option('mcs_default_location_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

