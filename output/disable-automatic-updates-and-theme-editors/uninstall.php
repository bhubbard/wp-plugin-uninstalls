<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dawufeg_debug');
delete_site_option('dawufeg_debug');
delete_option('dawufeg_debug_log');
delete_site_option('dawufeg_debug_log');
delete_option('dawufeg_debug_display');
delete_site_option('dawufeg_debug_display');
delete_option('dawufeg_fs_method');
delete_site_option('dawufeg_fs_method');
delete_option('dawufeg_gutenburg');
delete_site_option('dawufeg_gutenburg');
delete_option('dawufeg_gutenburg_widget');
delete_site_option('dawufeg_gutenburg_widget');
delete_option('dawufeg_plugin_updates');
delete_site_option('dawufeg_plugin_updates');
delete_option('dawufeg_theme_updates');
delete_site_option('dawufeg_theme_updates');
delete_option('dawufeg_theme_editor');
delete_site_option('dawufeg_theme_editor');
delete_option('dawufeg_modification_updates');
delete_site_option('dawufeg_modification_updates');
delete_option('upload_filter_first_time');
delete_site_option('upload_filter_first_time');
delete_option('edit_filter_first_time');
delete_site_option('edit_filter_first_time');
delete_option('plugin_first_time');
delete_site_option('plugin_first_time');
delete_option('dawufeg_major_core_updates');
delete_site_option('dawufeg_major_core_updates');
delete_option('dawufeg_minor_core_updates');
delete_site_option('dawufeg_minor_core_updates');
delete_option('core_update_first_time');
delete_site_option('core_update_first_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dawufeg_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dawufeg_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dawufeg_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dawufeg_rate_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dawufeg_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dawufeg_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dawufeg_notices_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dawufeg_notices_time' ) );

