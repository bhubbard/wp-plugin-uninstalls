<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qq_tracker_code_advanced');
delete_site_option('qq_tracker_code_advanced');
delete_option('qq_tracker_code');
delete_site_option('qq_tracker_code');
delete_option('qq_footer');
delete_site_option('qq_footer');

