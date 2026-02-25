<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awfah_rbac_initialized');
delete_site_option('awfah_rbac_initialized');
delete_option('wp_ai_client_provider_credentials');
delete_site_option('wp_ai_client_provider_credentials');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ai_agent_hub_oauth_state_%', '_site_transient_ai_agent_hub_oauth_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

