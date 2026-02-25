<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_lite_accounts');
delete_site_option('fs_lite_accounts');
delete_option('tiktok_api_version');
delete_site_option('tiktok_api_version');

// Delete Transients
delete_transient('ttp_tiktok_videos');
delete_site_transient('ttp_tiktok_videos');
delete_transient('ttp_tiktok_user_info');
delete_site_transient('ttp_tiktok_user_info');
delete_transient('ttp_tiktok_access_token');
delete_site_transient('ttp_tiktok_access_token');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_ttp_tiktok_videos', '_site_transient_%_ttp_tiktok_videos' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ttp_tiktok_authorized_data');
delete_site_transient('ttp_tiktok_authorized_data');

