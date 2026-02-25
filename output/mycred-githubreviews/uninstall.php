<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('github_app_client_id');
delete_site_option('github_app_client_id');
delete_option('github_app_client_secret');
delete_site_option('github_app_client_secret');
delete_option('github_connect_redirect_url');
delete_site_option('github_connect_redirect_url');
delete_option('github_hook_url');
delete_site_option('github_hook_url');
delete_option('github_account_info');
delete_site_option('github_account_info');
delete_option('github_account_selected_repositories');
delete_site_option('github_account_selected_repositories');
delete_option('github_repositories');
delete_site_option('github_repositories');
delete_option('github_repositories_hooks');
delete_site_option('github_repositories_hooks');
delete_option('myCred_github_notices');
delete_site_option('myCred_github_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'github_user_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'github_user_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'github_user_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'github_user_name' ) );

