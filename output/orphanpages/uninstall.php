<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orphanpages_last_scan_time');
delete_site_option('orphanpages_last_scan_time');

