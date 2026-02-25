<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('learnworlds_sso_use_woocommerce_account_urls');
delete_site_option('learnworlds_sso_use_woocommerce_account_urls');
delete_option('learnworlds_sso_access_token');
delete_site_option('learnworlds_sso_access_token');
delete_option('learnworlds_sso_access_token_expires_on');
delete_site_option('learnworlds_sso_access_token_expires_on');
delete_option('learnworlds_sso_client_id');
delete_site_option('learnworlds_sso_client_id');
delete_option('learnworlds_sso_client_secret');
delete_site_option('learnworlds_sso_client_secret');
delete_option('learnworlds_sso_api_server_url');
delete_site_option('learnworlds_sso_api_server_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'learnworlds_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'learnworlds_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'learnworlds_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'learnworlds_user_id' ) );

