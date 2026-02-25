<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('findkit_enable_jwt');
delete_site_option('findkit_enable_jwt');
delete_option('findkit_admin_search_show_settings_link');
delete_site_option('findkit_admin_search_show_settings_link');
delete_option('findkit_adminbar');
delete_site_option('findkit_adminbar');
delete_option('findkit_project_id');
delete_site_option('findkit_project_id');
delete_option('findkit_api_endpoint');
delete_site_option('findkit_api_endpoint');
delete_option('findkit_api_key');
delete_site_option('findkit_api_key');
delete_option('findkit_show_superwords_editor');
delete_site_option('findkit_show_superwords_editor');
delete_option('findkit_show_content_no_highlight_editor');
delete_site_option('findkit_show_content_no_highlight_editor');
delete_option('findkit_enable_live_update');
delete_site_option('findkit_enable_live_update');
delete_option('findkit_override_search_form');
delete_site_option('findkit_override_search_form');
delete_option('findkit_pubkey');
delete_site_option('findkit_pubkey');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_findkit_superwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_findkit_superwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_findkit_superwords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_findkit_superwords' ) );

