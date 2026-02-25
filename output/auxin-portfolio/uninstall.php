<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_cpt_support');
delete_site_option('elementor_cpt_support');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_version', '_site_transient_%_version' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('auxpfo_plugin_requirements_check');
delete_site_transient('auxpfo_plugin_requirements_check');
delete_transient('auxels_plugin_requirements_check');
delete_site_transient('auxels_plugin_requirements_check');
delete_transient('auxshp_plugin_requirements_check');
delete_site_transient('auxshp_plugin_requirements_check');
delete_transient('auxnew_plugin_requirements_check');
delete_site_transient('auxnew_plugin_requirements_check');
delete_transient('auxpro_plugin_requirements_check');
delete_site_transient('auxpro_plugin_requirements_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'release-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'release-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'release-date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'release-date' ) );

