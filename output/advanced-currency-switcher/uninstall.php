<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cswp_form_data');
delete_site_option('cswp_form_data');
delete_option('cswp_manual_rate');
delete_site_option('cswp_manual_rate');
delete_option('cswp_currency_button_type');
delete_site_option('cswp_currency_button_type');
delete_option('cswp_apirate_values');
delete_site_option('cswp_apirate_values');
delete_option('cswp_display');
delete_site_option('cswp_display');
delete_option('apivalidate');
delete_site_option('apivalidate');
delete_option('apinotfree');
delete_site_option('apinotfree');

// Clear Cron Jobs
wp_clear_scheduled_hook('cs_schedule_hook');

