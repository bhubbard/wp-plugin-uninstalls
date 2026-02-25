<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inesgfr_api_key');
delete_site_option('inesgfr_api_key');
delete_option('inesgfr_company_id');
delete_site_option('inesgfr_company_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('inesta_gf_recruitee_cron');

