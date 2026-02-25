<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hdsb_stickybanner_version');
delete_site_option('hdsb_stickybanner_version');
delete_option('hdsb_stickybanner_enabled');
delete_site_option('hdsb_stickybanner_enabled');
delete_option('hdsb_stickybanner_text');
delete_site_option('hdsb_stickybanner_text');
delete_option('hdsb_stickybanner_colour');
delete_site_option('hdsb_stickybanner_colour');
delete_option('hdsb_stickybanner_text_colour');
delete_site_option('hdsb_stickybanner_text_colour');
delete_option('hdsb_stickybanner_position');
delete_site_option('hdsb_stickybanner_position');
delete_option('hdsb_stickybanner_btn_text');
delete_site_option('hdsb_stickybanner_btn_text');
delete_option('hdsb_stickybanner_btn_link');
delete_site_option('hdsb_stickybanner_btn_link');
delete_option('hdsb_stickybanner_cookie_expiry');
delete_site_option('hdsb_stickybanner_cookie_expiry');
delete_option('hdsb_stickybanner_hide_on_pages');
delete_site_option('hdsb_stickybanner_hide_on_pages');
delete_option('hdsb_stickybanner_hide_close_btn');
delete_site_option('hdsb_stickybanner_hide_close_btn');

