<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ega_tracking_id');
delete_site_option('ega_tracking_id');
delete_option('ega_version');
delete_site_option('ega_version');

