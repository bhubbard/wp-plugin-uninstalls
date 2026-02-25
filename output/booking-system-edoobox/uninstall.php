<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maps_google_api_key');
delete_site_option('maps_google_api_key');
delete_option('edbs_next_options');
delete_site_option('edbs_next_options');
delete_option('edbs_next_options_templates');
delete_site_option('edbs_next_options_templates');
delete_option('edbs_next_options_currentTemplate');
delete_site_option('edbs_next_options_currentTemplate');
delete_option('edoobox_cache_time_in_s');
delete_site_option('edoobox_cache_time_in_s');
delete_option('edbs_edid');
delete_site_option('edbs_edid');
delete_option('edbs_token');
delete_site_option('edbs_token');
delete_option('edbs_token_expires_at');
delete_site_option('edbs_token_expires_at');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_edoobox_cache_%', '_site_transient_edoobox_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

