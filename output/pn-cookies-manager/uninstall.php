<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pn_cookies_manager_options_changed');
delete_site_option('pn_cookies_manager_options_changed');
delete_option('pn_cookies_manager_color_main');
delete_site_option('pn_cookies_manager_color_main');
delete_option('pn_cookies_manager_bg_color_main');
delete_site_option('pn_cookies_manager_bg_color_main');
delete_option('pn_cookies_manager_border_color_main');
delete_site_option('pn_cookies_manager_border_color_main');
delete_option('pn_cookies_manager_color_main_alt');
delete_site_option('pn_cookies_manager_color_main_alt');
delete_option('pn_cookies_manager_bg_color_main_alt');
delete_site_option('pn_cookies_manager_bg_color_main_alt');
delete_option('pn_cookies_manager_border_color_main_alt');
delete_site_option('pn_cookies_manager_border_color_main_alt');
delete_option('pn_cookies_manager_color_main_blue');
delete_site_option('pn_cookies_manager_color_main_blue');
delete_option('pn_cookies_manager_color_main_grey');
delete_site_option('pn_cookies_manager_color_main_grey');
delete_option('pn_cookies_manager_options_remove');
delete_site_option('pn_cookies_manager_options_remove');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pn_cookies_manager_pages_cookie');
delete_site_option('pn_cookies_manager_pages_cookie');
delete_option('pn_cookies_manager_url_main');
delete_site_option('pn_cookies_manager_url_main');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_duration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_description' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pn_cookies_manager_redirecting');
delete_site_option('pn_cookies_manager_redirecting');
delete_option('pn_cookies_manager_banner_bg_color');
delete_site_option('pn_cookies_manager_banner_bg_color');
delete_option('pn_cookies_manager_banner_text_color');
delete_site_option('pn_cookies_manager_banner_text_color');
delete_option('pn_cookies_manager_banner_btn_accept_bg');
delete_site_option('pn_cookies_manager_banner_btn_accept_bg');
delete_option('pn_cookies_manager_banner_btn_accept_color');
delete_site_option('pn_cookies_manager_banner_btn_accept_color');
delete_option('pn_cookies_manager_banner_btn_reject_bg');
delete_site_option('pn_cookies_manager_banner_btn_reject_bg');
delete_option('pn_cookies_manager_banner_btn_reject_color');
delete_site_option('pn_cookies_manager_banner_btn_reject_color');
delete_option('pn_cookies_manager_banner_btn_settings_color');
delete_site_option('pn_cookies_manager_banner_btn_settings_color');
delete_option('pn_cookies_manager_banner_border_radius');
delete_site_option('pn_cookies_manager_banner_border_radius');
delete_option('pn_cookies_manager_banner_reopen_color');
delete_site_option('pn_cookies_manager_banner_reopen_color');
delete_option('pn_cookies_manager_google_consent_mode');
delete_site_option('pn_cookies_manager_google_consent_mode');
delete_option('pn_cookies_manager_cookie_expiry');
delete_site_option('pn_cookies_manager_cookie_expiry');
delete_option('pn_cookies_manager_banner_overlay');
delete_site_option('pn_cookies_manager_banner_overlay');
delete_option('pn_cookies_manager_banner_settings_text');
delete_site_option('pn_cookies_manager_banner_settings_text');
delete_option('pn_cookies_manager_banner_accept_text');
delete_site_option('pn_cookies_manager_banner_accept_text');
delete_option('pn_cookies_manager_banner_reject_text');
delete_site_option('pn_cookies_manager_banner_reject_text');
delete_option('pn_cookies_manager_banner_position');
delete_site_option('pn_cookies_manager_banner_position');
delete_option('pn_cookies_manager_banner_layout');
delete_site_option('pn_cookies_manager_banner_layout');
delete_option('pn_cookies_manager_banner_alignment');
delete_site_option('pn_cookies_manager_banner_alignment');
delete_option('pn_cookies_manager_banner_title');
delete_site_option('pn_cookies_manager_banner_title');
delete_option('pn_cookies_manager_banner_message');
delete_site_option('pn_cookies_manager_banner_message');
delete_option('pn_cookies_manager_banner_privacy_url');
delete_site_option('pn_cookies_manager_banner_privacy_url');
delete_option('pn_cookies_manager_banner_btn_settings_bg');
delete_site_option('pn_cookies_manager_banner_btn_settings_bg');

// Delete Transients
delete_transient('pn_cookies_manager_just_activated');
delete_site_transient('pn_cookies_manager_just_activated');

