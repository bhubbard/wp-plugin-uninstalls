<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_post_meta_title');
delete_site_option('easy_post_meta_title');
delete_option('repeat_meta_post_type');
delete_site_option('repeat_meta_post_type');
delete_option('repeat_main_number');
delete_site_option('repeat_main_number');
delete_option('repeat_meta_number');
delete_site_option('repeat_meta_number');
delete_option('repeat_main_array_save');
delete_site_option('repeat_main_array_save');
delete_option('repeat_menu_name');
delete_site_option('repeat_menu_name');
delete_option('repeat_main_name');
delete_site_option('repeat_main_name');
delete_option('repeat_menu_des');
delete_site_option('repeat_menu_des');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reapeter_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reapeter_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reapeter_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reapeter_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reapeter_meta_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reapeter_meta_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reapeter_meta_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reapeter_meta_id' ) );

