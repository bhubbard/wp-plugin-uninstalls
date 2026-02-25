<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookie_guard_enabled');
delete_site_option('cookie_guard_enabled');
delete_option('cookie_guard_position');
delete_site_option('cookie_guard_position');
delete_option('cookie_guard_banner_style');
delete_site_option('cookie_guard_banner_style');
delete_option('cookie_guard_banner_position');
delete_site_option('cookie_guard_banner_position');
delete_option('cookie_guard_banner_max_width');
delete_site_option('cookie_guard_banner_max_width');
delete_option('cookie_guard_banner_text');
delete_site_option('cookie_guard_banner_text');
delete_option('cookie_guard_accept_text');
delete_site_option('cookie_guard_accept_text');
delete_option('cookie_guard_reject_text');
delete_site_option('cookie_guard_reject_text');
delete_option('cookie_guard_customize_text');
delete_site_option('cookie_guard_customize_text');
delete_option('cookie_guard_primary_color');
delete_site_option('cookie_guard_primary_color');
delete_option('cookie_guard_text_color');
delete_site_option('cookie_guard_text_color');
delete_option('cookie_guard_button_color');
delete_site_option('cookie_guard_button_color');
delete_option('cookie_guard_button_text_color');
delete_site_option('cookie_guard_button_text_color');
delete_option('cookie_guard_icon_bg_color');
delete_site_option('cookie_guard_icon_bg_color');
delete_option('cookie_guard_icon_color');
delete_site_option('cookie_guard_icon_color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cookie_guard_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cookie_guard_version');
delete_site_option('cookie_guard_version');

