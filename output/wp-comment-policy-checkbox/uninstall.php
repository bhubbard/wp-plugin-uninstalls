<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcpc_policy_page_id');
delete_site_option('wpcpc_policy_page_id');
delete_option('wpcpc_policy_top_copy');
delete_site_option('wpcpc_policy_top_copy');
delete_option('wpcpc_external_policy_page');
delete_site_option('wpcpc_external_policy_page');
delete_option('wpcpc_policy_page_link_open_same_tab');
delete_site_option('wpcpc_policy_page_link_open_same_tab');
delete_option('wpcpc_policy_page_link_types');
delete_site_option('wpcpc_policy_page_link_types');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcpc_private_policy_accepted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcpc_private_policy_accepted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcpc_private_policy_accepted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcpc_private_policy_accepted' ) );

