<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gfat_export_form_filename');
delete_site_option('gfat_export_form_filename');
delete_option('gfat_export_exclude_bom');
delete_site_option('gfat_export_exclude_bom');
delete_option('gfat_spam_filtering');
delete_site_option('gfat_spam_filtering');
delete_option('gfat_last_entry_id');
delete_site_option('gfat_last_entry_id');
delete_option('gfat_recent_entry_count');
delete_site_option('gfat_recent_entry_count');
delete_option('gfadvtools_per_page');
delete_site_option('gfadvtools_per_page');
delete_option('gfat_spam_list_table_created');
delete_site_option('gfat_spam_list_table_created');
delete_option('gfat_spam_api_key');
delete_site_option('gfat_spam_api_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'form_id' ) );

