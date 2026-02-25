<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gpw_plugin_options');
delete_site_option('gpw_plugin_options');
delete_option('gpw_plugin_google_plus_id');
delete_site_option('gpw_plugin_google_plus_id');

