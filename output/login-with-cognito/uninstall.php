<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('host_name');
delete_site_option('host_name');
delete_option('new_registration');
delete_site_option('new_registration');
delete_option('mo_oauth_admin_email');
delete_site_option('mo_oauth_admin_email');
delete_option('mo_oauth_admin_phone');
delete_site_option('mo_oauth_admin_phone');
delete_option('mo_oauth_admin_customer_key');
delete_site_option('mo_oauth_admin_customer_key');
delete_option('mo_oauth_apps_list');
delete_site_option('mo_oauth_apps_list');
delete_option('mo_oauth_client_custom_token_endpoint_no_csecret');
delete_site_option('mo_oauth_client_custom_token_endpoint_no_csecret');
delete_option('mo_oauth_client_disable_authorization_header');
delete_site_option('mo_oauth_client_disable_authorization_header');
delete_option('mo_oauth_attr_name_list');
delete_site_option('mo_oauth_attr_name_list');
delete_option('mo_oauth_client_notice_messages');
delete_site_option('mo_oauth_client_notice_messages');
delete_option('mo_attr_option');
delete_site_option('mo_attr_option');
delete_option('mo_oauth_client_show_mo_server_message');
delete_site_option('mo_oauth_client_show_mo_server_message');
delete_option('verify_customer');
delete_site_option('verify_customer');
delete_option('mo_oauth_admin_api_key');
delete_site_option('mo_oauth_admin_api_key');
delete_option('password');
delete_site_option('password');
delete_option('mo_oauth_admin_fname');
delete_site_option('mo_oauth_admin_fname');
delete_option('mo_oauth_admin_lname');
delete_site_option('mo_oauth_admin_lname');
delete_option('mo_oauth_admin_company');
delete_site_option('mo_oauth_admin_company');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_scope' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_oauth_icon_width');
delete_site_option('mo_oauth_icon_width');
delete_option('mo_oauth_icon_height');
delete_site_option('mo_oauth_icon_height');
delete_option('mo_oauth_icon_margin');
delete_site_option('mo_oauth_icon_margin');
delete_option('mo_oauth_icon_configure_css');
delete_site_option('mo_oauth_icon_configure_css');
delete_option('mo_oauth_redirect_url');
delete_site_option('mo_oauth_redirect_url');
delete_option('mo_oauth_authorizations');
delete_site_option('mo_oauth_authorizations');
delete_option('message');
delete_site_option('message');
delete_option('mo_oauth_new_customer');
delete_site_option('mo_oauth_new_customer');
delete_option('customer_token');
delete_site_option('customer_token');
delete_option('mo_oauth_registration_status');
delete_site_option('mo_oauth_registration_status');
delete_option('mo_oauth_message');
delete_site_option('mo_oauth_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

