<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basis_llms_txt_file_generator_options');
delete_site_option('basis_llms_txt_file_generator_options');
delete_option('basis_llms_txt_file_generator_last_generated');
delete_site_option('basis_llms_txt_file_generator_last_generated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_basis_llms_txt_file_generator_count_%', '_site_transient_basis_llms_txt_file_generator_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_basis_llms_txt_file_generator_terms_%', '_site_transient_basis_llms_txt_file_generator_terms_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('basis_llms_txt_file_generator_update');
wp_clear_scheduled_hook('basis_llms_txt_file_generator_immediate_update');

