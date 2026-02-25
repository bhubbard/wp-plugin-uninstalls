<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swift_control_widget_settings');
delete_site_option('swift_control_widget_settings');
delete_option('swift_control_active_widgets');
delete_site_option('swift_control_active_widgets');
delete_option('swift_control_color_settings');
delete_site_option('swift_control_color_settings');
delete_option('swift_control_display_settings');
delete_site_option('swift_control_display_settings');
delete_option('swift_control_misc_settings');
delete_site_option('swift_control_misc_settings');
delete_option('swift_control_admin_bar_settings');
delete_site_option('swift_control_admin_bar_settings');
delete_option('swift_control_compat_migrate_options');
delete_site_option('swift_control_compat_migrate_options');
delete_option('admin_bar_settings_backwards_compat');
delete_site_option('admin_bar_settings_backwards_compat');
delete_option('swift_control_discontinue_message');
delete_site_option('swift_control_discontinue_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swift_control_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swift_control_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swift_control_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swift_control_position' ) );

