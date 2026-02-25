<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quant_internal_token');
delete_site_option('quant_internal_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('quant_cronjob');

