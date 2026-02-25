<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taklink_page_id');
delete_site_option('taklink_page_id');
delete_option('taklink_apitoken');
delete_site_option('taklink_apitoken');

// Delete Transients
delete_transient('taklink_user_page_cache');
delete_site_transient('taklink_user_page_cache');

