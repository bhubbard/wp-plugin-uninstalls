<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hub_ract_options');
delete_site_option('hub_ract_options');
delete_option('hub_ract_api');
delete_site_option('hub_ract_api');
delete_option('hub_ract_data');
delete_site_option('hub_ract_data');
delete_option('hub_ract_log');
delete_site_option('hub_ract_log');
delete_option('hub_ract_blink');
delete_site_option('hub_ract_blink');

// Clear Cron Jobs
wp_clear_scheduled_hook('ract_cron_hook');

