<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_will_do_it_later' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_troubleshoot_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('elex_yt_configuration_settings');
delete_site_option('elex_yt_configuration_settings');
delete_option('elex_yt_gallery_settings');
delete_site_option('elex_yt_gallery_settings');
delete_option('elex_yt_video_player_settings');
delete_site_option('elex_yt_video_player_settings');
delete_option('system_info_remote_url');
delete_site_option('system_info_remote_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('elex_yt_gallery_sync_now');

