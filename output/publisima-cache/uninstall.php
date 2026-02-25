<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('puca_enable_cache');
delete_site_option('puca_enable_cache');
delete_option('puca_cache_lifetime');
delete_site_option('puca_cache_lifetime');
delete_option('puca_enable_compression');
delete_site_option('puca_enable_compression');
delete_option('puca_minify_html');
delete_site_option('puca_minify_html');
delete_option('puca_lazy_load');
delete_site_option('puca_lazy_load');
delete_option('puca_plugin_version');
delete_site_option('puca_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('puca_cleanup_event');

