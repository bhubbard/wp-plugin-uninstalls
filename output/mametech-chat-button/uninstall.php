<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mametech_cb_phone_number');
delete_site_option('mametech_cb_phone_number');
delete_option('mametech_cb_enabled');
delete_site_option('mametech_cb_enabled');
delete_option('mametech_cb_message');
delete_site_option('mametech_cb_message');
delete_option('mametech_cb_position');
delete_site_option('mametech_cb_position');
delete_option('mametech_cb_button_size');
delete_site_option('mametech_cb_button_size');
delete_option('mametech_cb_theme');
delete_site_option('mametech_cb_theme');
delete_option('mametech_cb_schedule_enabled');
delete_site_option('mametech_cb_schedule_enabled');
delete_option('mametech_cb_schedule_hours');
delete_site_option('mametech_cb_schedule_hours');
delete_option('mametech_cb_enable_stats');
delete_site_option('mametech_cb_enable_stats');
delete_option('mametech_cb_tooltip_text');
delete_site_option('mametech_cb_tooltip_text');
delete_option('mametech_cb_show_tooltip');
delete_site_option('mametech_cb_show_tooltip');
delete_option('mametech_cb_multiple_menu_text');
delete_site_option('mametech_cb_multiple_menu_text');
delete_option('mametech_cb_multiple_numbers');
delete_site_option('mametech_cb_multiple_numbers');

