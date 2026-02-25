<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcl_api_token');
delete_site_option('bcl_api_token');
delete_option('bcl_order_prefix');
delete_site_option('bcl_order_prefix');
delete_option('bcl_portal_key');
delete_site_option('bcl_portal_key');
delete_option('bcl_payment_select');
delete_site_option('bcl_payment_select');

// Clear Cron Jobs
wp_clear_scheduled_hook('bcl_check_payment_status');

