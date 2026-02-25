<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('write_tracke_activated');
delete_site_option('write_tracke_activated');
delete_option('write_track_plugin_activation');
delete_site_option('write_track_plugin_activation');

