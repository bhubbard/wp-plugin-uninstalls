<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vbean_themelogin_override');
delete_site_option('vbean_themelogin_override');
delete_option('vbean_themelogin_hideheading');
delete_site_option('vbean_themelogin_hideheading');
delete_option('vbean_themelogin_logo');
delete_site_option('vbean_themelogin_logo');
delete_option('vbean_themelogin_sitename');
delete_site_option('vbean_themelogin_sitename');
delete_option('vbean_themelogin_css');
delete_site_option('vbean_themelogin_css');
delete_option('vbean_themelogin_cssfiles');
delete_site_option('vbean_themelogin_cssfiles');
delete_option('vbean_themelogin_cssfilesrelative');
delete_site_option('vbean_themelogin_cssfilesrelative');
delete_option('vbean_themelogin_background');
delete_site_option('vbean_themelogin_background');
delete_option('vbean_themelogin_bglayout');
delete_site_option('vbean_themelogin_bglayout');
delete_option('vbean_themelogin_background_fixed');
delete_site_option('vbean_themelogin_background_fixed');
delete_option('vbean_themelogin_bg_width');
delete_site_option('vbean_themelogin_bg_width');
delete_option('vbean_themelogin_bg_width_unit');
delete_site_option('vbean_themelogin_bg_width_unit');
delete_option('vbean_themelogin_bg_height');
delete_site_option('vbean_themelogin_bg_height');
delete_option('vbean_themelogin_bg_height_unit');
delete_site_option('vbean_themelogin_bg_height_unit');
delete_option('vbean_themelogin_maskit');
delete_site_option('vbean_themelogin_maskit');
delete_option('vbean_themelogin_mask');
delete_site_option('vbean_themelogin_mask');
delete_option('vbean_themelogin_bg_colour');
delete_site_option('vbean_themelogin_bg_colour');
delete_option('vbean_themelogin_text_colour');
delete_site_option('vbean_themelogin_text_colour');

