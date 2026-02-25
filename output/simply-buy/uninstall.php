<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbuy_settings_pages');
delete_site_option('sbuy_settings_pages');
delete_option('sbuy_branding_toggle_blocked_until');
delete_site_option('sbuy_branding_toggle_blocked_until');
delete_option('sbuy_backlink_text');
delete_site_option('sbuy_backlink_text');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('sbuy_settings_time');
delete_site_option('sbuy_settings_time');
delete_option('sbuy_settings_finance');
delete_site_option('sbuy_settings_finance');

// Clear Cron Jobs
wp_clear_scheduled_hook('sbuy_clear_old_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_simplybuy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_simplybuy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_simplybuy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_simplybuy' ) );

