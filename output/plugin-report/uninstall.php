<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('plugin_report_cache_cleared');
delete_site_transient('plugin_report_cache_cleared');

