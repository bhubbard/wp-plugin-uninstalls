<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_oauth_server_client');
delete_site_option('mo_oauth_server_client');
delete_option('mo_oauth_server_registration_status');
delete_site_option('mo_oauth_server_registration_status');
delete_option('mo_oauth_admin_email');
delete_site_option('mo_oauth_admin_email');
delete_option('mo_oauth_server_admin_api_key');
delete_site_option('mo_oauth_server_admin_api_key');
delete_option('mo_oauth_server_new_registration');
delete_site_option('mo_oauth_server_new_registration');
delete_option('password_mismatch');
delete_site_option('password_mismatch');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mo_oauth_server_jwt_signing_algo_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_oauth_server_master_switch');
delete_site_option('mo_oauth_server_master_switch');
delete_option('mo_oauth_server_enable_oidc');
delete_site_option('mo_oauth_server_enable_oidc');
delete_option('mo_oauth_server_enforce_state');
delete_site_option('mo_oauth_server_enforce_state');
delete_option('mo_oauth_server_custom_login_url');
delete_site_option('mo_oauth_server_custom_login_url');
delete_option('mo_oauth_server_is_debug_enabled');
delete_site_option('mo_oauth_server_is_debug_enabled');
delete_option('message');
delete_site_option('message');
delete_option('mo_oauth_server_admin_phone');
delete_site_option('mo_oauth_server_admin_phone');
delete_option('host_name');
delete_site_option('host_name');
delete_option('mo_oauth_server_hide_security_warning_admin');
delete_site_option('mo_oauth_server_hide_security_warning_admin');
delete_option('mo_oauth_server_is_client_secret_encrypted');
delete_site_option('mo_oauth_server_is_client_secret_encrypted');
delete_option('mo_oauth_admin_fname');
delete_site_option('mo_oauth_admin_fname');
delete_option('mo_oauth_admin_lname');
delete_site_option('mo_oauth_admin_lname');
delete_option('mo_oauth_admin_company');
delete_site_option('mo_oauth_admin_company');
delete_option('mo_oauth_server_admin_customer_key');
delete_site_option('mo_oauth_server_admin_customer_key');
delete_option('mo_oauth_server_customer_token');
delete_site_option('mo_oauth_server_customer_token');
delete_option('mo_oauth_server_verify_customer');
delete_site_option('mo_oauth_server_verify_customer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mo_oauth_server_enable_jwt_support_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mo_oauth_server_new_customer');
delete_site_option('mo_oauth_server_new_customer');
delete_option('mo_oauth_show_mo_server_message');
delete_site_option('mo_oauth_show_mo_server_message');
delete_option('mo_oauth_server_jwks_uri_hit_count');
delete_site_option('mo_oauth_server_jwks_uri_hit_count');
delete_option('mo_oauth_server_is_security_warning_mail_sent');
delete_site_option('mo_oauth_server_is_security_warning_mail_sent');
delete_option('mo_oauth_expiry_time');
delete_site_option('mo_oauth_expiry_time');
delete_option('mo_oauth_refresh_expiry_time');
delete_site_option('mo_oauth_refresh_expiry_time');
delete_option('mo_oauth_server_security_warning_remind_date');
delete_site_option('mo_oauth_server_security_warning_remind_date');
delete_option('mo_oauth_server_current_id_token');
delete_site_option('mo_oauth_server_current_id_token');
delete_option('mo_oauth_server_token_length');
delete_site_option('mo_oauth_server_token_length');

// Clear Cron Jobs
wp_clear_scheduled_hook('mo_oauth_server_debug_delete_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'mo_oauth_server_granted_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'mo_oauth_server_granted_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'mo_oauth_server_granted_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'mo_oauth_server_granted_%' ) );

