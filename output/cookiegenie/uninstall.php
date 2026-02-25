<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cg_enabled');
delete_site_option('cg_enabled');
delete_option('cg_blacklist');
delete_site_option('cg_blacklist');
delete_option('cg_whitelist');
delete_site_option('cg_whitelist');
delete_option('cg_bck_color');
delete_site_option('cg_bck_color');
delete_option('cg_scn_color');
delete_site_option('cg_scn_color');
delete_option('cg_cookietitle');
delete_site_option('cg_cookietitle');
delete_option('cg_cookietext');
delete_site_option('cg_cookietext');
delete_option('cg_cookiedeclaration');
delete_site_option('cg_cookiedeclaration');
delete_option('cg_expire');
delete_site_option('cg_expire');
delete_option('cg_ad_storage');
delete_site_option('cg_ad_storage');
delete_option('cg_ad_user_data');
delete_site_option('cg_ad_user_data');
delete_option('cg_ad_personalization');
delete_site_option('cg_ad_personalization');
delete_option('cg_analytics_storage');
delete_site_option('cg_analytics_storage');
delete_option('cg_api_key');
delete_site_option('cg_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cg_update_lists');

