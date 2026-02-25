<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('PMP_lic_email');
delete_site_option('PMP_lic_email');
delete_option('_site_transient_update_themes');
delete_site_option('_site_transient_update_themes');
delete_option('wppb_demo_input_examples');
delete_site_option('wppb_demo_input_examples');
delete_option('pet-match-pro-color-options');
delete_site_option('pet-match-pro-color-options');
delete_option('pet-match-pro-general-options');
delete_site_option('pet-match-pro-general-options');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');

