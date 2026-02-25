<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pp_cookie_popup_message');
delete_site_option('pp_cookie_popup_message');
delete_option('pp_banner_position');
delete_site_option('pp_banner_position');
delete_option('pp_banner_size');
delete_site_option('pp_banner_size');
delete_option('pp_banner_background_color');
delete_site_option('pp_banner_background_color');
delete_option('pp_banner_font');
delete_site_option('pp_banner_font');
delete_option('pp_banner_font_size');
delete_site_option('pp_banner_font_size');

