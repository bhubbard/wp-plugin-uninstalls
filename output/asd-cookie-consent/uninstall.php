<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asd_cookie_consent');
delete_site_option('asd_cookie_consent');
delete_option('theme');
delete_site_option('theme');
delete_option('position');
delete_site_option('position');
delete_option('back_color');
delete_site_option('back_color');
delete_option('text_color');
delete_site_option('text_color');
delete_option('message');
delete_site_option('message');
delete_option('show_link');
delete_site_option('show_link');
delete_option('text_cookie_info');
delete_site_option('text_cookie_info');
delete_option('href_cookie_info');
delete_site_option('href_cookie_info');
delete_option('btn_text');
delete_site_option('btn_text');
delete_option('btn_color');
delete_site_option('btn_color');
delete_option('btn_text_color');
delete_site_option('btn_text_color');
delete_option('expiry');
delete_site_option('expiry');

