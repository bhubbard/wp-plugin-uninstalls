<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_remove_google_apis' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pss_lfsmanager_current_version');
delete_site_option('pss_lfsmanager_current_version');
delete_option('pss_lfsmanager_setting_remove_google_apis');
delete_site_option('pss_lfsmanager_setting_remove_google_apis');
delete_option('pss_lfsmanager_setting_exclude_list');
delete_site_option('pss_lfsmanager_setting_exclude_list');
delete_option('pss_lfsmanager_setting_enable_cache_styles');
delete_site_option('pss_lfsmanager_setting_enable_cache_styles');
delete_option('pss_lfsmanager_setting_enable_unite_styles');
delete_site_option('pss_lfsmanager_setting_enable_unite_styles');
delete_option('ao_lfsmanager_setting_remove_google_apis');
delete_site_option('ao_lfsmanager_setting_remove_google_apis');
delete_option('ao_lfsmanager_current_version');
delete_site_option('ao_lfsmanager_current_version');

