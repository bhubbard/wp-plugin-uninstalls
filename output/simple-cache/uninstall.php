<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_simple_cache');
delete_site_option('sc_simple_cache');
delete_option('sc_cant_write');
delete_site_option('sc_cant_write');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('sc_purge_cache');

