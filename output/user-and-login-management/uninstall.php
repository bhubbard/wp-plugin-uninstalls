<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moul_mg_default_redirect_after_login_url');
delete_site_option('moul_mg_default_redirect_after_login_url');
delete_option('moul_mg_default_redirect_after_logout_url');
delete_site_option('moul_mg_default_redirect_after_logout_url');
delete_option('moul_mg_protect_content_by_login_enabled');
delete_site_option('moul_mg_protect_content_by_login_enabled');
delete_option('moul_mg_timeout_value');
delete_site_option('moul_mg_timeout_value');
delete_option('moul_mg_default_customer_key');
delete_site_option('moul_mg_default_customer_key');
delete_option('moul_mg_default_api_key');
delete_site_option('moul_mg_default_api_key');
delete_option('moul_mg_admin_phone');
delete_site_option('moul_mg_admin_phone');
delete_option('moul_mg_local_message');
delete_site_option('moul_mg_local_message');
delete_option('moul_mg_public_pages_enable');
delete_site_option('moul_mg_public_pages_enable');
delete_option('moul_mg_public_pages_list');
delete_site_option('moul_mg_public_pages_list');
delete_option('moul_mg_password');
delete_site_option('moul_mg_password');
delete_option('moul_mg_admin_customer_key');
delete_site_option('moul_mg_admin_customer_key');
delete_option('moul_mg_admin_notification_emails');
delete_site_option('moul_mg_admin_notification_emails');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

