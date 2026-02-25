<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('downloaded_font_files');
delete_site_option('downloaded_font_files');
delete_option('sfm_settings');
delete_site_option('sfm_settings');
delete_option('sfm_first_activation');
delete_site_option('sfm_first_activation');
delete_option('sfm_dismissed_notices');
delete_site_option('sfm_dismissed_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_fonts_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sfm_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sfm_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sfm_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sfm_dismissed_notices' ) );

