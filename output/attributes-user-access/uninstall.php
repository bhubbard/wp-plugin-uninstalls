<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('attrua_pages_options');
delete_site_option('attrua_pages_options');
delete_option('attrua_redirect_options');
delete_site_option('attrua_redirect_options');
delete_option('attrua_version');
delete_site_option('attrua_version');
delete_option('attrua_schema_version');
delete_site_option('attrua_schema_version');
delete_option('attrua_options');
delete_site_option('attrua_options');
delete_option('attrua_pro_user_settings');
delete_site_option('attrua_pro_user_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_attrua_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_attrua_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_attrua_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_attrua_page_type' ) );

