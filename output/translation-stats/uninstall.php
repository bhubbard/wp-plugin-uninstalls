<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tstats_settings');
delete_site_option('tstats_settings');

// Delete Transients
delete_transient('translation_stats_activate');
delete_site_transient('translation_stats_activate');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

