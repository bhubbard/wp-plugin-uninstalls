<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iqa_trackingcode');
delete_site_option('iqa_trackingcode');
delete_option('iqa_track_loggedin');
delete_site_option('iqa_track_loggedin');
delete_option('iqa_track_admin');
delete_site_option('iqa_track_admin');

