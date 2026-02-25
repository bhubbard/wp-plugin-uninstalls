<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpankira');
delete_site_option('simpankira');
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');

// Clear Cron Jobs
wp_clear_scheduled_hook('simpankira_woocommerce_push_transaction');

