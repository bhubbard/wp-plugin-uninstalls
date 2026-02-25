<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('2checkout_version');
delete_site_option('2checkout_version');
delete_option('2checkout_install_time');
delete_site_option('2checkout_install_time');
delete_option('codexpert-blog-json');
delete_site_option('codexpert-blog-json');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('2checkout_daily');
wp_clear_scheduled_hook('codexpert-daily');

