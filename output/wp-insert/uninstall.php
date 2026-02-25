<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_insert_abtesting_mode');
delete_site_option('wp_insert_abtesting_mode');
delete_option('wp_insert_adstxt_adsense_admin_notice_dismissed');
delete_site_option('wp_insert_adstxt_adsense_admin_notice_dismissed');
delete_option('wp_insert_inpostads');
delete_site_option('wp_insert_inpostads');
delete_option('wp_insert_adwidgets');
delete_site_option('wp_insert_adwidgets');
delete_option('wp_insert_inthemeads');
delete_site_option('wp_insert_inthemeads');
delete_option('wp_insert_shortcodeads');
delete_site_option('wp_insert_shortcodeads');
delete_option('wp_insert_pagelevelads');
delete_site_option('wp_insert_pagelevelads');
delete_option('wp_insert_version');
delete_site_option('wp_insert_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_insert_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_insert_google_api_authentication_data');
delete_site_option('wp_insert_google_api_authentication_data');
delete_option('wp_insert_legalpages');
delete_site_option('wp_insert_legalpages');
delete_option('wp_insert_legal_options');
delete_site_option('wp_insert_legal_options');
delete_option('wp_insert_trackingcodes');
delete_site_option('wp_insert_trackingcodes');
delete_option('wp_insert_vi_code_settings');
delete_site_option('wp_insert_vi_code_settings');

// Delete Transients
delete_transient('wp_insert_adstxt_adsense_autocheck_content');
delete_site_transient('wp_insert_adstxt_adsense_autocheck_content');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_insert_ip_%', '_site_transient_wp_insert_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp_insert_google_api_access_token');
delete_site_transient('wp_insert_google_api_access_token');
delete_transient('wp_insert_vi_api_access_token');
delete_site_transient('wp_insert_vi_api_access_token');
delete_transient('wp_insert_google_api_ad_units');
delete_site_transient('wp_insert_google_api_ad_units');
delete_transient('wp_insert_vi_api_settings');
delete_site_transient('wp_insert_vi_api_settings');
delete_transient('wp_insert_vi_api_authetication_token');
delete_site_transient('wp_insert_vi_api_authetication_token');
delete_transient('wp_insert_vi_api_jstag');
delete_site_transient('wp_insert_vi_api_jstag');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp_insert_vi_api_is_eu_%', '_site_transient_wp_insert_vi_api_is_eu_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_insert_2.3_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_insert_2.3_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_insert_2.3_admin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_insert_2.3_admin_notice_dismissed' ) );

