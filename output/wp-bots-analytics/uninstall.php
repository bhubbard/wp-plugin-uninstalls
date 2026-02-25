<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ua_tracking_code');
delete_site_option('ua_tracking_code');
delete_option('utma_cookie');
delete_site_option('utma_cookie');
delete_option('gimmelink');
delete_site_option('gimmelink');

