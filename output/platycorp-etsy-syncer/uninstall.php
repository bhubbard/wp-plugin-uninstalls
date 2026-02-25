<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('platy_syncer_etsy_version');
delete_site_option('platy_syncer_etsy_version');
delete_option('platy_etsy_default_etsy_shop');
delete_site_option('platy_etsy_default_etsy_shop');

// Delete Transients
delete_transient('platy_etsy_error_transient');
delete_site_transient('platy_etsy_error_transient');
delete_transient('platy_etsy_success_transient');
delete_site_transient('platy_etsy_success_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('platy_etsy_stock_cron_hook');
wp_clear_scheduled_hook('platy_etsy_clean_logs');
wp_clear_scheduled_hook('platy_etsy_orders_cron_hook');

