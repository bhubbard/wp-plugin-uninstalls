<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apft_plugin_activated');
delete_site_option('apft_plugin_activated');
delete_option('my_plugin_activated');
delete_site_option('my_plugin_activated');

