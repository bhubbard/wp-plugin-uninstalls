<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('detech_cache_expiry_time');
delete_site_option('detech_cache_expiry_time');

