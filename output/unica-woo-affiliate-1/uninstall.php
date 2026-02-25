<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uwaff_current_page');
delete_site_option('uwaff_current_page');
delete_option('uwaff_username');
delete_site_option('uwaff_username');
delete_option('uwaff_password');
delete_site_option('uwaff_password');
delete_option('uwaff_button_text');
delete_site_option('uwaff_button_text');
delete_option('uwaff_coupon_code');
delete_site_option('uwaff_coupon_code');
delete_option('uwaff_aff_id');
delete_site_option('uwaff_aff_id');
delete_option('uwaff_token');
delete_site_option('uwaff_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('uwaff_daily_product_import');

