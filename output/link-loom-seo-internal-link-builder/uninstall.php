<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkloom_settings');
delete_site_option('linkloom_settings');
delete_option('linkloom_tracked_transients');
delete_site_option('linkloom_tracked_transients');

// Delete Transients
delete_transient('linkloom_progress');
delete_site_transient('linkloom_progress');

