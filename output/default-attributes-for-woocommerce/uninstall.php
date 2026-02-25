<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_daw_disable_options');
delete_site_option('wc_daw_disable_options');
delete_option('wc_daw_select_attribute');
delete_site_option('wc_daw_select_attribute');
delete_option('wc_daw_single_select');
delete_site_option('wc_daw_single_select');
delete_option('wc_daw_remove_text');
delete_site_option('wc_daw_remove_text');
delete_option('wc_daw_max_variations');
delete_site_option('wc_daw_max_variations');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_daw_attribute_default-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_daw_first_attribute');
delete_site_option('wc_daw_first_attribute');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_daw_default_attributes_%', '_site_transient_daw_default_attributes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

