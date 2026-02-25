<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psview_access_ids');
delete_site_option('psview_access_ids');
delete_option('plugin_stats_view_template');
delete_site_option('plugin_stats_view_template');

