<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inspector_api_key');
delete_site_option('inspector_api_key');
delete_option('inspector_enable');
delete_site_option('inspector_enable');
delete_option('inspector_track_admin');
delete_site_option('inspector_track_admin');

