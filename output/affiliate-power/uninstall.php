<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affiliate-power-options');
delete_site_option('affiliate-power-options');
delete_option('affiliate-power-meta-options');
delete_site_option('affiliate-power-meta-options');
delete_option('affiliate-power-version');
delete_site_option('affiliate-power-version');
delete_option('affiliate-power-premium');
delete_site_option('affiliate-power-premium');

// Clear Cron Jobs
wp_clear_scheduled_hook('affiliate_power_daily_event');

