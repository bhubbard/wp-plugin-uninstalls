<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srpp_enable');
delete_site_option('srpp_enable');
delete_option('srpp_type');
delete_site_option('srpp_type');
delete_option('srpp_percentage');
delete_site_option('srpp_percentage');
delete_option('srpp_fixed_amount');
delete_site_option('srpp_fixed_amount');
delete_option('srpp_min_floor');
delete_site_option('srpp_min_floor');
delete_option('srpp_shipping_only');
delete_site_option('srpp_shipping_only');
delete_option('srpp_threshold');
delete_site_option('srpp_threshold');
delete_option('srpp_reminder_days');
delete_site_option('srpp_reminder_days');
delete_option('srpp_enable_reminders');
delete_site_option('srpp_enable_reminders');

