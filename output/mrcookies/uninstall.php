<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrcookies_cookie_name');
delete_site_option('mrcookies_cookie_name');
delete_option('mrcookies_cookie_lifetime');
delete_site_option('mrcookies_cookie_lifetime');
delete_option('mrcookies_legal_notice');
delete_site_option('mrcookies_legal_notice');
delete_option('mrcookies_use_domain');
delete_site_option('mrcookies_use_domain');
delete_option('mrcookies_style_type');
delete_site_option('mrcookies_style_type');
delete_option('mrcookies_style_text_color');
delete_site_option('mrcookies_style_text_color');
delete_option('mrcookies_style_link_color');
delete_site_option('mrcookies_style_link_color');
delete_option('mrcookies_style_background_color');
delete_site_option('mrcookies_style_background_color');
delete_option('mrcookies_style_border_color');
delete_site_option('mrcookies_style_border_color');
delete_option('mrcookies_style_custom_css');
delete_site_option('mrcookies_style_custom_css');

