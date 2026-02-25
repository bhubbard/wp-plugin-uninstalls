<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_first_use' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_admin_notify' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('video_popup_settings');
delete_site_option('video_popup_settings');
delete_option('video_popup_settings_version');
delete_site_option('video_popup_settings_version');
delete_option('video_popup_settings_onpage_load');
delete_site_option('video_popup_settings_onpage_load');
delete_option('video_popup_settings_onpage_load_version');
delete_site_option('video_popup_settings_onpage_load_version');
delete_option('video_popup_settings_first_use');
delete_site_option('video_popup_settings_first_use');
delete_option('video_popup_settings_admin_notify');
delete_site_option('video_popup_settings_admin_notify');

