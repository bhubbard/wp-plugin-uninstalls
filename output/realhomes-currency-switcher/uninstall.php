<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('realhomes_currencies_last_update');
delete_site_option('realhomes_currencies_last_update');
delete_option('rcs_settings');
delete_site_option('rcs_settings');
delete_option('realhomes_currencies_rates');
delete_site_option('realhomes_currencies_rates');
delete_option('realhomes_currencies_data');
delete_site_option('realhomes_currencies_data');
delete_option('theme_currency_sign');
delete_site_option('theme_currency_sign');

// Clear Cron Jobs
wp_clear_scheduled_hook('realhomes_update_currencies');

