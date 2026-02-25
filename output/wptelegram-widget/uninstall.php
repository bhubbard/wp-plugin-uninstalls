<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('wptelegram_widget_ver');
delete_site_option('wptelegram_widget_ver');
delete_option('wptelegram_widget');
delete_site_option('wptelegram_widget');

// Clear Cron Jobs
wp_clear_scheduled_hook('wptelegram_widget_cron_pull_updates');
wp_clear_scheduled_hook('wptelegram_widget_pull_updates');

