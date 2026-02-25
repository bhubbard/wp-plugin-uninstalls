<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7zoho_connection_verified');
delete_site_option('cf7zoho_connection_verified');
delete_option('cf7zoho_service');
delete_site_option('cf7zoho_service');
delete_option('cf7zoho_access_token');
delete_site_option('cf7zoho_access_token');
delete_option('cf7zoho_refresh_token');
delete_site_option('cf7zoho_refresh_token');
delete_option('cf7zoho_client_id');
delete_site_option('cf7zoho_client_id');
delete_option('cf7zoho_client_secret');
delete_site_option('cf7zoho_client_secret');
delete_option('cf7zoho_token_expiration');
delete_site_option('cf7zoho_token_expiration');
delete_option('cf7zoho_api_domain');
delete_site_option('cf7zoho_api_domain');
delete_option('cf7zoho_connection_verified_at');
delete_site_option('cf7zoho_connection_verified_at');
delete_option('cf7zoho_account_name');
delete_site_option('cf7zoho_account_name');
delete_option('cf7zoho_data_center');
delete_site_option('cf7zoho_data_center');
delete_option('cf7zoho_redirect_url');
delete_site_option('cf7zoho_redirect_url');
delete_option('cf7zoho_org_id');
delete_site_option('cf7zoho_org_id');
delete_option('cf7zoho_selected_module');
delete_site_option('cf7zoho_selected_module');
delete_option('cf7zoho_error_email');
delete_site_option('cf7zoho_error_email');
delete_option('cf7zoho_client_redirect_url');
delete_site_option('cf7zoho_client_redirect_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cf7zoho_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cf7zoho_settings');
delete_site_option('cf7zoho_settings');

// Delete Transients
delete_transient('cf7zoho_modules_zoho-crm');
delete_site_transient('cf7zoho_modules_zoho-crm');
delete_transient('cf7zoho_modules_zoho-bigin');
delete_site_transient('cf7zoho_modules_zoho-bigin');

