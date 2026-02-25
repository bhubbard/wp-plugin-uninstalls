<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('loading_page_options');
delete_site_option('loading_page_options');
delete_option('elementor_maintenance_mode_mode');
delete_site_option('elementor_maintenance_mode_mode');
delete_option('elementor_maintenance_mode_exclude_mode');
delete_site_option('elementor_maintenance_mode_exclude_mode');
delete_option('elementor_maintenance_mode_exclude_roles');
delete_site_option('elementor_maintenance_mode_exclude_roles');
delete_option('loading_page_video_tutorial');
delete_site_option('loading_page_video_tutorial');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

