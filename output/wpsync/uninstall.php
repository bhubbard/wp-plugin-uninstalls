<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsync_spreadsheet_key');
delete_site_option('wpsync_spreadsheet_key');
delete_option('wpsync_spreadsheet_sheet');
delete_site_option('wpsync_spreadsheet_sheet');
delete_option('wpsync_allow_delete_from_spreadsheet');
delete_site_option('wpsync_allow_delete_from_spreadsheet');
delete_option('wpsync_allow_update_from_spreadsheet');
delete_site_option('wpsync_allow_update_from_spreadsheet');
delete_option('wpsync_allow_update_fields');
delete_site_option('wpsync_allow_update_fields');
delete_option('wpsync_debug_mode');
delete_site_option('wpsync_debug_mode');
delete_option('wpsync_default_tags');
delete_site_option('wpsync_default_tags');
delete_option('wpsync_default_post_type');
delete_site_option('wpsync_default_post_type');
delete_option('wpsync_default_status');
delete_site_option('wpsync_default_status');
delete_option('wpsync_create_categories_if_not_exist');
delete_site_option('wpsync_create_categories_if_not_exist');
delete_option('wpsync_create_tags_if_not_exist');
delete_site_option('wpsync_create_tags_if_not_exist');
delete_option('wpsync_default_category');
delete_site_option('wpsync_default_category');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsync_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsync_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsync_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsync_external_id' ) );

