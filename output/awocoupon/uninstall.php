<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awocoupon_version');
delete_site_option('awocoupon_version');
delete_option('awocoupon_db_version');
delete_site_option('awocoupon_db_version');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Clear Cron Jobs
wp_clear_scheduled_hook('awocoupon_cron_action');

