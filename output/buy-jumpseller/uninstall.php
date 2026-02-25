<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storecode');
delete_site_option('storecode');
delete_option('storetoken');
delete_site_option('storetoken');

