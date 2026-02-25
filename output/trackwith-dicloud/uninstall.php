<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackwith_api_key');
delete_site_option('trackwith_api_key');
delete_option('trackwith_tracking_code');
delete_site_option('trackwith_tracking_code');

