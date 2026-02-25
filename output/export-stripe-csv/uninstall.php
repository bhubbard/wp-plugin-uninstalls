<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('strcsvexp_settings');
delete_site_option('strcsvexp_settings');
delete_option('strcsvexp_stripe_options');
delete_site_option('strcsvexp_stripe_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('strcsvexp_daily_check');

