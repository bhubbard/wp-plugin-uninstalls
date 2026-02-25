<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neugs_apikey');
delete_site_option('neugs_apikey');
delete_option('neugs_status');
delete_site_option('neugs_status');

