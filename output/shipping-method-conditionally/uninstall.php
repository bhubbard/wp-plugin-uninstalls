<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ship_hide_req');
delete_site_option('ship_hide_req');
delete_option('opening_hours_mon');
delete_site_option('opening_hours_mon');
delete_option('opening_hours_tue');
delete_site_option('opening_hours_tue');
delete_option('opening_hours_wed');
delete_site_option('opening_hours_wed');
delete_option('opening_hours_thu');
delete_site_option('opening_hours_thu');
delete_option('opening_hours_fri');
delete_site_option('opening_hours_fri');
delete_option('opening_hours_sat');
delete_site_option('opening_hours_sat');
delete_option('opening_hours_sun');
delete_site_option('opening_hours_sun');
delete_option('select_time_zone');
delete_site_option('select_time_zone');
delete_option('ship_hide_method_id');
delete_site_option('ship_hide_method_id');
delete_option('ship_hide_method_title');
delete_site_option('ship_hide_method_title');
delete_option('woo_same_installed');
delete_site_option('woo_same_installed');
delete_option('woo_same_version');
delete_site_option('woo_same_version');

