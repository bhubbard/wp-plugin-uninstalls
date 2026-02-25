<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_dash_roles');
delete_site_option('wp_dash_roles');
delete_option('wp_dash_logo');
delete_site_option('wp_dash_logo');
delete_option('wp_dash_logo_height');
delete_site_option('wp_dash_logo_height');
delete_option('wp_dash_message');
delete_site_option('wp_dash_message');
delete_option('wp_dash_roles_normal');
delete_site_option('wp_dash_roles_normal');
delete_option('wp_dash_message_network');
delete_site_option('wp_dash_message_network');
delete_option('wp_remove_site_widgets');
delete_site_option('wp_remove_site_widgets');
delete_option('wp_remove_site_widgets_N');
delete_site_option('wp_remove_site_widgets_N');
delete_option('wp_remove_network_widgets');
delete_site_option('wp_remove_network_widgets');
delete_option('wp_remove_global_widgets');
delete_site_option('wp_remove_global_widgets');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cd_min_role_to_see' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cd_min_role_to_see' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cd_min_role_to_see' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cd_min_role_to_see' ) );

