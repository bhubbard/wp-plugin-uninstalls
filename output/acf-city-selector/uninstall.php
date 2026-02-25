<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfcs_version');
delete_site_option('acfcs_version');
delete_option('acfcs_db_version');
delete_site_option('acfcs_db_version');
delete_option('acfcs_city_update_1_8_0');
delete_site_option('acfcs_city_update_1_8_0');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('charset');
delete_site_option('charset');
delete_option('registration');
delete_site_option('registration');
delete_option('b3_registration_type');
delete_site_option('b3_registration_type');
delete_option('acfcs_delete_cities_table');
delete_site_option('acfcs_delete_cities_table');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'acfcs_city_update_1_8_0_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('acfcs_city_update_1_8_0_be');
delete_site_option('acfcs_city_update_1_8_0_be');
delete_option('acfcs_city_update_1_8_0_nl');
delete_site_option('acfcs_city_update_1_8_0_nl');
delete_option('acf_version');
delete_site_option('acf_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acfcs_search_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acfcs_search_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acfcs_search_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acfcs_search_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acfcs_search_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acfcs_search_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acfcs_search_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acfcs_search_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acfcs_search_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acfcs_search_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acfcs_search_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acfcs_search_city' ) );

