<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookie_bar_show_for_logged_out_users_only');
delete_site_option('cookie_bar_show_for_logged_out_users_only');
delete_option('cookie_bar_show_on_top');
delete_site_option('cookie_bar_show_on_top');
delete_option('cookie_bar_expiration_type');
delete_site_option('cookie_bar_expiration_type');
delete_option('cookie_bar_days_to_expire');
delete_site_option('cookie_bar_days_to_expire');
delete_option('cookie_bar_message');
delete_site_option('cookie_bar_message');
delete_option('cookie_bar_button');
delete_site_option('cookie_bar_button');
delete_option('cookie_bar_btn_bg_colour');
delete_site_option('cookie_bar_btn_bg_colour');
delete_option('cookie_bar_btn_font_colour');
delete_site_option('cookie_bar_btn_font_colour');
delete_option('cookie_bar_bar_bg_colour');
delete_site_option('cookie_bar_bar_bg_colour');
delete_option('cookie_bar_bar_font_colour');
delete_site_option('cookie_bar_bar_font_colour');

