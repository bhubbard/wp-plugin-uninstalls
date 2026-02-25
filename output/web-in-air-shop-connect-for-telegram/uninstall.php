<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wasct_settings');
delete_site_option('wasct_settings');
delete_option('wasct_cache_version');
delete_site_option('wasct_cache_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_user_context_%', '_site_transient_wasct_user_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_panel_msg_%', '_site_transient_wasct_panel_msg_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_user_lang_%', '_site_transient_wasct_user_lang_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_user_state_%', '_site_transient_wasct_user_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wasct_show_tags_button');
delete_site_transient('wasct_show_tags_button');
delete_transient('wasct_show_brands_button');
delete_site_transient('wasct_show_brands_button');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_variation_selection_%', '_site_transient_wasct_variation_selection_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wasct_search_%', '_site_transient_wasct_search_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

