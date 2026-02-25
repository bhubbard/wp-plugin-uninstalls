<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glf_connection_type');
delete_site_option('glf_connection_type');
delete_option('glf_mor_installation_id');
delete_site_option('glf_mor_installation_id');
delete_option('glf_check_old_widgets_elementor');
delete_site_option('glf_check_old_widgets_elementor');
delete_option('glf_mor_restaurant_data');
delete_site_option('glf_mor_restaurant_data');
delete_option('glf_wordpress_options');
delete_site_option('glf_wordpress_options');
delete_option('glf_plugin_version');
delete_site_option('glf_plugin_version');
delete_option('glf_plugin_redirect');
delete_site_option('glf_plugin_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_glf_mor_restaurant_menu%', '_site_transient_glf_mor_restaurant_menu%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_glf_mor_restaurant_opening_hours_%', '_site_transient_glf_mor_restaurant_opening_hours_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_glf_mor_restaurant_promotions_%', '_site_transient_glf_mor_restaurant_promotions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('glf_cron_check_elementor');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

