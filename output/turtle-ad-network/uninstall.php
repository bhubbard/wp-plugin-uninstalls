<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ad_approval');
delete_site_option('ad_approval');
delete_option('min_amount');
delete_site_option('min_amount');
delete_option('ad_time');
delete_site_option('ad_time');
delete_option('ad_cost');
delete_site_option('ad_cost');
delete_option('api_server');
delete_site_option('api_server');
delete_option('blacklist');
delete_site_option('blacklist');
delete_option('payment_type');
delete_site_option('payment_type');
delete_option('tadn_jal_db_version');
delete_site_option('tadn_jal_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('tan_cronjob');

