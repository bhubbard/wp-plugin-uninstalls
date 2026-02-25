<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reachlocal_tracking_code_id');
delete_site_option('reachlocal_tracking_code_id');

