<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('datika_exchange_rates');
delete_site_option('datika_exchange_rates');
delete_option('datika_fixer_api_key');
delete_site_option('datika_fixer_api_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('datika_fetch_exchange_rates');

