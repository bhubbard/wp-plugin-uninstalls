<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vus_settings');
delete_site_option('vus_settings');
delete_option('vus_states');
delete_site_option('vus_states');
delete_option('vus_plugin_options');
delete_site_option('vus_plugin_options');

