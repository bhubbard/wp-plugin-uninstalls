<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsgdrm_av_apikeydrm');
delete_site_option('wpsgdrm_av_apikeydrm');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpsgdrm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsgdrm_fm_firstname');
delete_site_option('wpsgdrm_fm_firstname');
delete_option('wpsgdrm_fm_lastname');
delete_site_option('wpsgdrm_fm_lastname');
delete_option('wpsgdrm_fm_email');
delete_site_option('wpsgdrm_fm_email');
delete_option('wpsgdrm_fm_company');
delete_site_option('wpsgdrm_fm_company');
delete_option('wpsgdrm_fm_domain');
delete_site_option('wpsgdrm_fm_domain');
delete_option('wpsgdrm_av_allowwindows');
delete_site_option('wpsgdrm_av_allowwindows');
delete_option('wpsgdrm_av_allowmac');
delete_site_option('wpsgdrm_av_allowmac');
delete_option('wpsgdrm_av_allowandroid');
delete_site_option('wpsgdrm_av_allowandroid');
delete_option('wpsgdrm_av_allowios');
delete_site_option('wpsgdrm_av_allowios');
delete_option('wpsgdrm_av_allowremote');
delete_site_option('wpsgdrm_av_allowremote');
delete_option('wpsgdrm_av_Version_windows');
delete_site_option('wpsgdrm_av_Version_windows');
delete_option('wpsgdrm_av_Version_mac');
delete_site_option('wpsgdrm_av_Version_mac');
delete_option('wpsgdrm_av_Version_android');
delete_site_option('wpsgdrm_av_Version_android');
delete_option('wpsgdrm_av_Version_ios');
delete_site_option('wpsgdrm_av_Version_ios');
delete_option('wpsgdrm_settings');
delete_site_option('wpsgdrm_settings');

