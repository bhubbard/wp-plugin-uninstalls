<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rb_daily_mileage_allow');
delete_site_option('rb_daily_mileage_allow');
delete_option('rb_weekly_mileage_allow');
delete_site_option('rb_weekly_mileage_allow');
delete_option('rb_hourly_mileage_allow');
delete_site_option('rb_hourly_mileage_allow');
delete_option('rentalbuddy_version');
delete_site_option('rentalbuddy_version');

