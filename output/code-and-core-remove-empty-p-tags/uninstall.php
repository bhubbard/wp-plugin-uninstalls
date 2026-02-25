<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('code_core_tracking_optin');
delete_site_option('code_core_tracking_optin');
delete_option('code_core_plugin_version');
delete_site_option('code_core_plugin_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_code_and_core_remove_empty_p_tags_notice_%', '_site_transient_code_and_core_remove_empty_p_tags_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

