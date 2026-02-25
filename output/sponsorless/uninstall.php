<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sponsorless_enable_coupon');
delete_site_option('sponsorless_enable_coupon');
delete_option('woocommerce_enable_coupons');
delete_site_option('woocommerce_enable_coupons');
delete_option('sponsorless_cookie_duration');
delete_site_option('sponsorless_cookie_duration');
delete_option('sponsorless_auth_completed');
delete_site_option('sponsorless_auth_completed');

// Clear Cron Jobs
wp_clear_scheduled_hook('sponsorless_get_cookie_duration_api_call');

